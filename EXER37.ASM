; Filename: EXER37.ASM
; Programmer Name: FELISA MELANIE FAY G. BASCUG
; Date: October 17, 2024
; Description: This assembly language program takes a character input. 
; If the character is the capital letter A, display message “You entered A.”,
; else display “You entered not A."

.MODEL small
.STACK 100h
.DATA
	prompt db 'Enter a character: $'
	char db ?
	msgA db 10,'You entered A.$'
	msgNotA db 10,'You entered not A.$'

.CODE
main proc
    mov ax, @data
    mov ds, ax

    mov ah, 09h
    lea dx, prompt
    int 21h

    mov ah, 01h
    int 21h
    mov char, al  ; Store the character in inputChar

    cmp char, 'A'
    je isA

notA:
    mov ah, 09h
    lea dx, msgNotA
    int 21h
    jmp done

isA:
    mov ah, 09h
    lea dx, msgA
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