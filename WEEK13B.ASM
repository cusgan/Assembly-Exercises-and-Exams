; Filename: Week13b.ASM
; Programmer Name: FELISA MELANIE FAY G. BASCUG
; Program Description: Using a loop, horizontally display the numbers 1 to 20, with space between each number.
; Date Created: November 9, 2024

.MODEL SMALL
.STACK 100H
.DATA   
	info DB 'Filename: Week13b.asm',10,'Programmer Name: FELISA MELANIE FAY G. BASCUG',10,'Program Description: Using a loop, horizontally display the numbers 1 to 20, with space between each number.',10,'Date Created: November 9, 2024',10,10,'$'
	space DB ' ', '$'   	; Space between numbers

.CODE
MAIN PROC
	MOV AX, @DATA
	MOV DS, AX          	; Initialize data segment

	MOV AH, 09H
	LEA DX, info
	INT 21H
    
	MOV CX, 20          	; Set loop counter to 20
	MOV BL, 1           	; Start with number 1

PRINT_LOOP:
	MOV AX, 0           	; Clear AX
	MOV AL, BL          	; Move the current number into AL
	CMP AL, 10          	; Check if the number is 10 or more
	JL SINGLE_DIGIT     	; If less than 10, go to single-digit printing

	CMP AL, 20          	; Check if the number is 20
	JE PRINT_TWENTY     	; If 20, jump to specific print for '20'

	; Printing numbers 10-19
	MOV DL, '1'         	; Load ASCII of '1' into DL for numbers 10-19
	MOV AH, 2           	; DOS function to display a character
	INT 21H             	; Print '1'

	; Printing second digit (0-9) of two-digit number 10-19
	MOV AL, BL
	SUB AL, 10          	; Get the second digit by subtracting 10
	ADD AL, '0'         	; Convert to ASCII
	MOV DL, AL
	MOV AH, 2
	INT 21H             	; Print the second digit

	JMP PRINT_SPACE     	; Go to print space after the number

PRINT_TWENTY:
	MOV DL, '2'         	; Load ASCII of '2' into DL
	MOV AH, 2           	; DOS function to display a character
	INT 21H             	; Print '2'

	MOV DL, '0'         	; Load ASCII of '0' into DL
	MOV AH, 2           	; DOS function to display a character
	INT 21H             	; Print '0'

	JMP PRINT_SPACE     	; Go to print space after the number

SINGLE_DIGIT:
	ADD AL, '0'         	; Convert single digit number to ASCII
	MOV DL, AL          	; Move to DL for output
	MOV AH, 2           	; DOS function to display a character
	INT 21H             	; Print number

PRINT_SPACE:
	MOV AH, 9           	; DOS function to display a string
	LEA DX, space       	; Load space character
	INT 21H             	; Print space

	INC BL              	; Increment number
	LOOP PRINT_LOOP     	; Repeat until CX is 0

	MOV AH,02H
	MOV CL,0AH ; newline
	MOV DL,CL
	INT 21H

	MOV AH, 4CH         	; Terminate program
	INT 21H

MAIN ENDP
END MAIN
