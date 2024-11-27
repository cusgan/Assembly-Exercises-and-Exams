; Filename: Week13e.ASM
; Programmer Name: FELISA MELANIE FAY G. BASCUG
; Program Description: Repeatedly displays an ATM main menu until the user presses “e” for Exit.
; Date Created: November 9, 2024

.MODEL SMALL
.STACK 100H
.DATA   
	info DB 'Filename: Week13e.asm',10,'Programmer Name: FELISA MELANIE FAY G. BASCUG',10,'Program Description: Repeatedly displays an ATM main menu until the user presses e for Exit.',10,'Date Created: November 9, 2024',10,10,'$'
	prompt DB 'CIT-U ATM', 13, 10, '$'    	 
	menu DB 'a. Balance Inquiry', 13, 10, 'b. Deposit', 13, 10, 'c. Withdrawal', 13, 10, 'd. Bills Payment', 13, 10, 'e. Exit', 13, 10, '$'
	balance_inquiry_msg DB 'Balance Inquiry', 13, 10, '$'
	deposit_msg DB 'Deposit', 13, 10, '$'
	withdrawal_msg DB 'Withdrawal', 13, 10, '$'
	bills_payment_msg DB 'Bills Payment', 13, 10, '$'
	exit_msg DB 'Exit. Thank you!', 13, 10, '$'
	newline DB 13, 10, '$'   
	invalid_choice_msg DB 'Error: Invalid choice!', 13, 10, '$'
	enter_choice_msg DB 'Enter choice: $'  

.CODE
MAIN PROC
	MOV AX, @DATA
	MOV DS, AX          	; Initialize data segment

	MOV AH, 09H
	LEA DX, info
	INT 21H
    
INPUT_LOOP:
	; Display the ATM menu
	MOV AH, 9
	LEA DX, prompt      	; Display "CIT-U ATM"
	INT 21H

	MOV AH, 9
	LEA DX, menu        	; Display menu options
	INT 21H

	MOV AH, 9
	LEA DX, newline     	; Print a newline after the menu
	INT 21H

	; Display the "Enter choice" prompt (no newline after it)
	MOV AH, 9
	LEA DX, enter_choice_msg
	INT 21H

	; Get user input
	MOV AH, 1           	; DOS function to read a single character
	INT 21H             	; Wait for input

	; After user input, print a newline
	MOV AH, 9
	LEA DX, newline
	INT 21H

	; Compare input with choices
	CMP AL, 'a'         	; Compare with 'a' (Balance Inquiry)
	JE BALANCE_INQUIRY

	CMP AL, 'b'         	; Compare with 'b' (Deposit)
	JE DEPOSIT

	CMP AL, 'c'         	; Compare with 'c' (Withdrawal)
	JE WITHDRAWAL

	CMP AL, 'd'         	; Compare with 'd' (Bills Payment)
	JE BILLS_PAYMENT

	CMP AL, 'e'         	; Compare with 'e' (Exit)
	JE EXIT_PROGRAM

	; If invalid input, display an error and re-display menu
	MOV AH, 9
	LEA DX, newline
	INT 21H
	MOV AH, 9
	LEA DX, invalid_choice_msg ; Display invalid choice message
	INT 21H
	JMP INPUT_LOOP

BALANCE_INQUIRY:
	MOV AH, 9
	LEA DX, balance_inquiry_msg
	INT 21H
	MOV AH, 9
	LEA DX, newline     	; Newline after the message
	INT 21H
	JMP INPUT_LOOP

DEPOSIT:
	MOV AH, 9
	LEA DX, deposit_msg
	INT 21H
	MOV AH, 9
	LEA DX, newline     	; Newline after the message
	INT 21H
	JMP INPUT_LOOP

WITHDRAWAL:
	MOV AH, 9
	LEA DX, withdrawal_msg
	INT 21H
	MOV AH, 9
	LEA DX, newline     	; Newline after the message
	INT 21H
	JMP INPUT_LOOP

BILLS_PAYMENT:
	MOV AH, 9
	LEA DX, bills_payment_msg
	INT 21H
	MOV AH, 9
	LEA DX, newline     	; Newline after the message
	INT 21H
	JMP INPUT_LOOP

EXIT_PROGRAM:
	MOV AH, 9
	LEA DX, newline
	INT 21H

	MOV AH, 9
	LEA DX, exit_msg
	INT 21H

	MOV AH, 4CH         	; Exit program
	INT 21H

MAIN ENDP
END MAIN
