; Filename: EXER31.ASM
; Programmer Name: FELISA MELANIE FAY G. BASCUG
; Date: September 29, 2024
; Create a program to input an integer. Using a loop, display
; from 1 to the integer value entered by the user.

.MODEL SMALL
.STACK 100H
.DATA
	titles DB 'N NUMBER OF LOOPS (Single Digit Only)$'
	promptString DB 10,'Enter how many times to loop: $'
	outputString DB 10,'Output Display: $'

.CODE

MAIN PROC
; Initialize data segment
	MOV AX, @DATA  
	MOV DS, AX

; Print Title
	LEA DX, titles
	MOV AH, 09H
	INT 21H

; Get loop number
	LEA DX, promptString
	MOV AH, 09H
	INT 21H

	; To accept input and store ASCII value into al
	MOV AH, 01H
	INT 21H

	; Convert input into number and move into cl
	SUB AL, 30H
	MOV CL, AL
	ADD CL, 1

; Print loops
	LEA DX, outputString
	MOV AH, 09H
	INT 21H

	MOV CH, 1
LoopPoint:
	MOV DL, CH
	ADD Dl, 30H
	MOV AH, 02H
	INT 21H

	MOV DL, 20H
	MOV AH, 02H
	INT 21H

	INC CH
	CMP CH, CL
	JL LoopPoint

	MOV AH, 02H
	MOV CL, 0AH
	MOV DL, CL
	INT 21H
    
; Exit program
	MOV AX, 4C00H ; DOS function to terminate program
	INT 21H
MAIN ENDP


END MAIN
