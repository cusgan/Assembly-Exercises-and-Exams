; Filename: Week13c.ASM
; Programmer Name: FELISA MELANIE FAY G. BASCUG
; Program Description: Horizontally displays numbers from 1 to a user-specified number (up to 8 only).
; Date Created: November 9, 2024

.MODEL SMALL
.STACK 100H
.DATA   
	info DB 'Filename: Week13c.asm',10,'Programmer Name: FELISA MELANIE FAY G. BASCUG',10,'Program Description: Horizontally displays numbers from 1 to a user-specified number (up to 8 only).',10,'Date Created: November 9, 2024',10,'$'
	prompt DB 'Enter a number from 1 to 8: $'
	error_msg DB 'Error: Number out of range!$'
	space DB ' ', '$'   	; Space between numbers
	newline DB 13, 10, '$'  ; Carriage return and line feed for new line

.CODE
MAIN PROC
	MOV AX, @DATA
	MOV DS, AX          	; Initialize data segment
    
	MOV AH, 09H
	LEA DX, info
	INT 21H
    
INPUT_LOOP:
	; Display prompt
	MOV AH, 9           	; DOS function to display string
	LEA DX, newline     	; Print a newline
	INT 21H
	LEA DX, prompt      	; Load prompt message
	INT 21H             	; Display prompt

	; Get user input
	MOV AH, 1           	; DOS function to read a single character
	INT 21H             	; Wait for input
	SUB AL, '0'         	; Convert ASCII to integer

	; Check if input is valid (between 1 and 8)
	CMP AL, 1           	; Compare with 1
	JL INVALID_INPUT    	; Jump if less than 1
	CMP AL, 8           	; Compare with 8
	JG INVALID_INPUT    	; Jump if greater than 8

	; Input is valid, display numbers from 1 to the entered number
	MOV BL, AL          	; Move user input to BL for loop count
	MOV CL, 1           	; Start with 1

	; Print a newline before displaying the numbers
	MOV AH, 9
	LEA DX, newline
	INT 21H

DISPLAY_NUMBERS:
	; Convert CL to ASCII and print it
	MOV AL, CL
	ADD AL, '0'         	; Convert to ASCII
	MOV DL, AL          	; Move to DL for output
	MOV AH, 2           	; DOS function to display character
	INT 21H             	; Print the number

	; Print space if it's not the last number
	CMP CL, BL          	; Check if we reached the last number
	JE END_DISPLAY      	; If yes, skip printing space

	MOV AH, 9           	; DOS function to display string
	LEA DX, space       	; Load space character
	INT 21H             	; Print space

	INC CL              	; Increment counter
	JMP DISPLAY_NUMBERS 	; Repeat until CL > BL

END_DISPLAY:
	; Print newline after displaying the numbers
	MOV AH, 9
	LEA DX, newline
	INT 21H

	JMP PROGRAM_END     	; End program after displaying numbers

INVALID_INPUT:
	; Print newline before error message
	MOV AH, 9
	LEA DX, newline
	INT 21H

	; Display error message
	MOV AH, 9           	; DOS function to display string
	LEA DX, error_msg   	; Load error message
	INT 21H             	; Display error message

	; Print newline after error message
	MOV AH, 9
	LEA DX, newline
	INT 21H

	JMP INPUT_LOOP      	; Go back to input prompt if input was invalid

PROGRAM_END:
	; Terminate program
	MOV AH, 4CH         	; DOS function to terminate program
	INT 21H

MAIN ENDP
END MAIN
