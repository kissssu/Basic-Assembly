# Hello World in Assembly (Linux, x86-64)

This project demonstrates a simple "Hello, World!" program written in assembly language for x86-64 systems. It uses system calls to print the message to the console and exit gracefully.

## Prerequisites

- **Assembler**: [NASM (The Netwide Assembler)](https://nasm.us/)
- **Linker**: ld (GNU Linker)
- **Linux Environment**: Compatible with x86-64 architecture

## Code Explanation

The program:
1. Writes the string `Hello, World!` to the console using the `write` system call.
2. Exits cleanly using the `exit` system call.

The string is stored in the `.data` section, while the instructions reside in the `.text` section.

## Compilation and Execution

Follow these steps to compile and run the program:

1. **Save the Code**:
   Save the assembly code into a file named `hello.asm`.

2. **Assemble the Code**:
   Use NASM to assemble the program into an object file:
   ```bash
   nasm -f elf64 hello.asm -o hello.o
   ```

3. **Link the Object File**:
   Use the GNU Linker to create an executable from the object file:
   ```bash
   ld hello.o -o hello
   ```

4. **Run the Executable**:
   Execute the program in the terminal:
   ```bash
   ./hello
   ```

   You should see the following output:
   ```
   Hello, World!
   ```

## System Calls Used

### `write` System Call
- **System Call Number**: `1`
- **Registers**:
  - `rax`: 1 (write)
  - `rdi`: 1 (stdout)
  - `rsi`: Address of the string to write
  - `rdx`: Length of the string

### `exit` System Call
- **System Call Number**: `60`
- **Registers**:
  - `rax`: 60 (exit)
  - `rdi`: Exit status

## Sample Code

```asm
; Hello, World! program in assembly

global _start  ; Entry point for the program

section .text  ; Code section

_start:
    ; Print "Hello, World!" to the console
    mov rax, 1          ; System call number for write (sys_write)
    mov rdi, 1          ; File descriptor 1 (stdout)
    mov rsi, hello      ; Address of the message to print
    mov rdx, 13         ; Length of the message (13 bytes)
    syscall             ; Invoke the system call

_exit:
    ; Exit the program
    mov rax, 60         ; System call number for exit (sys_exit)
    mov rdi, 0          ; Exit code 0 (success)
    syscall             ; Invoke the system call

section .data  ; Data section
    hello db "Hello, World!", 10  ; Message to print (10 for newline)
```

## License

This project is released under the MIT License.
