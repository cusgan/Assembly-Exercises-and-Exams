; Filename: EXER24.ASM
; Programmer Name: BASCUG, FELISA MELANIE FAY G.
; Date: September 19, 2024
; Prelim exam with input

.model small
.stack 160h
.data
	l1  	db "              	Cebu Institute of Technology - University             	$" ; 76
	l2  	db "                   	VEHICLE STICKER APPLICATION FORM                 	$"
	l3  	db "                      	Please fill out form below.                   	$"

	l4  	db " Personnel Type:       	$" ; 27
	l5  	db " Name of Applicant/Driver: $"
	l6  	db " Mobile Number:        	$"
	l7  	db " Vehicle Make(s)/Brand:	$"
	l8  	db " Vehicle Color:        	$"

	l4a 	db "  Vehicle Sticker Type: $" ; 24
	l5a 	db "  ID Number:        	$"
	l6a 	db "  Address:          	$"
	l7a 	db "  Plate Number:     	$"
	l8a 	db "  Vehicle Type:     	$"

	l9  	db "  SUBMIT  $" ; 10
	l10 	db "               	Copyright 2024 BASCUG, FELISA MELANIE FAY G.           	$"
	l11 	db "                                	Thank you!$" ; 46

	v   	db " V $" ; 3
	blankv  db "      	$" ; 10
	blank   db "         	$" ; 13
	blank3  db "   $" ; 3
	padding db "      	$" ; 10

	intro db 'Cebu Institute of Technology - University',10,'VEHICLE STICKER APPLICATION FORM',10,'Please enter the needed information:',10,10,'$'

	MAX_STR_LEN equ 10
	inbf db  MAX_STR_LEN,?,MAX_STR_LEN dup('$')

	i0 db MAX_STR_LEN dup (?)
	i1 db MAX_STR_LEN dup (?)
	i2 db MAX_STR_LEN dup (?)
	i3 db MAX_STR_LEN dup (?)
	i4 db MAX_STR_LEN dup (?)
	i5 db MAX_STR_LEN dup (?)
	i6 db MAX_STR_LEN dup (?)
	i7 db MAX_STR_LEN dup (?)
	i8 db MAX_STR_LEN dup (?)
	i9 db MAX_STR_LEN dup (?)

	q0 db 10,'Personnel Type: $'      	 
	q1 db 10,'Name of Applicant/Driver: $'
	q2 db 10,'Mobile Number: $'      	 
	q3 db 10,'Vehicle Make(s)/Brand: $'   
	q4 db 10,'Vehicle Color: $'      	 
	q5 db 10,'Vehicle Sticker Type: $'
	q6 db 10,'ID Number: $'      	 
	q7 db 10,'Address: $'        	 
	q8 db 10,'Plate Number: $'   	 
	q9 db 10,'Vehicle Type: $'

.code
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
print_num proc far
	xor cx, cx
	mov bx, 10
	pr_i_count:
    	xor dx, dx
    	div bx
    	push dx
    	inc cx
    	test ax, ax
    	jnz pr_i_count
	pr_i_print:
    	pop dx
    	add dl, '0'
    	mov ah, 02h
    	int 21h
    	loop pr_i_print
	retf
print_num endp
space_padding proc far
	mov cx, 1
	count_loop:
    	lodsb
    	cmp al, '$'
    	je count_done
    	inc cx
    	jmp count_loop
	count_done:
	mov ax, 10
	sub ax, cx
	mov cx, ax
	space_pad_loop:
    	mov dl, ' '
    	mov ah, 2
    	int 21h
    	loop space_pad_loop
	retf
