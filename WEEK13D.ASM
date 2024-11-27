; Filename: Week13d.ASM
; Programmer Name: FELISA MELANIE FAY G. BASCUG
; Program Description: Repeatedly asks user to input a single digit whole number until the number entered is a zero.
; Date Created: November 9, 2024

.MODEL SMALL
.STACK 100H
.DATA   
	info DB 'Filename: Week13d.asm',10,'Programmer Name: FELISA MELANIE FAY G. BASCUG',10,'Program Description: Repeatedly asks user to input a single digit whole number until the number entered is a zero.',10,'Date Created: November 9, 2024',10,'$'
	prompt DB 'Enter a single digit number: $'
	thank_you_msg DB 'Thank you.$'
	newline DB 13, 10, '$'  ; Newline (Carriage return and Line Feed)

.CODE
MAIN PROC
	MOV AX, @DATA
	MOV DS, AX          	; Initialize data segment

	MOV AH, 09H
	LEA DX, info
	INT 21H
    
INPUT_LOOP:
	; Print a newline before the prompt
	MOV AH, 9
	LEA DX, newline     	; Load address of newline
	INT 21H

	; Display prompt
	MOV AH, 9           	; DOS function to display string
	LEA DX, prompt      	; Load prompt message
	INT 21H             	; Display prompt

	; Get user input
	MOV AH, 1           	; DOS function to read a single character
	INT 21H             	; Wait for input
	SUB AL, '0'         	; Convert ASCII to integer

	; Check if input is zero
	CMP AL, 0           	; Compare with 0
	JE THANK_YOU        	; If zero, jump to thank you message

	; Check if input is a single-digit whole number (1 to 9)
	CMP AL, 1           	; Compare with 1
	JL INVALID_INPUT    	; Jump if less than 1 (invalid input)
	CMP AL, 9           	; Compare with 9
	JG INVALID_INPUT    	; Jump if greater than 9 (invalid input)

	; Valid single-digit input, go back to prompt
	JMP INPUT_LOOP      	; Ask for input again

INVALID_INPUT:
	; Print newline and re-prompt if input is invalid
	MOV AH, 9
	LEA DX, newline
	INT 21H
	JMP INPUT_LOOP      	; Go back to prompt

THANK_YOU:
	; Print newline before "Thank you" message
	MOV AH, 9
	LEA DX, newline
	INT 21H

	; Display "Thank you" message
	MOV AH, 9           	; DOS function to display string
	LEA DX, thank_you_msg   ; Load thank you message
	INT 21H             	; Display thank you message

	; Print newline after "Thank you" message
	MOV AH, 9
	LEA DX, newline
	INT 21H

	; End program
	MOV AH, 4CH         	; DOS function to terminate program
	INT 21H

MAIN ENDP
END MAIN
