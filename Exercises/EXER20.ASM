; Filename: EXER20.ASM
; Programmer Name: FELISA MELANIE FAY G. BASCUG
; Date: September 19, 2024
; Create a program that asks user to input a character.
; Determine if character is letter A and display message “Yes, you have entered letter A.”
; If not, display “No, you have not entered letter A. You entered character _.”

.MODEL small
.STACK 100h
.DATA
	prompt db 'Enter a character: $'
	char db ?
	amsg LABEL BYTE
    	db 13,10,'Yes, you have entered letter $'
	notamsg LABEL BYTE
    	db 13,10,'No, you have not entered letter A. You entered character $'

.CODE
ProgramStart:
	mov ax, @data
	mov ds, ax              	; set DS to point to the data segment   
	mov dx, OFFSET prompt   ; point to the prompt
	mov ah, 9               	; DOS print string function
	int 21h                 	; display

	mov ah, 1   ; DOS get character function
	int 21h 	; get single character response
	mov char, al ; store the character

	cmp al, 'a'	 
	jz IsA  ; jz = jump if zero
	cmp al, 'A'	 
	jnz IsnotA   

IsA:
	mov dx, OFFSET amsg
	jmp DisplayMessage            	 

IsnotA:
	mov dx, OFFSET notamsg  

DisplayMessage:
	mov ah, 9   ; DOS print string function
	int 21h 	; display the greeting
    
	mov dl, char   
	mov ah, 02h   	 
	int 21h      	 

	mov ah,02h
	mov cl,'.'
	mov dl,cl
	int 21h
    
	mov ah,02h 
	mov cl,0Ah 	; newline
	mov dl,cl 
	int 21h 

	mov ah, 4Ch ; DOS terminate program function
	int 21h 	; terminate program

END ProgramStart
