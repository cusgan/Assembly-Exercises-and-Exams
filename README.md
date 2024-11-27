# TASM Assembly Exercises

This repository contains TASM assembly files for exercises and exams for the **Computer Organization and Architecture** course.

Executing files directly in **VSCode using the MASM/TASM extension** is possible. However, executing on **DOSBox** is recommended for accuracy of the screen output (especially with colored text).

## Mounting DOSBox

1. Open the DOSBox Options application.
2. Scroll to the end until you reach `[autoexec]`.
3. After autoexec, place your mount commands to your desired directory, e.g. in this case, `C:\Documents\TASM`.
   
    ```
    MOUNT C: "C:\Documents\TASM"
    C:
    ```

## Quick Execute on DOSBox

Given the ASM file `myfile.asm`, run either of the following commands:

1. For most files: 
   
   ```compile myfile.asm```
   
2.  For files using the IO library: 
   
      ```io myfile.asm```

These commands utilize the `compile.bat` and `io.bat` files.

## Manual Execute on DOSBox

Given the ASM file `myfile.asm`, run the following commands in order:

1. `TASM myfile.asm` -  Assembles the file and creates an object file `myfile.obj` (if no errors).
2. `TLINK myfile.obj` - Links the object file.
3. `myfile.exe` - Executes the code.

## Acknowledgements

[Introduction to Assembly Language Programming: From 8086 to Pentium](https://people.scs.carleton.ca/~sivarama/asm_book.html)
