; Filename: EXER32.ASM
; Programmer Name: FELISA MELANIE FAY G. BASCUG
; Date: September 29, 2024
; Copy your code from the 2nd Lab Hands-on Exam. Edit your
; code to perform the actual math operations and display the results.

.MODEL medium
.STACK 400h
.DATA  	 
	title1 db "THE CALCULATOR",10,'$'
	title2 db "CREATED BY: FELISA MELANIE FAY G. BASCUG",10,'$'
	title3 db 'Date: September 29, 2024',10,"$"
	menu db 'Main Menu ',10,"$"
	menu1 db 'a - Addition ',10,'$'          	; 12
	menu2 db 's - Subtraction ',10,'$'       	; 15
	menu3 db 'm - Multiplication ',10,'$'    	; 18
	menu4 db 'd - Division ',10,'$'          	; 12
	menu5 db 'e - Exit ',10,'$'              	; 8

	choice db 'Enter your choice: $'
	inputChar db ? ; variable to store the input character

	thanks db 10,'Thank you.',10,'$'
	invalid db 'INVALID CHOICE!',10,'$'     	; 15
	exitprog db 10,'Exit Program',10,'$'       	; 12

	input1 db ?
	input2 db ?
    
	addit db 'Addition',10,'$'              	; 8
	addinput1 db 10,'Enter first addend: $'
	addinput2 db 10,'Enter second addend: $'
	addoutput1 db 10,'First addend is: $'
	addoutput2 db 10,'Second addend is: $'
	addoutput3 db 10,'Sum is: $'

	subt db 10,'Subtraction',10,'$'            	; 11
	subinput1 db 10,'Enter minuend: $'
	subinput2 db 10,'Enter subtrahend: $'
	suboutput1 db 10,'Minuend is: $'
	suboutput2 db 10,'Subtrahend is: $'
	suboutput3 db 10,'Difference is: $'

	mult db 10,'Multiplication',10,'$'         	; 14
	mulinput1 db 10,'Enter multiplicand: $'
	mulinput2 db 10,'Enter multiplier: $'
	muloutput1 db 10,'Multiplicand is: $'
	muloutput2 db 10,'Multiplier is: $'
	muloutput3 db 10,'Product is: $'

	divi db 10,'Division',10,'$'               	; 8
	divinput1 db 10,'Enter dividend: $'
	divinput2 db 10,'Enter divisor: $'
	divoutput1 db 10,'Dividend is: $'
	divoutput2 db 10,'Divisor is: $'
	divoutput3 db 10,'Quotient is: $'
	anybutton db 10,10,'Press enter to continue. $'
.CODE
Main:
	; initialize the data segment
	mov ax, @data
	mov ds, ax
fromthestart:
	mov ah, 09h
	lea dx, title1
	int 21h
	mov ah, 09h
	lea dx, title2
	int 21h
	mov ah, 09h
	lea dx, title3
	int 21h

	mov ah,02h
	mov cl,10 ; newline
	mov dl,cl
	int 21h

	mov ah, 09h
	lea dx, menu
	int 21h

	mov ah,09h    
	mov bl,60h	; color
	mov cx,12	; no. of characters to change
	int 10h
	mov ah, 09h
	lea dx, menu1
	int 21h

	mov ah,09h    
	mov bl,20h	; color
	mov cx,15	; no. of characters to change
	int 10h
	mov ah, 09h
	lea dx, menu2
	int 21h

	mov ah,09h    
	mov bl,10h	; color
	mov cx,18	; no. of characters to change
	int 10h
	mov ah, 09h
	lea dx, menu3
	int 21h

	mov ah,09h    
	mov bl,50h	; color
	mov cx,12	; no. of characters to change
	int 10h
	mov ah, 09h
	lea dx, menu4
	int 21h

	mov ah,09h    
	mov bl,70h	; color
	mov cx,8	; no. of characters to change
	int 10h
	mov ah, 09h
	lea dx, menu5
	int 21h

	; display the input prompt message
	mov dx, OFFSET choice
	mov ah, 09h
	int 21h

	; read a character from the keyboard
	mov ah, 01h     	; function to read a character
	int 21h         	; call DOS interrupt
	mov inputChar, al   ; store the character in inputChar

	cmp al, 'a'	 
	jz Addition
	cmp al, 's'
	jz Subtraction
	cmp al, 'm'
	jz Multiplication0
	cmp al, 'd'
	jz Division0
	cmp al, 'e'
	jz ExitProgram0
	jnz InvalidInput0

Addition:
	mov ah,02h
	mov cl,10 ; newline
	mov dl,cl
	int 21h

	mov ah,09h    
	mov bl,60h	; color
	mov cx,8	; no. of characters to change
	int 10h

	mov dx, OFFSET addit
	mov ah, 09h
	int 21h

	mov dx, OFFSET addinput1
	mov ah, 09h
	int 21h
	mov ah, 01h     	; function to read a character
	int 21h         	; call DOS interrupt
	mov input1, al
	mov dx, OFFSET addinput2
	mov ah, 09h
	int 21h
	mov ah, 01h     	; function to read a character
	int 21h         	; call DOS interrupt
	mov input2, al

	mov dx, OFFSET addoutput1
	mov ah, 09h
	int 21h
	mov dl, input1   
	mov ah, 02h   	 
	int 21h      	 
	mov dx, OFFSET addoutput2
	mov ah, 09h
	int 21h
	mov dl, input2  
	mov ah, 02h   	 
	int 21h     	 
	mov dx, OFFSET addoutput3
	mov ah, 09h
	int 21h
	mov dl, input2  
	mov ah, input1
	add dl, ah
	sub dl, 30H
	mov ah, 02h   	 
	int 21h
	jmp ClearScreen