space_padding endp
main proc
	mov ax, @data
	mov ds, ax

	mov ah, 09h
	lea dx, intro
	int 21h
    
	mov ah, 09h
	lea dx, q0
	int 21h
	lea di, i0
	call string_input
    
	mov ah, 09h
	lea dx, q1
	int 21h
	lea di, i1
	call string_input

	mov ah, 09h
	lea dx, q2
	int 21h
	lea di, i2
	call string_input

	mov ah, 09h
	lea dx, q3
	int 21h
	lea di, i3
	call string_input

	mov ah, 09h
	lea dx, q4
	int 21h
	lea di, i4
	call string_input

	mov ah, 09h
	lea dx, q5
	int 21h
	lea di, i5
	call string_input

	mov ah, 09h
	lea dx, q6
	int 21h
	lea di, i6
	call string_input

	mov ah, 09h
	lea dx, q7
	int 21h
	lea di, i7
	call string_input

	mov ah, 09h
	lea dx, q8
	int 21h
	lea di, i8
	call string_input

	mov ah, 09h
	lea dx, q9
	int 21h
	lea di, i9
	call string_input
    


; citu
	mov ah,02h
	mov cl,20h 	; space
	mov dl,cl
	int 21h

	mov ah,09h    
	mov bl,77h	; grey
	mov cx,1    
	int 10h

	mov ah,02h
	mov cl,20h 	; space
	mov dl,cl
	int 21h

	mov ah,09h    
	mov bl,4Fh	; red bg, white txt
	mov cx,76    
	int 10h

	mov ah, 09h
	lea dx, l1
	int 21h

	mov ah,09h    
	mov bl,77h	; grey
	mov cx,1    
	int 10h

	mov ah,02h
	mov cl,20h 	; space
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,0Ah 	; newline
	mov dl,cl
	int 21h

; vehicle sticker application
	mov ah,02h
	mov cl,20h 	; space
	mov dl,cl
	int 21h

	mov ah,09h    
	mov bl,77h	; grey
	mov cx,1    
	int 10h

	mov ah,02h
	mov cl,20h 	; space
	mov dl,cl
	int 21h

	mov ah,09h    
	mov bl,4Fh	; red bg, white txt
	mov cx,76    
	int 10h

	mov ah, 09h
	lea dx, l2
	int 21h

	mov ah,09h    
	mov bl,77h	; grey
	mov cx,1    
	int 10h

	mov ah,02h
	mov cl,20h 	; space
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,0Ah 	; newline
	mov dl,cl
	int 21h

; pls fill up
	mov ah,02h
	mov cl,20h 	; space
	mov dl,cl
	int 21h

	mov ah,09h    
	mov bl,77h	; grey
	mov cx,1    
	int 10h

	mov ah,02h
	mov cl,20h 	; space
	mov dl,cl
	int 21h

	mov ah,09h    
	mov bl,11001110b	; blinking, red bg, yellow txt
	mov cx,76    
	int 10h

	mov ah, 09h
	lea dx, l3
	int 21h

	mov ah,09h    
	mov bl,77h	; grey
	mov cx,1    
	int 10h

	mov ah,02h
	mov cl,20h 	; space
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,0Ah 	; newline
	mov dl,cl
	int 21h

; empty
	mov ah,02h
	mov cl,20h 	; space
	mov dl,cl
	int 21h

	mov ah,09h    
	mov bl,77h	; grey
	mov cx,78    
	int 10h

	mov ah,02h
	mov cl,0Ah 	; newline
	mov dl,cl
	int 21h

; row 1
	; col 1
    	mov ah,02h
    	mov cl,20h 	; space
    	mov dl,cl
    	int 21h

    	mov ah,09h    
    	mov bl,70h	; grey bg, black txt
    	mov cx,27    
    	int 10h

    	mov ah, 09h
    	lea dx, l4
    	int 21h

    	mov ah,09h    
    	mov bl,60h	; orange bg, black txt
    	mov cx,10    
    	int 10h

    	mov ah, 09h
    	lea dx, i0
    	int 21h

    	mov si, offset i0 + 1
    	call space_padding

    	mov ah,09h    
    	mov bl,4Fh	; red bg, white txt
    	mov cx,3    
    	int 10h

    	mov ah, 09h
    	lea dx, v
    	int 21h

	; col 2
    	mov ah,09h    
    	mov bl,70h	; grey bg, black txt
    	mov cx,24    
    	int 10h

    	mov ah, 09h
    	lea dx, l4a
    	int 21h

    	mov ah,09h    
    	mov bl,60h	; orange bg, black txt
    	mov cx,10    
    	int 10h

    	mov ah, 09h
    	lea dx, i5
    	int 21h
    	mov si, offset i5 + 1
    	call space_padding
   	 
    	mov ah,09h    
    	mov bl,4Fh	; red bg, white txt
    	mov cx,3    
    	int 10h

    	mov ah, 09h
    	lea dx, v
    	int 21h

    	mov ah,09h    
    	mov bl,77h	; grey
    	mov cx,1    
    	int 10h

    	mov ah,02h
    	mov cl,20h 	; space
    	mov dl,cl
    	int 21h
   	 
    	mov ah,02h
    	mov cl,0Ah 	; newline
    	mov dl,cl
    	int 21h

