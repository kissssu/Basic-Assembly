global _start:

section .text

_start:
	; To print : Enter your name :
	mov rax,1
	mov rdi,1
	mov rsi,name
	mov rdx,name_length
	syscall

User_input:
	; To take user input:
	mov rax,0
	mov rdi,0
	mov rsi,input
	mov rdx,100
	syscall
	mov rbx,rax

print_hello:
	; To write the hello
	mov rax,1
	mov rdi,1
	mov rsi,hello
	mov rdx,hello_length
	syscall

print_user_input:
	; To write the user's input
	mov rax,1
	mov rdi,1
	mov rsi,input
	mov rdx,rbx
	syscall

exit:
	; The exit code.
	mov rax,60
	mov rdi,0
	syscall

section .data
	name: db "Enter your name : "
	name_length: equ $-name
	hello:	db "Hello "
	hello_length: equ $-hello

section .bss
	input: resb 100
