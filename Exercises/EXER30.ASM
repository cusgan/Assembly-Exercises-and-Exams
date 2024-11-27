; Filename: EXER30.ASM
; Programmer Name: FELISA MELANIE FAY G. BASCUG
; Date: September 29, 2024
; Make a program to input two integers. Compare the two
; integers. Display which one is smaller and bigger of the
; two integers.

.MODEL SMALL
.STACK 100H
.DATA
	titles DB 'COMPARISON OF INTEGERS (Single Digit Only)$'
	promptString1 DB 10,'Enter first integer: $'
	promptString2 DB 10,'Enter second integer: $'
	outputString1 DB 10,'The bigger integer: $'
	outputString2 DB 10,'The smaller integer: $'

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
	PUSH AX

; Get second integer
	LEA DX, promptString2
	MOV AH, 09H
	INT 21H

	; To accept input and store ASCII value into al
	MOV AH, 01H
	INT 21H

	; 1st->AL, 2nd->BL
	MOV BL, AL
	POP AX

; Compare
	CMP AL, Bl
	JL algreater
	MOV CX, AX
    	MOV AX, BX
    	PUSH AX
    	MOV AX, CX
    	PUSH AX
    	JMP printnow

	algreater:
    	PUSH AX
    	MOV AX, BX
    	PUSH AX

	printnow:
; Print
	LEA DX, outputString1
	MOV AH, 09H
	INT 21H

	POP AX
	MOV DL, AL
	MOV AH, 02H
	INT 21H
   	 
	LEA DX, outputString2
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
