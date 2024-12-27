; Entry point for the program
global _start  

; Code section
section .text  

_start:
    ; Print "Hello, World!" to the console
    mov rax, 1
    mov rdi, 1
    mov rsi, hello
	mov rdx, 13
    syscall

_exit:
    ; Exit the program
    mov rax, 60
    mov rdi, 0
    syscall

; Data section
section .data
    hello db "Hello, World!", 10