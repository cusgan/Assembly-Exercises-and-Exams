; Filename: EXER23.ASM
; Programmer Name: FELISA MELANIE FAY G. BASCUG
; Date: September 19, 2024
; Create an Automated Teller Machine (ATM) main menu screen.
; Ask the user to input a number corresponding to an item in the main menu.
; Print back the number input by user and the corresponding transaction.

.MODEL small
.STACK 100h
.DATA
	;data here
	intro db 10,'Cebu Institute of Technology - University',10,'Automated Teller Machine',10,10,'Main Menu',10,'$'
	opt0 db '1 Balance Inquiry ',10,'$'
	opt1 db '2 Withdrawal  	',10,'$'
	opt2 db '3 Deposit     	',10,'$'
	opt3 db '4 Transfer    	',10,'$'
	opt4 db '5 Bills Payment   ',10,'$'
	opt5 db '6 Change Pin  	',10,'$'
	opt6 db '7 Exit        	',10,'$'
	prompt db 'Enter number of your choice: $'
	chose db 10,'You have chosen $'
	footer db 10,'Thank you for banking with us!',10,'Copyright 2024',10,'Programmer: FELISA MELANIE FAY G. BASCUG$'
	input db ?
.CODE
ProgramStart:
	mov ax, @data
	mov ds, ax    
	;print header
	mov dx, OFFSET intro
	mov ah, 9
	int 21h
	mov dx, OFFSET opt0
	mov ah, 9
	int 21h
     	 
	mov dx, OFFSET opt1
	mov ah, 9
	int 21h
     	 
	mov dx, OFFSET opt2
	mov ah, 9
	int 21h
     	 
	mov dx, OFFSET opt3
	mov ah, 9
	int 21h
     	 
	mov dx, OFFSET opt4
	mov ah, 9
	int 21h
     	 
	mov dx, OFFSET opt5
	mov ah, 9
	int 21h
     	 
	mov dx, OFFSET opt6
	mov ah, 9
	int 21h
     	 
	mov dx, OFFSET prompt
	mov ah, 9
	int 21h
	; read a character from the keyboard
	mov ah, 01h     	; function to read a character
	int 21h         	; call DOS interrupt
	sub al, 30H
	mov input, al   ; store the character in inputChar

	mov dx, OFFSET chose
	mov ah, 9
	int 21h

	mov ax, 20
	mov bl, input
	dec bl
	mul bl
	mov dx, OFFSET opt0
	add dx,ax
	mov al, 0
	mov ah, 9
	int 21h

	mov dx, OFFSET footer
	mov ah, 9
	int 21h
    
	mov ah,02h 
	mov cl,0Ah 	; newline
	mov dl,cl 
	int 21h 

	mov ah, 4Ch ; DOS terminate program function
	int 21h 	; terminate the program
END ProgramStart
