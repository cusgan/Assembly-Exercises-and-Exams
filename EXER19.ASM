; Filename: EXER19.ASM
; Programmer Name: FELISA MELANIE FAY G. BASCUG
; Date: September 19, 2024
; Create a program that asks the user to input 3 characters. Then display each character on its own line.

.MODEL small
.STACK 200h
.DATA  	 
	char1 db ?
	char2 db ?
	char3 db ?
	inputMsg1 db 'Enter first character: $'
	inputMsg2 db 'Enter second character: $'
	inputMsg3 db 'Enter third character: $'
	outputMsg1 db 'The first character is $'
	outputMsg2 db 'The second character is $'
	outputMsg3 db 'The third character is $'

.CODE
Main:
	; initialize the data segment
	mov ax, @data
	mov ds, ax

	; getting the input
    	; display the input prompt message
    	mov dx, OFFSET inputMsg1
    	mov ah, 09h
    	int 21h

    	; read a character from the keyboard
    	mov ah, 01h     	; function to read a character
    	int 21h         	; call DOS interrupt
    	mov char1, al   ; store the character

    	mov ah,02h
    	mov cl,0Ah 	; newline
    	mov dl,cl
    	int 21h

    	; display the input prompt message
    	mov dx, OFFSET inputMsg2
    	mov ah, 09h
    	int 21h

    	; read a character from the keyboard
    	mov ah, 01h     	; function to read a character
    	int 21h         	; call DOS interrupt
    	mov char2, al   ; store the character in inputChar
   	 
    	mov ah,02h
    	mov cl,0Ah 	; newline
    	mov dl,cl
    	int 21h

    	; display the input prompt message
    	mov dx, OFFSET inputMsg3
    	mov ah, 09h
    	int 21h

    	; read a character from the keyboard
    	mov ah, 01h     	; function to read a character
    	int 21h         	; call DOS interrupt
    	mov char3, al   ; store the character in inputChar
   	 
    	mov ah,02h
    	mov cl,0Ah 	; newline
    	mov dl,cl
    	int 21h

	; display the output messages
        mov ah,02h 
        mov cl,0Ah 	; newline
        mov dl,cl 
        int 21h 
        
    	mov dx, OFFSET outputMsg1
    	mov ah, 09h
    	int 21h

    	; display the character back
    	mov dl, char1   ; load the character to DL
    	mov ah, 02h     	; function to display a character
    	int 21h         	; call DOS interrupt

    	mov ah,02h
    	mov cl,'.'
    	mov dl,cl
    	int 21h
   	 
    	mov ah,02h
    	mov cl,0Ah 	; newline
    	mov dl,cl
    	int 21h

    	mov dx, OFFSET outputMsg2
    	mov ah, 09h
    	int 21h

    	; display the character back
    	mov dl, char2   ; load the character to DL
    	mov ah, 02h     	; function to display a character
    	int 21h         	; call DOS interrupt

    	mov ah,02h
    	mov cl,'.'
    	mov dl,cl
    	int 21h
   	 
    	mov ah,02h
    	mov cl,0Ah 	; newline
    	mov dl,cl
    	int 21h

    	mov dx, OFFSET outputMsg3
    	mov ah, 09h
    	int 21h

    	; display the character back
    	mov dl, char3   ; load the character to DL
    	mov ah, 02h     	; function to display a character
    	int 21h         	; call DOS interrupt

    	mov ah,02h
    	mov cl,'.'
    	mov dl,cl
    	int 21h
        
	mov ah,02h 
	mov cl,0Ah 	; newline
	mov dl,cl 
	int 21h 

	; exit program
	mov ax, 4C00h   	; function to exit program
	int 21h
END Main
