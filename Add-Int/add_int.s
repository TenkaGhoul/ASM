.global add_int

.section .text

add_int:
	
	xor %eax, %eax

	addl %edi, %esi
	movl %esi, %eax

	ret
