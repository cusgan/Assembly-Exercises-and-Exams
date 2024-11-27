; Filename: EXER29.ASM
; Programmer Name: FELISA MELANIE FAY G. BASCUG
; Date: September 29, 2024
; Make a program to input two integers, divide the first by
; the second integer, and display the quotient of the two
; integers.

.MODEL SMALL
.STACK 100H
.DATA
	titles DB 'DIVISION OF INTEGERS (Single Digit Only)$'
	promptString1 DB 10,'Enter first integer: $'
	promptString2 DB 10,'Enter second integer: $'
	outputString DB 10,'Quotient of the integers: $'

.CODE

MAIN PROC
; Initialize data segment
	MOV AX, @DATA  
	MOV DS, AX

; Print Title
	LEA DX, titles
	MOV AH, 09H
	INT 21H

; Get first integer
	LEA DX, promptString1
	MOV AH, 09H
	INT 21H

	; To accept input and store ASCII value into al
	MOV AH, 01H
	INT 21H

	; Convert input into number and move
	SUB AL, 30H
	MOV AH, 0
	PUSH AX

; Get second integer
	LEA DX, promptString2
	MOV AH, 09H
	INT 21H

	; To accept input and store ASCII value into al
	MOV AH, 01H
	INT 21H

	; Convert to number
	SUB AL, 30H

; Divide Two numbers
	MOV Bl, AL
	POP AX
	DIV BL
	; Convert back to string
	ADD AL, 30H
	PUSH AX

; Print
	LEA DX, outputString
	MOV AH, 09H
	INT 21H
	POP AX

	MOV DL, AL
	MOV AH, 02H
	INT 21H

	MOV AH, 02H
	MOV CL, 0AH
	MOV DL, CL
	INT 21H

; Exit program
	MOV AX, 4C00H ; DOS function to terminate program
	INT 21H
MAIN ENDP


END MAIN
