.global sum_in_array

.section .text

sum_in_array:
	
	xor %rax, %rax
	push %r12

	movq %rdi, %r12
	movl (%r12), %rax
	
	add $4, %r12
	dec %rsi

	jmp .Loop

.Loop:
	test %rsi, %rsi
	jz .End

	movl (%r12), %rbx
	add %rbx, %rax
	
	add $4, %r12
	dec %rsi
	
	jmp .Loop

.End:
	pop %r12
	ret