; empty
	mov ah,02h
	mov cl,20h 	; space
	mov dl,cl
	int 21h

	mov ah,09h    
	mov bl,77h	; grey
	mov cx,78    
	int 10h

	mov ah,02h
	mov cl,0Ah 	; newline
	mov dl,cl
	int 21h

; row 2
	; col 1
    	mov ah,02h
    	mov cl,20h 	; space
    	mov dl,cl
    	int 21h

    	mov ah,09h    
    	mov bl,70h	; grey bg, black txt
    	mov cx,27    
    	int 10h

    	mov ah, 09h
    	lea dx, l5
    	int 21h

    	mov ah,09h    
    	mov bl,60h	; orange bg, black txt
    	mov cx,13    
    	int 10h

    	mov ah, 09h
    	lea dx, i1
    	int 21h
    	mov si, offset i1 + 1
    	call space_padding

    	mov ah, 09h
    	lea dx, blank3
    	int 21h

	; col 2
    	mov ah,09h    
    	mov bl,70h	; grey bg, black txt
    	mov cx,24    
    	int 10h

    	mov ah, 09h
    	lea dx, l5a
    	int 21h

    	mov ah,09h    
    	mov bl,60h	; orange bg, black txt
    	mov cx,13    
    	int 10h

    	mov ah, 09h
    	lea dx, i6
    	int 21h
    	mov si, offset i6 + 1
    	call space_padding

    	mov ah, 09h
    	lea dx, blank3
    	int 21h

    	mov ah,09h    
    	mov bl,77h	; grey
    	mov cx,1    
    	int 10h

    	mov ah,02h
    	mov cl,20h 	; space
    	mov dl,cl
    	int 21h
   	 
    	mov ah,02h
    	mov cl,0Ah 	; newline
    	mov dl,cl
    	int 21h

; empty
	mov ah,02h
	mov cl,20h 	; space
	mov dl,cl
	int 21h

	mov ah,09h    
	mov bl,77h	; grey
	mov cx,78    
	int 10h

	mov ah,02h
	mov cl,0Ah 	; newline
	mov dl,cl
	int 21h

; row 3
	; col 1
    	mov ah,02h
    	mov cl,20h 	; space
    	mov dl,cl
    	int 21h

    	mov ah,09h    
    	mov bl,70h	; grey bg, black txt
    	mov cx,27    
    	int 10h

    	mov ah, 09h
    	lea dx, l6
    	int 21h

    	mov ah,09h    
    	mov bl,60h	; orange bg, black txt
    	mov cx,13    
    	int 10h

    	mov ah, 09h
    	lea dx, i2
    	int 21h
    	mov si, offset i2 + 1
    	call space_padding

    	mov ah, 09h
    	lea dx, blank3
    	int 21h

	; col 2
    	mov ah,09h    
    	mov bl,70h	; grey bg, black txt
    	mov cx,24    
    	int 10h

    	mov ah, 09h
    	lea dx, l6a
    	int 21h

    	mov ah,09h    
    	mov bl,60h	; orange bg, black txt
    	mov cx,13    
    	int 10h

    	mov ah, 09h
    	lea dx, i7
    	int 21h
    	mov si, offset i7 + 1
    	call space_padding

    	mov ah, 09h
    	lea dx, blank3
    	int 21h

    	mov ah,09h    
    	mov bl,77h	; grey
    	mov cx,1    
    	int 10h

    	mov ah,02h
    	mov cl,20h 	; space
    	mov dl,cl
    	int 21h
   	 
    	mov ah,02h
    	mov cl,0Ah 	; newline
    	mov dl,cl
    	int 21h

