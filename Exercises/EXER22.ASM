; Filename: EXER22.ASM
; Programmer Name: FELISA MELANIE FAY G. BASCUG
; Date: September 19, 2024
; Create a College Enrollment Form. Get user input. Display a summary of the inputs.
; Include the necessary documentation as comments in your code.

.MODEL small
.STACK 100h
.DATA
	MAXIMUM_STRING_LENGTH EQU 1000
	prompt0 db "Student ID Number: $"
	input0 db MAXIMUM_STRING_LENGTH DUP (?)
	len0 dw 0
	prompt1 db "First Name: $"
	input1 db MAXIMUM_STRING_LENGTH DUP (?)
	len1 dw 0
	prompt2 db "Middle Name: $"
	input2 db MAXIMUM_STRING_LENGTH DUP (?)
	len2 dw 0
	prompt3 db "Last Name: $"
	input3 db MAXIMUM_STRING_LENGTH DUP (?)
	len3 dw 0
	prompt4 db "Address: $"
	input4 db MAXIMUM_STRING_LENGTH DUP (?)
	len4 dw 0
	prompt5 db "Course: $"
	input5 db MAXIMUM_STRING_LENGTH DUP (?)
	len5 dw 0
	prompt6 db "Year: $"
	input6 db MAXIMUM_STRING_LENGTH DUP (?)
	len6 dw 0
	prompt7 db "Birthday Month: $"
	input7 db MAXIMUM_STRING_LENGTH DUP (?)
	len7 dw 0
	prompt8 db "Birthday Day: $"
	input8 db MAXIMUM_STRING_LENGTH DUP (?)
	len8 dw 0
	prompt9 db "Birthday Year: $"
	input9 db MAXIMUM_STRING_LENGTH DUP (?)
	len9 dw 0
	prompt10 db "Email Address: $"
	input10 db MAXIMUM_STRING_LENGTH DUP (?)
	len10 dw 0
	summary db 10,'SUMMARY',10,'Please check if all information are correct.',10,10,'$'
	header db 10,'Cebu Institute of Technology - University',10,'STUDENT ENROLLMENT FORM',10,10,'Please enter the following information:',10,10,'$'
	footer db 10,'Thank you for enrolling at CIT-U.',10,'Copyright 2024',10,'Programmer: FELISA MELANIE FAY G. BASCUG',10,'$'
.CODE
ProgramStart:
	mov ax, @data
	mov ds, ax  

	;print opening message
	mov dx, OFFSET header
	mov ah, 9
	int 21h

	; get input0:
    	mov dx, OFFSET prompt0
    	mov ah, 9
    	int 21h
    	mov ah, 3fh	 
    	mov bx, 0 	 
    	mov cx, MAXIMUM_STRING_LENGTH  
    	mov dx, OFFSET input0  
    	int 21h            	 
    	and ax, ax  ; were any characters read?
    	jz done0 	; no, so you're done
    	mov cx, ax  ; put string length in CX where you can use it as a counter
    	;push cx 	; save the string length
    	 
    	mov [len0], cx
    	mov bx, OFFSET input0
	done0:
; get input1:
    	mov dx, OFFSET prompt1
    	mov ah, 9
    	int 21h
    	mov ah, 3fh	 
    	mov bx, 0 	 
    	mov cx, MAXIMUM_STRING_LENGTH  
    	mov dx, OFFSET input1  
    	int 21h            	 
    	and ax, ax  ; were any characters read?
    	jz done1 	; no, so you're done
    	mov cx, ax  ; put string length in CX where you can use it as a counter
    	;push cx 	; save the string length
    	 
    	mov [len1], cx
    	mov bx, OFFSET input1
	done1:
; get input2:
    	mov dx, OFFSET prompt2
    	mov ah, 9
    	int 21h
    	mov ah, 3fh	 
    	mov bx, 0 	 
    	mov cx, MAXIMUM_STRING_LENGTH  
    	mov dx, OFFSET input2  
    	int 21h            	 
    	and ax, ax  ; were any characters read?
    	jz done2 	; no, so you're done
    	mov cx, ax  ; put string length in CX where you can use it as a counter
    	;push cx 	; save the string length
    	 
    	mov [len2], cx
    	mov bx, OFFSET input2
	done2:
; get input3:
    	mov dx, OFFSET prompt3
    	mov ah, 9
    	int 21h
    	mov ah, 3fh	 
    	mov bx, 0 	 
    	mov cx, MAXIMUM_STRING_LENGTH  
    	mov dx, OFFSET input3  
    	int 21h            	 
    	and ax, ax  ; were any characters read?
    	jz done3 	; no, so you're done
    	mov cx, ax  ; put string length in CX where you can use it as a counter
    	;push cx 	; save the string length
    	 
    	mov [len3], cx
    	mov bx, OFFSET input3
	done3:
; get input4:
    	mov dx, OFFSET prompt4
    	mov ah, 9
    	int 21h
    	mov ah, 3fh	 
    	mov bx, 0 	 
    	mov cx, MAXIMUM_STRING_LENGTH  
    	mov dx, OFFSET input4  
    	int 21h            	 
    	and ax, ax  ; were any characters read?
    	jz done4 	; no, so you're done
    	mov cx, ax  ; put string length in CX where you can use it as a counter
    	;push cx 	; save the string length
    	 
    	mov [len4], cx
    	mov bx, OFFSET input4
	done4:
; get input5:
    	mov dx, OFFSET prompt5
    	mov ah, 9
    	int 21h
    	mov ah, 3fh	 
    	mov bx, 0 	 
    	mov cx, MAXIMUM_STRING_LENGTH  
    	mov dx, OFFSET input5  
    	int 21h            	 
    	and ax, ax  ; were any characters read?
    	jz done5 	; no, so you're done
    	mov cx, ax  ; put string length in CX where you can use it as a counter
    	;push cx 	; save the string length
    	 
    	mov [len5], cx
    	mov bx, OFFSET input5
	done5:
; get input6:
    	mov dx, OFFSET prompt6
    	mov ah, 9
    	int 21h
    	mov ah, 3fh	 
    	mov bx, 0 	 
    	mov cx, MAXIMUM_STRING_LENGTH  
    	mov dx, OFFSET input6  
    	int 21h            	 
    	and ax, ax  ; were any characters read?
    	jz done6 	; no, so you're done
    	mov cx, ax  ; put string length in CX where you can use it as a counter
    	;push cx 	; save the string length
    	 
    	mov [len6], cx
    	mov bx, OFFSET input6
	done6:
; get input7:
    	mov dx, OFFSET prompt7
    	mov ah, 9
    	int 21h
    	mov ah, 3fh	 
    	mov bx, 0 	 
    	mov cx, MAXIMUM_STRING_LENGTH  
    	mov dx, OFFSET input7  
    	int 21h            	 
    	and ax, ax  ; were any characters read?
    	jz done7 	; no, so you're done
    	mov cx, ax  ; put string length in CX where you can use it as a counter
    	;push cx 	; save the string length
    	 
    	mov [len7], cx
    	mov bx, OFFSET input7
	done7:
; get input8:
    	mov dx, OFFSET prompt8
    	mov ah, 9
    	int 21h
    	mov ah, 3fh	 
    	mov bx, 0 	 
    	mov cx, MAXIMUM_STRING_LENGTH  
    	mov dx, OFFSET input8  
    	int 21h            	 
    	and ax, ax  ; were any characters read?
    	jz done8 	; no, so you're done
    	mov cx, ax  ; put string length in CX where you can use it as a counter
    	;push cx 	; save the string length
    	 
    	mov [len8], cx
    	mov bx, OFFSET input8
	done8:
; get input9:
    	mov dx, OFFSET prompt9
    	mov ah, 9
    	int 21h
    	mov ah, 3fh	 
    	mov bx, 0 	 
    	mov cx, MAXIMUM_STRING_LENGTH  
    	mov dx, OFFSET input9  
    	int 21h            	 
    	and ax, ax  ; were any characters read?
    	jz done9 	; no, so you're done
    	mov cx, ax  ; put string length in CX where you can use it as a counter
    	;push cx 	; save the string length
    	 
    	mov [len9], cx
    	mov bx, OFFSET input9
	done9:
; get input10:
    	mov dx, OFFSET prompt10
    	mov ah, 9
    	int 21h
    	mov ah, 3fh	 
    	mov bx, 0 	 
    	mov cx, MAXIMUM_STRING_LENGTH  
    	mov dx, OFFSET input10  
    	int 21h            	 
    	and ax, ax  ; were any characters read?
    	jz done10 	; no, so you're done
    	mov cx, ax  ; put string length in CX where you can use it as a counter
    	;push cx 	; save the string length
    	 
    	mov [len10], cx
    	mov bx, OFFSET input10
	done10:

;print summary message
	mov dx, OFFSET summary
	mov ah, 9
	int 21h

;print data #0
    	mov dx, OFFSET prompt0
    	mov ah, 9
    	int 21h    
    	mov cx, [len0]  	; get back the string length
    	mov ah, 40h ; DOS write from handle function
    	mov bx, 1   ; standard output handle
    	mov dx, OFFSET input0
    	int 21h
     	 
;print data #1
    	mov dx, OFFSET prompt1
    	mov ah, 9
    	int 21h    
    	mov cx, [len1]  	; get back the string length
    	mov ah, 40h ; DOS write from handle function
    	mov bx, 1   ; standard output handle
    	mov dx, OFFSET input1
    	int 21h
     	 
;print data #2
    	mov dx, OFFSET prompt2
    	mov ah, 9
    	int 21h    
    	mov cx, [len2]  	; get back the string length
    	mov ah, 40h ; DOS write from handle function
    	mov bx, 1   ; standard output handle
    	mov dx, OFFSET input2
    	int 21h
     	 
;print data #3
    	mov dx, OFFSET prompt3
    	mov ah, 9
    	int 21h    
    	mov cx, [len3]  	; get back the string length
    	mov ah, 40h ; DOS write from handle function
    	mov bx, 1   ; standard output handle
    	mov dx, OFFSET input3
    	int 21h
     	 
;print data #4
    	mov dx, OFFSET prompt4
    	mov ah, 9
    	int 21h    
    	mov cx, [len4]  	; get back the string length
    	mov ah, 40h ; DOS write from handle function
    	mov bx, 1   ; standard output handle
    	mov dx, OFFSET input4
    	int 21h
     	 
;print data #5
    	mov dx, OFFSET prompt5
    	mov ah, 9
    	int 21h    
    	mov cx, [len5]  	; get back the string length
    	mov ah, 40h ; DOS write from handle function
    	mov bx, 1   ; standard output handle
    	mov dx, OFFSET input5
    	int 21h
     	 
;print data #6
    	mov dx, OFFSET prompt6
    	mov ah, 9
    	int 21h    
    	mov cx, [len6]  	; get back the string length
    	mov ah, 40h ; DOS write from handle function
    	mov bx, 1   ; standard output handle
    	mov dx, OFFSET input6
    	int 21h
     	 
;print data #7
    	mov dx, OFFSET prompt7
    	mov ah, 9
    	int 21h    
    	mov cx, [len7]  	; get back the string length
    	mov ah, 40h ; DOS write from handle function
    	mov bx, 1   ; standard output handle
    	mov dx, OFFSET input7
    	int 21h
     	 
;print data #8
    	mov dx, OFFSET prompt8
    	mov ah, 9
    	int 21h    
    	mov cx, [len8]  	; get back the string length
    	mov ah, 40h ; DOS write from handle function
    	mov bx, 1   ; standard output handle
    	mov dx, OFFSET input8
    	int 21h
     	 
;print data #9
    	mov dx, OFFSET prompt9
    	mov ah, 9
    	int 21h    
    	mov cx, [len9]  	; get back the string length
    	mov ah, 40h ; DOS write from handle function
    	mov bx, 1   ; standard output handle
    	mov dx, OFFSET input9
    	int 21h
     	 
;print data #10
    	mov dx, OFFSET prompt10
    	mov ah, 9
    	int 21h    
    	mov cx, [len10]  	; get back the string length
    	mov ah, 40h ; DOS write from handle function
    	mov bx, 1   ; standard output handle
    	mov dx, OFFSET input10
    	int 21h
    
	;print closing message
	mov dx, OFFSET footer
	mov ah, 9
	int 21h

	mov ah, 4Ch ; DOS terminate program function
	int 21h 	; terminate the program
END ProgramStart
