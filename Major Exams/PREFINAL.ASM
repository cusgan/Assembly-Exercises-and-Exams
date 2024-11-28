; Filename: PREFINAL.ASM
; CS243 Lab Hands-on Pre-Final Exam
; First Semester SY 2024-2025
; Student Name: FELISA MELANIE FAY G. BASCUG
; Date Finished: November 14, 2024

.MODEL SMALL
.STACK 100H
.DATA   
    head1    DB 'Cebu Institute of Technology - University                                       $'
    head2    DB 'Automatic Teller Machine                                                        $'
    head3    DB 'Programmer: FELISA MELANIE FAY G. BASCUG                                        $'
    head4    DB 'Copyright 2024                                                                  $'
	prompt   DB 'Main Menu                                                                       $'    	 
	menu1    DB '1. Balance Inquiry                                                              $'
    menu2    DB '2. Deposit                                                                      $'
    menu3    DB '3. Withdrawal                                                                   $'
    menu4    DB '4. Exit                                                                         $'
	balance_inquiry_msg DB 'Balance Inquiry', 13, 10, 'Your current balance: P', '$'
	deposit_msg DB 'Deposit', 13, 10, 'Enter deposit amount: P', '$'
	withdrawal_msg DB 'Withdrawal', 13, 10, 'Enter withdrawal amount: P', '$'
	exit_msg DB 'Exiting ATM', 13, 10, 'Thank you!', 13, 10, '$'
	newline DB 13, 10, '$'   
	invalid_choice_msg      DB 'Error: Invalid choice!                                                          $'
	enter_choice_msg DB 'Enter your choice: $'  
	insufficient_funds_msg  DB 'ERROR! Insufficient balance!                                                    $'

	balance DW 0           
    inbf db  50,?,50 dup('$')
    myin db 50 dup (?)

.CODE
MAIN PROC
	MOV AX, @DATA
	MOV DS, AX          	; Initialize data segment

    mov ah, 09h
    mov bl, 6Fh ; bg fg
    mov cx, 80 ; no. of chars to change
    int 10h
	MOV AH, 09H
	LEA DX, head1
	INT 21H
    mov ah, 09h
    mov bl, 6Fh ; bg fg
    mov cx, 80 ; no. of chars to change
    int 10h
	MOV AH, 09H
	LEA DX, head2
	INT 21H
    mov ah, 09h
    mov bl, 6Fh ; bg fg
    mov cx, 80 ; no. of chars to change
    int 10h
	MOV AH, 09H
	LEA DX, head3
	INT 21H
    mov ah, 09h
    mov bl, 6Fh ; bg fg
    mov cx, 80 ; no. of chars to change
    int 10h
	MOV AH, 09H
	LEA DX, head4
	INT 21H
    
DISPLAY_MENU:
	mov ah,02h
    mov cl,0Ah ; newline
    mov dl,cl
    int 21h

    mov ah, 09h
    mov bl, 1Fh ; bg fg
    mov cx, 80 ; no. of chars to change
    int 10h
	MOV AH, 9
	LEA DX, prompt      	
	INT 21H

    mov ah, 09h
    mov bl, 1Fh ; bg fg
    mov cx, 80 ; no. of chars to change
    int 10h
	MOV AH, 9
	LEA DX, menu1        	
	INT 21H
    mov ah, 09h
    mov bl, 1Fh ; bg fg
    mov cx, 80 ; no. of chars to change
    int 10h
	MOV AH, 9
	LEA DX, menu2        	
	INT 21H
    mov ah, 09h
    mov bl, 1Fh ; bg fg
    mov cx, 80 ; no. of chars to change
    int 10h
	MOV AH, 9
	LEA DX, menu3       	
	INT 21H
    mov ah, 09h
    mov bl, 1Fh ; bg fg
    mov cx, 80 ; no. of chars to change
    int 10h
	MOV AH, 9
	LEA DX, menu4        	
	INT 21H

	MOV AH, 9
	LEA DX, newline     	
	INT 21H

	MOV AH, 9
	LEA DX, enter_choice_msg
	INT 21H

	MOV AH, 1           	
	INT 21H             	

	MOV AH, 9
	LEA DX, newline
	INT 21H

	; Compare input with choices
	CMP AL, '1'         	; Compare with '1' (Balance Inquiry)
	JE BALANCE_INQUIRY

	CMP AL, '2'         	; Compare with '2' (Deposit)
	JE DEPOSIT

	CMP AL, '3'         	; Compare with '3' (Withdrawal)
	JE WITHDRAWAL

	CMP AL, '4'         	; Compare with '4' (Exit)
	JE EXIT_PROGRAM

	; If invalid input, display an error and re-display menu
    mov ah, 09h
    mov bl, 11001110b ; 1 blink bit + 3 bg bits + 4 fg bits
    mov cx, 80 ; no. of chars to change
    int 10h

	MOV AH, 9
	LEA DX, invalid_choice_msg 
	INT 21H
	JMP DISPLAY_MENU

