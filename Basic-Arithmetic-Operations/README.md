# Assembly Program for Basic Arithmetic Operations

This is a simple assembly program that performs basic arithmetic operations: addition, subtraction, multiplication, and division. The program is written for x86-64 architecture using NASM syntax.

## Operations

The program performs the following operations:

1. **Addition**: Adds 2 and 3.
2. **Subtraction**: Subtracts 3 from 5.
3. **Multiplication**: Multiplies 10 by 5.
4. **Division**: Divides 100 by 50.

## How to Run

1. **Install NASM**: If you don't have NASM installed, you can install it using the following commands:
    - On Ubuntu:
      ```bash
      sudo apt-get install nasm
      ```
    - On macOS (using Homebrew):
      ```bash
      brew install nasm
      ```

2. **Assemble the code**:
    - Save the code in a file named `math_operations.asm`.
    - Open a terminal and assemble the file with NASM:
      ```bash
      nasm -f elf64 -o math_operations.o math_operations.asm
      ```

3. **Link the object file**:
    - Link the object file to create an executable:
      ```bash
      ld -s -o math_operations math_operations.o
      ```

4. **Run the program**:
    - Execute the program:
      ```bash
      ./math_operations
      ```

## Exit

The program exits using the `exit` system call with a status code of `0`.

## License

This project is licensed under the MIT License.
