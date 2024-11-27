; Filename: EXER21.ASM
; Programmer Name: FELISA MELANIE FAY G. BASCUG
; Date: September 19, 2024
; Create a program that asks for your first name, middle name, and family name.
; Then display “Hello, FIRST NAME MIDDLE NAME FAMILY NAME!”

.MODEL small
.STACK 100h
.DATA
	MAXIMUM_STRING_LENGTH EQU 1000
	fname db MAXIMUM_STRING_LENGTH DUP (?)
	mname db MAXIMUM_STRING_LENGTH DUP (?)
	lname db MAXIMUM_STRING_LENGTH DUP (?)
	regis db 'REGISTRATION FORM',13,10,'$'
	fprompt db 'Enter First Name: $'
	flen dw 0
	mprompt db 'Enter Middle Name: $'
	mlen dw 0
	lprompt db 'Enter Family Name: $'
	llen dw 0
	msg db 13,10,'Hello, $'
	msg1 db '!',13,10,'$'
    
.CODE
ProgramStart:
	mov ax, @data
	mov ds, ax 	 

	mov dx, OFFSET regis
	mov ah, 9
	int 21h

	; get firstname
    	mov dx, OFFSET fprompt
    	mov ah, 9
    	int 21h

    	mov ah, 3fh	 
    	mov bx, 0 	 
    	mov cx, MAXIMUM_STRING_LENGTH  

    	mov dx, OFFSET fname  
    	int 21h            	 

    	and ax, ax  ; were any characters read?
    	jz fdone 	; no, so you're done
    	mov cx, ax  ; put string length in CX where you can use it as a counter

    	;push cx 	; save the string length
    	dec cx
    	mov [flen], cx
    	mov bx, OFFSET fname

   	 
	fdone:
	; get middlename
    	mov dx, OFFSET mprompt
    	mov ah, 9
    	int 21h

    	mov ah, 3fh	 
    	mov bx, 0 	 
    	mov cx, MAXIMUM_STRING_LENGTH  

    	mov dx, OFFSET mname  
    	int 21h            	 

    	and ax, ax  ; were any characters read?
    	jz mdone 	; no, so you're done
    	mov cx, ax  ; put string length in CX where you can use it as a counter

    	;push cx 	; save the string length
    	dec cx
    	mov [mlen], cx
    	mov bx, OFFSET mname

	mdone:

	; get lastname
    	mov dx, OFFSET lprompt
    	mov ah, 9
    	int 21h

    	mov ah, 3fh	 
    	mov bx, 0 	 
    	mov cx, MAXIMUM_STRING_LENGTH  

    	mov dx, OFFSET lname  
    	int 21h            	 

    	and ax, ax  ; were any characters read?
    	jz ldone 	; no, so you're done
    	mov cx, ax  ; put string length in CX where you can use it as a counter

    	;push cx 	; save the string length
    	dec cx
    	mov [llen], cx
    	mov bx, OFFSET lname
	ldone:

	mov ah, 09h
	lea dx, msg
	int 21h

	lea si, fname
	call remove_newline

	mov cx, [flen]  	; get back the string length
	mov ah, 40h ; DOS write from handle function
	mov bx, 1   ; standard output handle
	mov dx, OFFSET fname
	int 21h

	lea si, mname
	call remove_newline

	mov cx, [mlen] 	; get back the string length
	mov ah, 40h ; DOS write from handle function
	mov bx, 1   ; standard output handle
	mov dx, OFFSET mname
	int 21h

	lea si, lname
	call remove_newline

	mov cx, [llen]  	; get back the string length
	mov ah, 40h ; DOS write from handle function
	mov bx, 1   ; standard output handle
	mov dx, OFFSET lname
	int 21h

	mov ah, 09h
	lea dx, msg1
	int 21h

Done:
	mov ah, 4Ch ; DOS terminate program function
	int 21h 	; terminate the program

remove_newline proc
	mov ah, 0
	next_char:
    	mov bl, [si]
    	cmp bl, '$'
    	je rn_done

    	mov al, 13d
    	cmp bl, al
    	jne check_nl
    	mov [si], ah
    	jmp skip_replace
	check_nl:
    	mov al, 0Ah
    	cmp bl, al
    	jne skip_replace
    	mov [si], ah

	skip_replace:
    	inc si
    	jmp next_char

rn_done:
	ret
remove_newline endp
END ProgramStart
