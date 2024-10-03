global _start

section .text
_start:
	add rax, 0x100 	;05 00 01 00 00 (05 = add) (eax is implied) (00000100 = 256)
	add edi, 0x100	;81 c7 00 01 00 00 (81 = add, c = Register Data Type, 7 = 111(edi), 00010000 = 256(32 bit))
	add rdi, rax	;48 01 c7 (48 = REX.W(4 = REX, 8 = 64 bit Registers), 01 = add, c = Register Data Type, 000 = rax, 111 = rdi)
	add r9b, 0x8	;41 80 c1 08 (41 = REX.B(4 = REX, 1 = Register Opcode Present/non-traditional registers(B)), 02 = add, c = Register Data Type, 0001 = r9, 08 = 0x8)
	add r8, 0x100	;49 81 c0 00 01 00 00
	add r8d, 0x100 	;41 81 c0 00 01 00 00 (41 = REX.B(4 = REX, 1 = Register Opcode Present/non-traditional registers(B)), 81 = add r/m32 to r32, c = Register Data Type, 0 = 0000 (r8), 00000100 = 256 (32 bit)) 
	add r9w, 0x8	;66 43 83 c1 08 (66 = 16 bit registers, 43 = REX.XB(4 = REX, 1 = Register Opcode Present/non-traditional registers, 2 = ), 83 = add, c = Register Data Type, 0001 = r9, 08 = 0x8)
	add rax, 0x100	;48 05 00 01 00 00 (48 = REX.W(4 = REX, 8 = 64 bit registers(W)), 05 = add, 00 01 00 00 = 0x100(256(32 bit))
	add r9, rax	;49 01 c1 (49 = REX.WB(4 = REX, 8 = 64 bit registers(W), 1 = Register Opcode Present/non-traditional registers(B)), 01 = add, c = Register data Type, rax is implied, 0001 = r9)
	add eax, 0x100	;05 00 01 00 00 (05 = add, eax is implied, 00 01 00 00 = 0x100(256(32 bit)))
exit:
	mov ax, 60	
	mov dil, 0
	syscall
