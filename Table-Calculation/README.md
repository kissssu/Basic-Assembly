# Assembly Program: Table Calculation

## Description
This program asks the user to input a number and then prints the result of multiplying that number by values from 1 to 10. It utilizes basic loop and arithmetic operations in x86-64 Assembly language.

## Features
- Prompts the user to input a number.
- Multiplies the input number by values from 1 to 10.
- Prints the results of each multiplication.
- Implements basic I/O functions such as `printstr`, `printint`, and `readint`.

## Instructions to Run

### Requirements:
- A Linux-based system with support for 64-bit Assembly.
- An assembler like NASM.
- A linker like LD.

### Steps to Compile and Run:
1. Save the code in a file, e.g., `main.asm`.
2. Assemble the code using NASM:
   ```bash
   nasm -f elf64 -o main.o main.asm
   ```
3. Link the object file using LD:
   ```bash
   ld -o main main.o
   ```
4. Run the program:
   ```bash
   ./main
   ```

## Sample Output:

   ```bash
   Enter Number: 5
   5
   10
   15
   20
   25
   30
   35
   40
   45
   50
   ```

## License
This project is open-source and available under the MIT License.



### Next Steps:
- You can create a GitHub repository and push this code along with the `README.md` file.
- The assembly code relies on utility functions like `printstr`, `printint`, etc. Ensure those functions are available in the `util.asm` file referenced in the code.

Let me know if you need more help!



