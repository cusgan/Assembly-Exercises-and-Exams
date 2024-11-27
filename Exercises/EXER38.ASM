; Filename: EXER38.ASM
; Programmer Name: FELISA MELANIE FAY G. BASCUG
; Date: October 17, 2024
; Description: This assembly language program takes a number input. 
; Displays the following messages depending on the value of the number entered:
;   “The number is equal to 5.”
;   “The number is less than 5.”
;   “The number is greater than 5.”

.model small
.stack 100h
.data
    prompt db 'Enter a number: $'
    msgLess db 10,'The number is less than 5.$'
    msgEqual db 10,'The number is equal to 5.$'
    msgGreater db 10,'The number is greater than 5.$'
    inputNum db ?

.code
main proc
    mov ax, @data
    mov ds, ax

    mov ah, 09h
    lea dx, prompt
    int 21h

    mov ah, 01h
    int 21h
    sub al, '0'        ; Convert ASCII to integer
    mov inputNum, al   ; Store the number

    cmp inputNum, 5
    je isEqual
    jl isLess
    jg isGreater

isLess:
    mov ah, 09h
    lea dx, msgLess
    int 21h
    jmp done

isEqual:
    mov ah, 09h
    lea dx, msgEqual
    int 21h
    jmp done

isGreater:
    mov ah, 09h
    lea dx, msgGreater
    int 21h

done:
    mov ah,02h
    mov cl,0Ah ; newline
    mov dl,cl
    int 21h
    
    mov ax, 4C00h
    int 21h
main endp
end main
