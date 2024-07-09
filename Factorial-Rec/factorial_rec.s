.global factorial_rec

.section .text

factorial_rec:

	movl $1, %ecx
	movl $1, %ebx

factorial_rec_loop:

	cmp $1, %edi
	je .Test

	imul %edi, %ecx
	dec %edi
	call factorial_rec_loop

.Test:

	xor %eax, %eax
	cmp %ebx, %ecx
	jne .End_ecx

	mov %ebx, %eax
	ret

.End_ecx:

	xor %eax, %eax
	mov %ecx, %eax
	ret