Subtraction:
jmp a1a1
	Multiplication0:
	jmp Multiplication
	Division0:
	jmp Division
	ExitProgram0:
	jmp ExitProgram
	InvalidInput0:
	jmp InvalidInput
	a1a1:
	mov ah,09h    
	mov bl,20h	; color
	mov cx,11	; no. of characters to change
	int 10h

    

	mov dx, OFFSET subt
	mov ah, 09h
	int 21h

	mov dx, OFFSET subinput1
	mov ah, 09h
	int 21h
	mov ah, 01h     	; function to read a character
	int 21h         	; call DOS interrupt
	mov input1, al
	mov dx, OFFSET subinput2
	mov ah, 09h
	int 21h
	mov ah, 01h     	; function to read a character
	int 21h         	; call DOS interrupt
	mov input2, al

    
	mov dx, OFFSET suboutput1
	mov ah, 09h
	int 21h
	mov dl, input1   
	mov ah, 02h   	 
	int 21h      	 
	mov dx, OFFSET suboutput2
	mov ah, 09h
	int 21h
	mov dl, input2  
	mov ah, 02h   	 
	int 21h      	 
	mov dx, OFFSET suboutput3
	mov ah, 09h
	int 21h
	mov ah, input2  
	mov dl, input1
	sub dl, ah
	add dl, 30H
	mov ah, 02h   	 
	int 21h
	jmp ClearScreen

Multiplication:
	mov ah,09h    
	mov bl,10h	; color
	mov cx,14	; no. of characters to change
	int 10h

	mov dx, OFFSET mult
	mov ah, 09h
	int 21h
    
	mov dx, OFFSET mulinput1
	mov ah, 09h
	int 21h
	mov ah, 01h     	; function to read a character
	int 21h         	; call DOS interrupt
	mov input1, al
	mov dx, OFFSET mulinput2
	mov ah, 09h
	int 21h
	mov ah, 01h     	; function to read a character
	int 21h         	; call DOS interrupt
	mov input2, al

	mov dx, OFFSET muloutput1
	mov ah, 09h
	int 21h
	mov dl, input1   
	mov ah, 02h   	 
	int 21h      	 
	mov dx, OFFSET muloutput2
	mov ah, 09h
	int 21h
	mov dl, input2  
	mov ah, 02h   	 
	int 21h     	 
	mov dx, OFFSET muloutput3
	mov ah, 09h
	int 21h
	mov bl, input2  
	sub bl, 30H
	mov al, input1
	sub al, 30H
	mul bx
	mov dx, ax
	add dl, 30H
	mov ah, 02h   	 
	int 21h  
	jmp ClearScreen

Division:
	mov ah,09h    
	mov bl,50h	; color
	mov cx,8	; no. of characters to change
	int 10h

	mov dx, OFFSET divi
	mov ah, 09h
	int 21h

	mov dx, OFFSET divinput1
	mov ah, 09h
	int 21h
	mov ah, 01h     	; function to read a character
	int 21h         	; call DOS interrupt
	mov input1, al
	mov dx, OFFSET divinput2
	mov ah, 09h
	int 21h
	mov ah, 01h     	; function to read a character
	int 21h         	; call DOS interrupt
	mov input2, al

	mov dx, OFFSET divoutput1
	mov ah, 09h
	int 21h
	mov dl, input1   
	mov ah, 02h   	 
	int 21h      	 
	mov dx, OFFSET divoutput2
	mov ah, 09h
	int 21h
	mov dl, input2  
	mov ah, 02h   	 
	int 21h      	 
	mov dx, OFFSET divoutput3
	mov ah, 09h
	int 21h
	mov ah, 0
	mov bl, input2  
	sub bl, 30H
	mov al, input1
	sub al, 30H
	div bl
	mov dx, ax
	add dl, 30H
	mov ah, 02h   	 
	int 21h  
	jmp ClearScreen

ExitProgram:
	mov ah,09h    
	mov bl,70h	; color
	mov cx,8	; no. of characters to change
	int 10h

	mov dx, OFFSET exitprog
	mov ah, 09h
	int 21h

	jmp Done

InvalidInput:
	mov ah,09h    
	mov bl,11001110b	; blinking, red bg, yellow txt
	mov cx,15
	int 10h

	mov dx, OFFSET invalid
	mov ah, 09h
	int 21h

Done:
	mov dx, OFFSET thanks
	mov ah, 09h
	int 21h

	; exit program
	mov ax, 4C00h   	; function to exit program
	int 21h
ClearScreen:
	mov dx, OFFSET anybutton
	mov ah, 09h
	int 21h
	mov ah, 01h     	; function to read a character
	int 21h         	; call DOS interrupt
	mov ah, 02h	 
	mov bh, 0    
	mov dh, 0    
	mov dl, 0    
	int 10h  	 

	mov cx, 2000    
	mov ah, 09h    
	mov al, 20H	 
	mov bh, 0	 
	mov bl, 07h 	 

	write_spaces:
    	int 10h    	; Write the space to the screen
    	loop write_spaces
	JMP fromthestart

END Main