BALANCE_INQUIRY:
	MOV AH, 9
	LEA DX, balance_inquiry_msg
	INT 21H
	; Display current balance
	MOV AX, balance
	CALL DISPLAY_NUMBER
	MOV AH, 9
	LEA DX, newline     	
	INT 21H
	JMP DISPLAY_MENU

DEPOSIT:
	MOV AH, 9
	LEA DX, deposit_msg  	
	INT 21H
	CALL GET_AMOUNT           
	ADD balance, AX         
	JMP DISPLAY_MENU

WITHDRAWAL:
	MOV AH, 9
	LEA DX, withdrawal_msg   	
	INT 21H
	CALL GET_AMOUNT           
	CMP balance, AX
	JB INSUFFICIENT_FUNDS      
	SUB balance, AX            
	MOV AH, 9
	LEA DX, newline
	INT 21H
	JMP DISPLAY_MENU

INSUFFICIENT_FUNDS:
    mov ah, 09h
    mov bl, 11001110b ; 1 blink bit + 3 bg bits + 4 fg bits
    mov cx, 80 ; no. of chars to change
    int 10h

	MOV AH, 9
	LEA DX, insufficient_funds_msg
	INT 21H
	JMP DISPLAY_MENU

EXIT_PROGRAM:
	MOV AH, 9
	LEA DX, exit_msg
	INT 21H
	MOV AH, 4CH         	; Exit program
	INT 21H

; Display number in AX
DISPLAY_NUMBER PROC
	PUSH AX
	PUSH BX
	PUSH CX
	PUSH DX

	MOV CX, 0             	
	MOV BX, 10            

CONVERT_LOOP:
	XOR DX, DX            	
	DIV BX                
	PUSH DX               	
	INC CX                
	TEST AX, AX
	JNZ CONVERT_LOOP      	

PRINT_LOOP:
	POP DX                	
	ADD DL, '0'           	
	MOV AH, 2             
	INT 21H
	DEC CX
	JNZ PRINT_LOOP

	POP DX
	POP CX
	POP BX
	POP AX
	RET
DISPLAY_NUMBER ENDP

; Get amount subroutine
string_input proc far
    mov ah, 0Ah
    mov dx, offset inbf
    int 21h
    cld
    mov si, offset inbf + 1
    mov cl, [ si ]
    mov ch, 0
    inc cx
    add si, cx
    mov al, '$'
    mov [ si ], al
    mov ax, offset inbf
    lea si, inbf
    add si, 2
    si_copy_loop:
        mov al, [si]
        mov [di], al
        inc si
        inc di
        cmp al, '$'
        jnz si_copy_loop
    retf
string_input endp
str2int proc far
    mov ax, 0
    str2intloop:
        mov cl, [si]
        cmp cl, '$'
        je str2intend
        sub cl, '0'
        mov bx, 10
        mul bx
        add ax, cx
        inc si
        jmp str2intloop
    str2intend:
        retf
str2int endp
GET_AMOUNT PROC
    lea di, myin
    call string_input
 
    lea si, myin
    call str2int
    RET
GET_AMOUNT ENDP

MAIN ENDP
END MAIN