; empty
	mov ah,02h
	mov cl,20h 	; space
	mov dl,cl
	int 21h

	mov ah,09h    
	mov bl,77h	; grey
	mov cx,78    
	int 10h

	mov ah,02h
	mov cl,0Ah 	; newline
	mov dl,cl
	int 21h

; row 4
	; col 1
    	mov ah,02h
    	mov cl,20h 	; space
    	mov dl,cl
    	int 21h

    	mov ah,09h    
    	mov bl,70h	; grey bg, black txt
    	mov cx,27    
    	int 10h

    	mov ah, 09h
    	lea dx, l7
    	int 21h

    	mov ah,09h    
    	mov bl,60h	; orange bg, black txt
    	mov cx,13    
    	int 10h

    	mov ah, 09h
    	lea dx, i3
    	int 21h
    	mov si, offset i3 + 1
    	call space_padding

    	mov ah, 09h
    	lea dx, blank3
    	int 21h

	; col 2
    	mov ah,09h    
    	mov bl,70h	; grey bg, black txt
    	mov cx,24    
    	int 10h

    	mov ah, 09h
    	lea dx, l7a
    	int 21h

    	mov ah,09h    
    	mov bl,60h	; orange bg, black txt
    	mov cx,13    
    	int 10h

    	mov ah, 09h
    	lea dx, i8
    	int 21h
    	mov si, offset i8 + 1
    	call space_padding

    	mov ah, 09h
    	lea dx, blank3
    	int 21h

    	mov ah,09h    
    	mov bl,77h	; grey
    	mov cx,1    
    	int 10h

    	mov ah,02h
    	mov cl,20h 	; space
    	mov dl,cl
    	int 21h
   	 
    	mov ah,02h
    	mov cl,0Ah 	; newline
    	mov dl,cl
    	int 21h

; empty
	mov ah,02h
	mov cl,20h 	; space
	mov dl,cl
	int 21h

	mov ah,09h    
	mov bl,77h	; grey
	mov cx,78    
	int 10h

	mov ah,02h
	mov cl,0Ah 	; newline
	mov dl,cl
	int 21h

; row 5
	; col 1
    	mov ah,02h
    	mov cl,20h 	; space
    	mov dl,cl
    	int 21h

    	mov ah,09h    
    	mov bl,70h	; grey bg, black txt
    	mov cx,27    
    	int 10h

    	mov ah, 09h
    	lea dx, l8
    	int 21h

    	mov ah,09h    
    	mov bl,60h	; orange bg, black txt
    	mov cx,10    
    	int 10h

    	mov ah, 09h
    	lea dx, i4
    	int 21h
    	mov si, offset i4 + 1
    	call space_padding

    	mov ah,09h    
    	mov bl,4Fh	; red bg, white txt
    	mov cx,3    
    	int 10h

    	mov ah, 09h
    	lea dx, v
    	int 21h

	; col 2
    	mov ah,09h    
    	mov bl,70h	; grey bg, black txt
    	mov cx,24    
    	int 10h

    	mov ah, 09h
    	lea dx, l8a
    	int 21h

    	mov ah,09h    
    	mov bl,60h	; orange bg, black txt
    	mov cx,10    
    	int 10h

    	mov ah, 09h
    	lea dx, i9
    	int 21h
    	mov si, offset i9 + 1
    	call space_padding

    	mov ah,09h    
    	mov bl,4Fh	; red bg, white txt
    	mov cx,3    
    	int 10h

    	mov ah, 09h
    	lea dx, v
    	int 21h

    	mov ah,09h    
    	mov bl,77h	; grey
    	mov cx,1    
    	int 10h

    	mov ah,02h
    	mov cl,20h 	; space
    	mov dl,cl
    	int 21h
   	 
    	mov ah,02h
    	mov cl,0Ah 	; newline
    	mov dl,cl
    	int 21h

