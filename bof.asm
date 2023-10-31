Dump of assembler code for function main:
   0x0000000000001189 <+0>:	endbr64
   0x000000000000118d <+4>:	push   rbp
   0x000000000000118e <+5>:	mov    rbp,rsp
   0x0000000000001191 <+8>:	add    rsp,0xffffffffffffff80
   0x0000000000001195 <+12>:	mov    rax,QWORD PTR fs:0x28
   0x000000000000119e <+21>:	mov    QWORD PTR [rbp-0x8],rax
   0x00000000000011a2 <+25>:	xor    eax,eax
   0x00000000000011a4 <+27>:	mov    DWORD PTR [rbp-0x74],0xdeadbeef
   0x00000000000011ab <+34>:	mov    QWORD PTR [rbp-0x70],0x0
   0x00000000000011b3 <+42>:	mov    QWORD PTR [rbp-0x68],0x0
   0x00000000000011bb <+50>:	mov    QWORD PTR [rbp-0x60],0x0
   0x00000000000011c3 <+58>:	mov    QWORD PTR [rbp-0x58],0x0
   0x00000000000011cb <+66>:	mov    QWORD PTR [rbp-0x50],0x0
   0x00000000000011d3 <+74>:	mov    QWORD PTR [rbp-0x48],0x0
   0x00000000000011db <+82>:	mov    QWORD PTR [rbp-0x40],0x0
   0x00000000000011e3 <+90>:	mov    QWORD PTR [rbp-0x38],0x0
   0x00000000000011eb <+98>:	mov    QWORD PTR [rbp-0x30],0x0
   0x00000000000011f3 <+106>:	mov    QWORD PTR [rbp-0x28],0x0
   0x00000000000011fb <+114>:	mov    QWORD PTR [rbp-0x20],0x0
   0x0000000000001203 <+122>:	mov    QWORD PTR [rbp-0x18],0x0
   0x000000000000120b <+130>:	mov    DWORD PTR [rbp-0x10],0x0
   0x0000000000001212 <+137>:	lea    rax,[rbp-0x70]
   0x0000000000001216 <+141>:	mov    edx,0x100
   0x000000000000121b <+146>:	mov    rsi,rax
   0x000000000000121e <+149>:	mov    edi,0x0
   0x0000000000001223 <+154>:	mov    eax,0x0
   0x0000000000001228 <+159>:	call   0x1090 <read@plt>
   0x000000000000122d <+164>:	cmp    DWORD PTR [rbp-0x74],0x1337
   0x0000000000001234 <+171>:	jne    0x1247 <main+190>
   0x0000000000001236 <+173>:	lea    rax,[rip+0xdcb]        # 0x2008
   0x000000000000123d <+180>:	mov    rdi,rax
   0x0000000000001240 <+183>:	call   0x1070 <puts@plt>
   0x0000000000001245 <+188>:	jmp    0x1256 <main+205>
   0x0000000000001247 <+190>:	lea    rax,[rip+0xdd2]        # 0x2020
   0x000000000000124e <+197>:	mov    rdi,rax
   0x0000000000001251 <+200>:	call   0x1070 <puts@plt>
   0x0000000000001256 <+205>:	mov    eax,0x0
   0x000000000000125b <+210>:	mov    rdx,QWORD PTR [rbp-0x8]
   0x000000000000125f <+214>:	sub    rdx,QWORD PTR fs:0x28
   0x0000000000001268 <+223>:	je     0x126f <main+230>
   0x000000000000126a <+225>:	call   0x1080 <__stack_chk_fail@plt>
   0x000000000000126f <+230>:	leave
   0x0000000000001270 <+231>:	ret