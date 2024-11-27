; Filename: Week13a.ASM
; Programmer Name: FELISA MELANIE FAY G. BASCUG
; Program Description: Using a loop, vertically displays the numbers 1 to 10.
; Date Created: November 9, 2024

.MODEL SMALL
.STACK 100H
.DATA   
	info DB 'Filename: Week13a.asm',10,'Programmer Name: FELISA MELANIE FAY G. BASCUG',10,'Program Description: Using a loop, vertically displays the numbers 1 to 10.',10,'Date Created: November 9, 2024',10,10,'$'
	newline DB 13, 10, '$' ; Carriage return and line feed for new line

.CODE
MAIN PROC
	MOV AX, @DATA
	MOV DS, AX        	; Initialize data segment

	MOV AH, 09H
	LEA DX, info
	INT 21H
    
	MOV CX, 10        	; Set loop counter to 10
	MOV BL, 1         	; Start with 1

PRINT_LOOP:
	MOV AX, 0         	; Clear AX
	MOV AL, BL        	; Move the current number from BL to AL
	CMP AL, 10        	; Check if the number is 10 or more
	JL SINGLE_DIGIT   	; If less than 10, go to single digit printing

	; Printing '1' of '10'
	MOV DL, '1'       	; Load ASCII of '1' into DL
	MOV AH, 2         	; DOS function to display a character
	INT 21H           	; Print '1'

	; Printing '0' of '10'
	MOV DL, '0'       	; Load ASCII of '0' into DL
	MOV AH, 2         	; DOS function to display a character
	INT 21H           	; Print '0'

	JMP PRINT_NEWLINE 	; Go to print newline

SINGLE_DIGIT:
	ADD AL, 48        	; Convert single digit number to ASCII by adding 48
	MOV DL, AL        	; Move to DL for output
	MOV AH, 2         	; DOS function to display a character
	INT 21H           	; Print number

PRINT_NEWLINE:
	MOV AH, 9         	; DOS interrupt for displaying a string
	LEA DX, newline   	; Load newline characters
	INT 21H           	; Display newline

	INC BL            	; Increment number
	LOOP PRINT_LOOP   	; Repeat until CX is 0

	MOV AH, 4CH       	; Terminate program
	INT 21H

MAIN ENDP
END MAIN
