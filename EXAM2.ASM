; First Semester SY 2024-2025
; Student Name: FELISA MELANIE FAY G. BASCUG
; Date Finished: September 26, 2024

.MODEL medium
.STACK 400h
.DATA  	 
	title1 db "THE CALCULATOR",10,'$'
	title2 db "CREATED BY: FELISA MELANIE FAY G. BASCUG",10,'$'
	title3 db 'Date: September 26, 2024',10,"$"
	menu db 'Main Menu ',10,"$"
	menu1 db 'a - Addition ',10,'$'          	; 12
	menu2 db 's - Subtraction ',10,'$'       	; 15
	menu3 db 'm - Multiplication ',10,'$'    	; 18
	menu4 db 'd - Division ',10,'$'          	; 12
	menu5 db 'e - Exit ',10,'$'              	; 8

	choice db 10,'Enter your choice: $'
	inputChar db ? ; variable to store the input character

	thanks db 10,'Thank you.',10,'$'
	invalid db 'INVALID CHOICE!',10,'$'     	; 15
	exitprog db 'Exit Program',10,'$'       	; 12

	input1 db ?
	input2 db ?
    
	addit db 'Addition',10,'$'              	; 8
	addinput1 db 10,'Enter first addend: $'
	addinput2 db 10,'Enter second addend: $'
	addoutput1 db 10,'First addend is: $'
	addoutput2 db 10,'Second addend is: $'

	subt db 'Subtraction',10,'$'            	; 11
	subinput1 db 10,'Enter minuend: $'
	subinput2 db 10,'Enter subtrahend: $'
	suboutput1 db 10,'Minuend is: $'
	suboutput2 db 10,'Subtrahend is: $'

	mult db 'Multiplication',10,'$'         	; 14
	mulinput1 db 10,'Enter multiplicand: $'
	mulinput2 db 10,'Enter multiplier: $'
	muloutput1 db 10,'Multiplicand is: $'
	muloutput2 db 10,'Multiplier is: $'

	divi db 'Division',10,'$'               	; 8
	divinput1 db 10,'Enter dividend: $'
	divinput2 db 10,'Enter divisor: $'
	divoutput1 db 10,'Dividend is: $'
	divoutput2 db 10,'Divisor is: $'

.CODE
Done proc far
	mov dx, OFFSET thanks
	mov ah, 09h
	int 21h

	; exit program
	mov ax, 4C00h   	; function to exit program
	int 21h
Done endp

ExitProgram proc far
	mov ah,02h
	mov cl,0Ah ; newline
	mov dl,cl
	int 21h
    
	mov ah,09h    
	mov bl,70h	; color
	mov cx,12	; no. of characters to change
	int 10h

	mov dx, OFFSET exitprog
	mov ah, 09h
	int 21h

	call Done
ExitProgram endp

InvalidInput proc far
	mov ah,02h
	mov cl,0Ah ; newline
	mov dl,cl
	int 21h
    
	mov ah,09h    
	mov bl,11001110b	; blinking, red bg, yellow txt
	mov cx,15
	int 10h

	mov dx, OFFSET invalid
	mov ah, 09h
	int 21h
	retf
InvalidInput endp

Addition proc far
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
	retf
Addition endp

Subtraction proc far
	mov ah,02h
	mov cl,0Ah ; newline
	mov dl,cl
	int 21h

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

	retf
Subtraction endp

Multiplication proc far
	mov ah,02h
	mov cl,0Ah ; newline
	mov dl,cl
	int 21h
    
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
	retf
Multiplication endp

Division proc far
	mov ah,02h
	mov cl,0Ah ; newline
	mov dl,cl
	int 21h
    
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

	retf
Division endp

Main:
	; initialize the data segment
	mov ax, @data
	mov ds, ax

	mov ah, 09h
	lea dx, title1
	int 21h
	mov ah, 09h
	lea dx, title2
	int 21h
	mov ah, 09h
	lea dx, title3
	int 21h

loop_point:
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
	jz Additioncall
	cmp al, 's'
	jz Subtractioncall
	cmp al, 'm'
	jz Multiplicationcall
	cmp al, 'd'
	jz Divisioncall
	cmp al, 'e'
	jz ExitProgramcall
	jnz InvalidInputcall

Additioncall:
	call Addition
	jmp loop_point

Subtractioncall:
	call Subtraction
	jmp loop_point

Multiplicationcall:
	call Multiplication
	jmp loop_point

Divisioncall:
	call Division
	jmp loop_point

ExitProgramcall:
	call ExitProgram

InvalidInputcall:
	call InvalidInput
	jmp loop_point

END Main