global _start

section .text

_start:
	; Add
	mov rax,2
	add rax,3

	; Subtract
	mov rax,5
	sub rax,3

	; Mul
	mov rax,10
	imul rbx,rax,5		; This is storing the answer/output in rbx register.

	; Division
	mov rdx,0		; rdx should be given 0 value cuz, rdx:rax / rbx. --> 1:1 / 2 --> 11/2
	mov rax,100
	mov rbx,50
	idiv rbx

exit:
	; The Exit code.
	mov rax,60
	mov rdi,0
	syscall
