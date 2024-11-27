; Filename: EXER39.ASM
; Programmer Name: FELISA MELANIE FAY G. BASCUG
; Date: October 17, 2024
; Description: This assembly language program displays a menu 
; for Addition, Subtraction, Multiplication, and Division.

.model small
.stack 100h
.data
    menu db 'MATH OPERATIONS',10,'1. Addition',10,'2. Subtraction',10,'3. Multiplication',10,'4. Division',10,10,'Enter your choice: ','$'
    
    opAdd db 10,'Addition$'
    opSub db 10,'Subtraction$'
    opMult db 10,'Multiplication$'
    opDiv db 10,'Division$'
    
    promptNum1 db 10,'Enter first number: $'
    promptNum2 db 10,'Enter second number: $'

    sumMsg db 'Sum: $'
    diffMsg db 'Difference: $'
    prodMsg db 'Product: $'
    quotMsg db 'Quotient: $'

    newline db 13, 10, '$'
    inputOption db ?
    inputNum1 db ?
    inputNum2 db ?
    invalid db 'Invalid Choice$'
    result dw ?  ; Use word to store results
    zero db 'Error: Division by zero.$'

.code
main proc
    ; Initialize the data segment
    mov ax, @data
    mov ds, ax

    ; Display title
    mov ah, 09h
    lea dx, menu
    int 21h

    ; Read user option
    mov ah, 01h
    int 21h
    sub al, '0'            ; Convert ASCII to integer
    mov inputOption, al    ; Store the option

    ; Display result message
    mov ah, 09h
    lea dx, newline
    int 21h

    ; Display result based on operation
    cmp inputOption, 1
    je choseAdd
    cmp inputOption, 2
    je choseSub
    cmp inputOption, 3
    je choseMul
    cmp inputOption, 4
    je choseDiv
    jmp notValid 

choseAdd:
    mov ah, 09h
    lea dx, opAdd
    int 21h
    jmp getOperands
choseSub:
    mov ah, 09h
    lea dx, opSub
    int 21h
    jmp getOperands
choseMul:
    mov ah, 09h
    lea dx, opMult
    int 21h
    jmp getOperands
choseDiv:
    mov ah, 09h
    lea dx, opDiv
    int 21h
    jmp getOperands

getOperands:

    ; Read first number
    mov ah, 09h
    lea dx, promptNum1
    int 21h
    mov ah, 01h
    int 21h
    sub al, '0'
    mov inputNum1, al

    ; Read second number
    mov ah, 09h
    lea dx, promptNum2
    int 21h
    mov ah, 01h
    int 21h
    sub al, '0'
    mov inputNum2, al

    ; Perform the selected operation
    mov al, inputNum1
    mov bl, inputNum2

    cmp inputOption, 1
    je addition
    cmp inputOption, 2
    je subtraction
    cmp inputOption, 3
    je multiplication
    cmp inputOption, 4
    je division

addition:
    mov ah, 0
    add al, bl
    mov result, ax
    jmp displayResult

subtraction:
    mov ah, 0
    sub al, bl
    mov result, ax
    jmp displayResult

multiplication:
    mul bl         ; Multiply AL by BL    
    mov result, ax
    jmp displayResult

division:
    ; Check for division by zero
    cmp bl, 0
    je divByZero
    mov ah, 0      ; Clear AH for division
    div bl         ; Divide AL by BL
    mov result, ax
    jmp displayResult

divByZero:
    ; Display error message for division by zero
    mov ah, 09h
    lea dx, newline
    int 21h
    mov ah, 09h
    lea dx, zero
    int 21h    
    jmp done

displayResult:
    ; Display result message
    mov ah, 09h
    lea dx, newline
    int 21h

    ; Display result based on operation
    cmp inputOption, 1
    je printAddition
    cmp inputOption, 2
    je printSubtraction
    cmp inputOption, 3
    je printMultiplication
    cmp inputOption, 4
    je printDivision

printAddition:
    mov ah, 09h
    lea dx, sumMsg
    int 21h
    jmp printNumber

printSubtraction:
    mov ah, 09h
    lea dx, diffMsg
    int 21h
    jmp printNumber

printMultiplication:
    mov ah, 09h
    lea dx, prodMsg
    int 21h
    jmp printNumber

printDivision:
    mov ah, 09h
    lea dx, quotMsg
    int 21h
    jmp printNumber

notValid:
    mov ah, 09h
    lea dx, invalid
    int 21h
    jmp done
    
printNumber:
    ; Convert result to ASCII and display
    mov ax, result      ; Move the result to AX
    call printAX        ; Call the print routine for AX
    jmp done

printAX proc
    ; Convert AX to string and print
    xor cx, cx          ; Clear CX to use it as a counter
    mov bx, 10          ; Base 10

convertLoop:
    xor dx, dx          ; Clear DX for division
    div bx               ; AX / 10, remainder in DX
    push dx             ; Save remainder (digit)
    inc cx              ; Increment counter
    test ax, ax         ; Check if AX is zero
    jnz convertLoop      ; Repeat if not zero

    ; Output the digits in reverse order
printLoop:
    pop dx              ; Get the last remainder
    add dl, '0'         ; Convert to ASCII
    mov ah, 02h         ; Function to display character
    int 21h             ; Display character
    loop printLoop      ; Loop for all digits

    ret
printAX endp

done:
    mov ah,02h
    mov cl,0Ah ; newline
    mov dl,cl
    int 21h

    ; Terminate the program
    mov ax, 4C00h
    int 21h
main endp
end main