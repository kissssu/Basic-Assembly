# Key Check Program 🔒

A simple x86-64 assembly program that validates a user's input against a predefined passkey (`12345678`). Depending on the input, it grants or denies access, making use of system calls and conditional branching.

## Features
- **Password Validation**: Compares user input with the predefined passkey.
- **Access Feedback**: Displays `Access Granted!` or `Access Denied!` messages based on the comparison result.
- **Efficient String Comparison**: Utilizes `repe cmpsb` for byte-by-byte string comparison.
- **Clean Exit**: Ensures proper exit codes for a seamless user experience.

## Predefined Passkey
The current passkey is hardcoded as:
12345678

## How to Compile and Run 

### Prerequisites
- **Assembler**: [NASM](https://www.nasm.us/)
- **Linker**: `ld` (GNU Linker)

### Steps
1. Clone the repository or download the file:
   ```bash
   git clone <repository-url>
   cd <repository-folder>
   ```

2. Assemble the code:

   ```bash
   nasm -f elf64 -o key-check.o key-check.asm
   ```

3. Link the object file:

   ```bash
   ld -o key-check key-check.o
   ````

4. Execute the program:

   ```bash
   ./key-check
   ```

Enter the password when prompted. You'll see one of the following outputs:

```
Access Granted!
Access Denied!
```

## File Structure 📂

```plaintext
.
├── key-check.asm   # The main assembly source code
└── README.md       # Documentation for the program
```
Example Output
```bash
Enter your password: 12345678
Access Granted!
```
```bash
Enter your password: wrongpass
Access Denied!
```

## Contributing 🤝
Feel free to contribute to this project by:\
```
Improving the logic
Adding more features
Refining the user interface
Fork this repository and submit a pull request with your changes!
```

## License 📄
This project is licensed under the MIT License. Feel free to use it, modify it, and distribute it.

Enjoy the program and happy coding! 🎉




