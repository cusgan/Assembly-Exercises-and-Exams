; Filename: EXAM3.ASM
; CS243 Lab Hands-on Exam No. 3
; First Semester SY 2024-2025
; Student Name: FELISA MELANIE FAY G. BASCUG
; Date Finished: October 3, 2024

.MODEL small
.STACK 400h
.DATA  	 
	max_len EQU 1000
    
	title1 db "VOTER'S REGISTRATION FORM",10,'$'
	title2 db "CREATED BY: FELISA MELANIE FAY G. BASCUG",10,'$'
	title3 db 'Date: October 3, 2024',10,10,"$"
	prompt db 'Please enter the following data:',10,10,'$'

	MAX_STR_LEN equ 32
	inbf db  MAX_STR_LEN,?,MAX_STR_LEN dup('$')
	i00 db MAX_STR_LEN dup (?)
	i01 db MAX_STR_LEN dup (?)
	i02 db MAX_STR_LEN dup (?)
	i03 db MAX_STR_LEN dup (?)
	i04 db MAX_STR_LEN dup (?)
	i05 db MAX_STR_LEN dup (?)
	i06 db MAX_STR_LEN dup (?)
	i07 db MAX_STR_LEN dup (?)
	i08 db MAX_STR_LEN dup (?)
	i09 db MAX_STR_LEN dup (?)
	i10 db MAX_STR_LEN dup (?)
	i11 db MAX_STR_LEN dup (?)
	i12 db MAX_STR_LEN dup (?)
	i13 db MAX_STR_LEN dup (?)
	i14 db MAX_STR_LEN dup (?)
	i15 db MAX_STR_LEN dup (?)
	i16 db MAX_STR_LEN dup (?)
	i17 db MAX_STR_LEN dup (?)
	i18 db MAX_STR_LEN dup (?)
	i19 db MAX_STR_LEN dup (?)
	i20 db MAX_STR_LEN dup (?)

	p00 db 10,'First Name: $'
	p01 db 10,'Middle Name: $'
	p02 db 10,'Family Name: $'
	p03 db 10,'Gender: $'
	p04 db 10,'Birthday',10,'  Month: $'
	p05 db 10,'  Day: $'
	p06 db 10,'  Year: $'
	p07 db 10,'Address',10,'  House Number: $'
	p08 db 10,'  Street: $'
	p09 db 10,'  Barangay: $'
	p10 db 10,'  City: $'
	p11 db 10,'  Province: $'
	p12 db 10,'Educational Background',10,'  Elementary',10,'	Name of School: $'
	p13 db 10,'	Year Graduated: $'
	p14 db 10,'  Junior High School',10,'	Name of School: $'
	p15 db 10,'	Year Graduated: $'
	p16 db 10,'  Senior High School',10,'	Name of School: $'
	p17 db 10,'	Year Graduated: $'
	p18 db 10,'  College',10,'	Name of School: $'
	p19 db 10,'	Course: $'
	p20 db 10,'	Year Graduated: $'

	summary db 10,10,'SUMMARY OF INFORMATION',10,'$'
	summary1 db 'Please verify if all entries are correct.',10,10,'$'

	vote db 'Vote wisely!',10,'$'
	ty db 'Thank you for registering.$'

.CODE
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

ProgramStart:
	mov ax, @data
	mov ds, ax   

	mov ah,09h    
	mov bl,60h    
	mov cx,25    
	int 10h

	mov ah, 09h
	lea dx, title1
	int 21h

	mov ah,09h    
	mov bl,20h    
	mov cx,40
	int 10h

	mov ah, 09h
	lea dx, title2
	int 21h
    
	mov ah,09h    
	mov bl,30h    
	mov cx,21    
	int 10h

	mov ah, 09h
	lea dx, title3
	int 21h
	mov ah, 09h
	lea dx, prompt
	int 21h
 
