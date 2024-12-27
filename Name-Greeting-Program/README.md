# 🚀 Interactive Name Greeting Program

This assembly program demonstrates basic user interaction by asking for a name, taking input, and displaying a personalized greeting.

---

## 📋 Features
- 🖊 **Prompts**: Displays "Enter your name:" to the user.
- 📥 **Input Handling**: Captures the user's input.
- ✨ **Dynamic Output**: Prints "Hello [Name]" with the entered name.

---

## 🛠 How to Run

### Prerequisites
- **Linux OS**
- **`nasm`** (Netwide Assembler) installed
- **`ld`** linker

### Steps
1. **Assemble**:
   ```bash
   nasm -f elf64 -o name.o name.asm
   ld -o name name.o
   ./name
   ```

Example:
   ```bash:
   Enter your name: Alex
   Hello Alex
   ```

## 🛡 System Calls Used
- syscall 1: Print messages.
- syscall 0: Read user input.
- syscall 60: Exit program.

## 🤝 Contributing
Contributions are welcome! Feel free to fork the repository and create pull requests.
