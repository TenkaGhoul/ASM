.section .data
	message: .string "Hello, World!\n"

.global main

.section .text

main:
	
	xor %rax, %rax
	movq $4, %rax
	movq $1, %rbx
	movq $message, %rcx
	movq $14, %rdx
	int $0x80

	syscall
	
	mov $1, %rax
	xor %rbx, %rbx
	int $0x80
	syscall