; get inputs
	mov ah, 09h
	lea dx, p00
	int 21h
	lea di, i00
	call string_input

	mov ah, 09h
	lea dx, p01
	int 21h
	lea di, i01
	call string_input

	mov ah, 09h
	lea dx, p02
	int 21h
	lea di, i02
	call string_input

	mov ah, 09h
	lea dx, p03
	int 21h
	lea di, i03
	call string_input

	mov ah, 09h
	lea dx, p04
	int 21h
	lea di, i04
	call string_input

	mov ah, 09h
	lea dx, p05
	int 21h
	lea di, i05
	call string_input

	mov ah, 09h
	lea dx, p06
	int 21h
	lea di, i06
	call string_input

	mov ah, 09h
	lea dx, p07
	int 21h
	lea di, i07
	call string_input

	mov ah, 09h
	lea dx, p08
	int 21h
	lea di, i08
	call string_input

	mov ah, 09h
	lea dx, p09
	int 21h
	lea di, i09
	call string_input

	mov ah, 09h
	lea dx, p10
	int 21h
	lea di, i10
	call string_input

	mov ah, 09h
	lea dx, p11
	int 21h
	lea di, i11
	call string_input

	mov ah, 09h
	lea dx, p12
	int 21h
	lea di, i12
	call string_input

	mov ah, 09h
	lea dx, p13
	int 21h
	lea di, i13
	call string_input

	mov ah, 09h
	lea dx, p14
	int 21h
	lea di, i14
	call string_input

	mov ah, 09h
	lea dx, p15
	int 21h
	lea di, i15
	call string_input

	mov ah, 09h
	lea dx, p16
	int 21h
	lea di, i16
	call string_input

	mov ah, 09h
	lea dx, p17
	int 21h
	lea di, i17
	call string_input

	mov ah, 09h
	lea dx, p18
	int 21h
	lea di, i18
	call string_input

	mov ah, 09h
	lea dx, p19
	int 21h
	lea di, i19
	call string_input

	mov ah, 09h
	lea dx, p20
	int 21h
	lea di, i20
	call string_input

; print summary

	mov ah, 09h
	lea dx, p00
	int 21h
	mov ah, 09h
	lea dx, i00
	int 21h

	mov ah, 09h
	lea dx, p01
	int 21h
	mov ah, 09h
	lea dx, i01
	int 21h

	mov ah, 09h
	lea dx, p02
	int 21h
	mov ah, 09h
	lea dx, i02
	int 21h

	mov ah, 09h
	lea dx, p03
	int 21h
	mov ah, 09h
	lea dx, i03
	int 21h

	mov ah, 09h
	lea dx, p04
	int 21h
	mov ah, 09h
	lea dx, i04
	int 21h

	mov ah, 09h
	lea dx, p05
	int 21h
	mov ah, 09h
	lea dx, i05
	int 21h

	mov ah, 09h
	lea dx, p06
	int 21h
	mov ah, 09h
	lea dx, i06
	int 21h

	mov ah, 09h
	lea dx, p07
	int 21h
	mov ah, 09h
	lea dx, i07
	int 21h

	mov ah, 09h
	lea dx, p08
	int 21h
	mov ah, 09h
	lea dx, i08
	int 21h

	mov ah, 09h
	lea dx, p09
	int 21h
	mov ah, 09h
	lea dx, i09
	int 21h

	mov ah, 09h
	lea dx, p10
	int 21h
	mov ah, 09h
	lea dx, i10
	int 21h

	mov ah, 09h
	lea dx, p11
	int 21h
	mov ah, 09h
	lea dx, i11
	int 21h

	mov ah, 09h
	lea dx, p12
	int 21h
	mov ah, 09h
	lea dx, i12
	int 21h

	mov ah, 09h
	lea dx, p13
	int 21h
	mov ah, 09h
	lea dx, i13
	int 21h

	mov ah, 09h
	lea dx, p14
	int 21h
	mov ah, 09h
	lea dx, i14
	int 21h

	mov ah, 09h
	lea dx, p15
	int 21h
	mov ah, 09h
	lea dx, i15
	int 21h

	mov ah, 09h
	lea dx, p16
	int 21h
	mov ah, 09h
	lea dx, i16
	int 21h

	mov ah, 09h
	lea dx, p17
	int 21h
	mov ah, 09h
	lea dx, i17
	int 21h

	mov ah, 09h
	lea dx, p18
	int 21h
	mov ah, 09h
	lea dx, i18
	int 21h

	mov ah, 09h
	lea dx, p19
	int 21h
	mov ah, 09h
	lea dx, i19
	int 21h

	mov ah, 09h
	lea dx, p20
	int 21h
	mov ah, 09h
	lea dx, i20
	int 21h

call endline
; exit program
	mov ax, 4C00h   	; function to exit program
	int 21h

endline:
	mov ah,02h
	mov cl,0Ah 	; newline
	mov dl,cl
	int 21h
	mov ah,02h
	mov cl,0Ah 	; newline
	mov dl,cl
	int 21h

	mov ah,09h    
	mov bl,11001110b	; blinking, red bg, yellow txt
	mov cx,12    
	int 10h

	mov ah, 09h
	lea dx, vote
	int 21h

	mov ah, 09h
	lea dx, ty
	int 21h

 
	push ax
	push bx  
	mov ah, 02h
	mov dl, 0Ah
	int 21h
	pop bx  
	pop ax  
	ret
 
END ProgramStart