; empty
	mov ah,02h
	mov cl,20h 	; space
	mov dl,cl
	int 21h

	mov ah,09h    
	mov bl,77h	; grey
	mov cx,78    
	int 10h

	mov ah,02h
	mov cl,0Ah 	; newline
	mov dl,cl
	int 21h

; padding
	mov ah,02h
	mov cl,20h 	; space
	mov dl,cl
	int 21h

	mov ah,09h    
	mov bl,77h	; grey
	mov cx,34    
	int 10h

	mov ah, 09h
	lea dx, blank
	int 21h
	mov ah, 09h
	lea dx, blankv
	int 21h
	mov ah, 09h
	lea dx, blankv
	int 21h

	mov ah,09h    
	mov bl,4Eh	; red bg yellow txt
	mov cx,10
	int 10h

	mov ah, 09h
	lea dx, padding
	int 21h

	mov ah,09h    
	mov bl,77h	; grey
	mov cx,35    
	int 10h

	mov ah,02h
	mov cl,0Ah 	; newline
	mov dl,cl
	int 21h

; submit
	mov ah,02h
	mov cl,20h 	; space
	mov dl,cl
	int 21h

	mov ah,09h    
	mov bl,77h	; grey
	mov cx,34    
	int 10h

	mov ah, 09h
	lea dx, blank
	int 21h
	mov ah, 09h
	lea dx, blankv
	int 21h
	mov ah, 09h
	lea dx, blankv
	int 21h

	mov ah,09h    
	mov bl,4Eh	; red bg yellow txt
	mov cx,10    
	int 10h

	mov ah, 09h
	lea dx, l9
	int 21h

	mov ah,09h    
	mov bl,77h	; grey
	mov cx,35
	int 10h

	mov ah,02h
	mov cl,0Ah 	; newline
	mov dl,cl
	int 21h

; padding
	mov ah,02h
	mov cl,20h 	; space
	mov dl,cl
	int 21h

	mov ah,09h    
	mov bl,77h	; grey
	mov cx,34    
	int 10h

	mov ah, 09h
	lea dx, blank
	int 21h
	mov ah, 09h
	lea dx, blankv
	int 21h
	mov ah, 09h
	lea dx, blankv
	int 21h

	mov ah,09h    
	mov bl,4Eh	; red bg yellow txt
	mov cx,10
	int 10h

	mov ah, 09h
	lea dx, padding
	int 21h

	mov ah,09h    
	mov bl,77h	; grey
	mov cx,35    
	int 10h

	mov ah,02h
	mov cl,0Ah 	; newline
	mov dl,cl
	int 21h

; empty
	mov ah,02h
	mov cl,20h 	; space
	mov dl,cl
	int 21h

	mov ah,09h    
	mov bl,77h	; grey
	mov cx,78    
	int 10h

	mov ah,02h
	mov cl,0Ah 	; newline
	mov dl,cl
	int 21h

; copyright
	mov ah,02h
	mov cl,20h 	; space
	mov dl,cl
	int 21h

	mov ah,09h    
	mov bl,70h	; grey bg black txt
	mov cx,78    
	int 10h

	mov ah, 09h
	lea dx, l10
	int 21h

	mov ah,02h
	mov cl,0Ah 	; newline
	mov dl,cl
	int 21h

; empty
	mov ah,02h
	mov cl,20h 	; space
	mov dl,cl
	int 21h

	mov ah,09h    
	mov bl,77h	; grey
	mov cx,78    
	int 10h

	mov ah,02h
	mov cl,0Ah 	; newline
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,0Ah 	; newline
	mov dl,cl
	int 21h

; thank you
	mov ah,09h    
	mov bl,8Eh	; blinking yellow text
	mov cx,46    
	int 10h

	mov ah, 09h
	lea dx, l11
	int 21h

mov ah, 4Ch
int 21h

main endp
end main
