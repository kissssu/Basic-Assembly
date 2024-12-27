%include "util.asm"

global _start

section .text

_start:
	; Print the prompt message "Enter Number: "
	mov rdi,msg
	call printstr

	; Read an integer from the user input
	call readint
	mov [user_value],rax
	mov rbx,1

Loop_start:
    mov rcx, [user_value]  ; Load the user input value into rcx
    imul rcx, rbx          ; Multiply rcx (user_value) with rbx (loop counter)
    mov rdi, rcx           ; Load the result into rdi (for printint)
    call printint          ; Call printint to print the result
    call endl              ; Print a newline character

    add rbx, 1             ; Increment rbx (counter)
    cmp rbx, 11            ; Compare rbx with 11
    jne Loop_start         ; If rbx != 11, jump back to the start of the loop
	call exit0

section .data

	msg: db "Enter Number: ",0

section .bss

	user_value: resb 8
