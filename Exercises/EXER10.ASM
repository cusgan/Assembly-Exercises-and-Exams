; Filename: EXER10.ASM
; College Enrollment Form
; Felisa Melanie Fay G. Bascug
; Date: September 5, 2024

.model small
.stack 100
.data
    head1 db	' Cebu Institute of Technology - University                                  	$'
	head2 db	' COLLEGE ENROLLMENT FORM                                                    	$'
	head3 db	' Complete the registration form with attention to detail.                   	',10,'$'

	flname1 db  ' Full Name:        	$'
	flname2 db  '                   	First Name        	Last Name                      	$'

	addr1 db	' Address:          	$'
	addr2 db	'                   	Street Address                                       	$'
	addr3 db	'                   	City              	State/Province                 	$'

	bday1 db	' Birth Date:       	',219,219,219,219,219,219,219,219,219,219,219,219,219,219,'  ',219,219,219,219,219,219,219,219,219,219,219,219,'  ',219,219,219,219,219,219,219,219,219,219,219,219,'           	','$'
	bday2 db	'                   	Month       	Day       	Year                   	$'

	gender db   ' Gender:           	',176,176,' Male     	',176,176,' Female 	',176,176,' N/A                 	$'
	;         	Gender:           	██ Male     	██ Female 	██ N/A                 	$'

	stno1 db	' Student Number:   	$'
	stno2 db	'                   	Phone Number                                         	$'

	stemail1 db ' Student Email:    	$'
	stemail2 db '                   	example@example.com                                  	$'

	company db  ' Company:          	$'

	courses1 db ' Courses:          	',176,176,' English 101  ',176,176,' Creative Writing 1  ',176,176,' History 101	$'
	courses2 db '                   	',177,177,' English 102  ',177,177,' Creative Writing 2  ',177,177,' History 102	$'
	courses3 db '                   	',176,176,' Math 101 	',176,176,' Math 102        	',176,176,' Windows 8  	$'

	cmt1 db 	' Additional Comments:  $'

	foot1 db	'                                                    	Signature           	$'
	foot2 db	'                                                    	',219,219,219,219,219,219,219,219,219,219,219,219,'        	$'
	foot3 db	' Date: ',219,219,219,219,219,219,219,219,219,219,'                                   	(Your Name)         	$'
 
	buffer db   '                   	$'
	onespace db 219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,'           	','$'
	twospace db 219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,'  ',219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,'           	','$'

.code

main proc
	mov ax, @data
	mov ds, ax

; HEADER
	mov ah, 09h
	mov bl, 4Eh ; bg fg
	mov cx, 80 ; no. of chars to change
	int 10h
    
	mov ah, 09h
	lea dx, head1
	int 21h
    
	mov ah, 09h
	mov bl, 1Fh ; bg fg
	mov cx, 80 ; no. of chars to change
	int 10h

	mov ah, 09h
	lea dx, head2
	int 21h

	mov ah, 09h
	mov bl, 1Fh ; bg fg
	mov cx, 80 ; no. of chars to change
	int 10h

	mov ah, 09h
	lea dx, head3
	int 21h

; FULL NAME
	mov ah, 09h
	lea dx, flname1
	int 21h

	mov ah, 09h
	lea dx, twospace
	int 21h
    
	mov ah, 09h
	lea dx, flname2
	int 21h
    
; ADDRESS
	mov ah, 09h
	lea dx, addr1
	int 21h

	mov ah, 09h
	lea dx, onespace
	int 21h
    
	mov ah, 09h
	lea dx, addr2
	int 21h
    
	mov ah, 09h
	lea dx, buffer
	int 21h
    
	mov ah, 09h
	lea dx, twospace
	int 21h
    
	mov ah, 09h
	lea dx, addr3
	int 21h
    
; BDAY
	mov ah, 09h
	lea dx, bday1
	int 21h
    
	mov ah, 09h
	lea dx, bday2
	int 21h
    
; GENDER
	mov ah, 09h
	lea dx, gender
	int 21h
    
; STUDENT NUMBER  
	mov ah, 09h
	lea dx, stno1
	int 21h
    
	mov ah, 09h
	lea dx, onespace
	int 21h
    
	mov ah, 09h
	lea dx, stno2
	int 21h

; STUDENT EMAIL
	mov ah, 09h
	lea dx, stemail1
	int 21h
    
	mov ah, 09h
	lea dx, onespace
	int 21h
    
	mov ah, 09h
	lea dx, stemail2
	int 21h

; COMPANY
	mov ah, 09h
	lea dx, company
	int 21h
    
	mov ah, 09h
	lea dx, onespace
	int 21h
    
; COURSES
	mov ah, 09h
	lea dx, courses1
	int 21h
    
	mov ah, 09h
	lea dx, courses2
	int 21h
    
	mov ah, 09h
	lea dx, courses3
	int 21h

; COMMENT
	mov ah, 09h
	lea dx, cmt1
	int 21h
    
	mov ah, 09h
	lea dx, onespace
	int 21h
    
; FOOTER
	mov ah, 09h
	lea dx, foot1
	int 21h
    
	mov ah, 09h
	lea dx, foot2
	int 21h
    
	mov ah, 09h
	lea dx, foot3
	int 21h

	mov ah,02h
	mov cl,0Ah ; newline
	mov dl,cl
	int 21h
    
	mov ah, 09h
	mov bl, 11h ; bg fg
	mov cx, 80 ; no. of chars to change
	int 10h

mov ah, 4Ch
int 21h

main endp
end main
