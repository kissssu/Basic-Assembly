global _start

section .text

_start:
	jmp main
	
main:
	; Take user input
	mov rax, 0
	mov rdi, 0
	mov rsi, user_passwd
	mov rdx, 64
	syscall

	; Compare input with passkey
	mov rdi, user_passwd
	mov rsi, passkey
	mov rcx, passkey_len
	repe cmpsb
	je access_granter
	jmp access_denied

access_granter:
	; Print "Access Granted!"
	mov rax, 1
	mov rdi, 1
	mov rsi, access_granted_msg
	mov rdx, access_granted_msg_len
	syscall
	jmp exit

access_denied:
	; Print "Access Denied!"
	mov rax, 1
	mov rdi, 1
	mov rsi, access_denied_msg
	mov rdx, access_denied_msg_len
	syscall

exit:
	; Exit code
	mov rax, 60
	mov rdi, 0
	syscall

section .data
	access_granted_msg: db "Access Granted!", 0xA 
	access_granted_msg_len: equ $-access_granted_msg
	access_denied_msg: db "Access Denied!", 0xA
	access_denied_msg_len: equ $-access_denied_msg
	passkey: db "12345678", 0                     ; Passkey to compare
	passkey_len: equ $-passkey

section .bss
	user_passwd: resb 64
