; Hands-On Exam
; Felisa Melanie Fay G. Bascug
; Date: September 5, 2024

.MODEL SMALL
.STACK 100
.DATA  	     
    header DB 'MULTIPLICATION TABLE',10,13,'Created by: FELISA MELANIE FAY G. BASCUG',10,13,'Date: September 5, 2024',10,13,'$'

.CODE
START:
    mov ax, @data
    mov ds, ax

    mov ah, 09h
    lea dx, header
    int 21h

	mov ah,02h 
	mov cl,0Ah 	; newline
	mov dl,cl 
	int 21h 

	mov ah,09h	; changing text color
	mov bl,4Fh	; 
	mov cx,56	; no. of characters to change
	int 10h

; header

mov ah,02h
mov cl,124
mov dl,cl
int 21h

mov ah,02h
mov cl,32
mov dl,cl
int 21h

mov ah,02h
mov cl,88
mov dl,cl
int 21h

mov ah,02h
mov cl,32
mov dl,cl
int 21h

mov ah,02h
mov cl,32
mov dl,cl
int 21h

mov ah,02h
mov cl,124
mov dl,cl
int 21h

mov ah,02h
mov cl,32
mov dl,cl
int 21h

mov ah,02h
mov cl,49
mov dl,cl
int 21h

mov ah,02h
mov cl,32
mov dl,cl
int 21h

mov ah,02h
mov cl,32
mov dl,cl
int 21h

mov ah,02h
mov cl,124
mov dl,cl
int 21h

mov ah,02h
mov cl,32
mov dl,cl
int 21h

mov ah,02h
mov cl,50
mov dl,cl
int 21h

mov ah,02h
mov cl,32
mov dl,cl
int 21h

mov ah,02h
mov cl,32
mov dl,cl
int 21h

mov ah,02h
mov cl,124
mov dl,cl
int 21h

mov ah,02h
mov cl,32
mov dl,cl
int 21h

mov ah,02h
mov cl,51
mov dl,cl
int 21h

mov ah,02h
mov cl,32
mov dl,cl
int 21h

mov ah,02h
mov cl,32
mov dl,cl
int 21h

mov ah,02h
mov cl,124
mov dl,cl
int 21h

mov ah,02h
mov cl,32
mov dl,cl
int 21h

mov ah,02h
mov cl,52
mov dl,cl
int 21h

mov ah,02h
mov cl,32
mov dl,cl
int 21h

mov ah,02h
mov cl,32
mov dl,cl
int 21h

mov ah,02h
mov cl,124
mov dl,cl
int 21h

mov ah,02h
mov cl,32
mov dl,cl
int 21h

mov ah,02h
mov cl,53
mov dl,cl
int 21h

mov ah,02h
mov cl,32
mov dl,cl
int 21h

mov ah,02h
mov cl,32
mov dl,cl
int 21h

mov ah,02h
mov cl,124
mov dl,cl
int 21h

mov ah,02h
mov cl,32
mov dl,cl
int 21h

mov ah,02h
mov cl,54
mov dl,cl
int 21h

mov ah,02h
mov cl,32
mov dl,cl
int 21h

mov ah,02h
mov cl,32
mov dl,cl
int 21h

mov ah,02h
mov cl,124
mov dl,cl
int 21h

mov ah,02h
mov cl,32
mov dl,cl
int 21h

mov ah,02h
mov cl,55
mov dl,cl
int 21h

mov ah,02h
mov cl,32
mov dl,cl
int 21h

mov ah,02h
mov cl,32
mov dl,cl
int 21h

mov ah,02h
mov cl,124
mov dl,cl
int 21h

mov ah,02h
mov cl,32
mov dl,cl
int 21h

mov ah,02h
mov cl,56
mov dl,cl
int 21h

mov ah,02h
mov cl,32
mov dl,cl
int 21h

mov ah,02h
mov cl,32
mov dl,cl
int 21h

mov ah,02h
mov cl,124
mov dl,cl
int 21h

mov ah,02h
mov cl,32
mov dl,cl
int 21h

mov ah,02h
mov cl,57
mov dl,cl
int 21h

mov ah,02h
mov cl,32
mov dl,cl
int 21h

mov ah,02h
mov cl,32
mov dl,cl
int 21h

mov ah,02h
mov cl,124
mov dl,cl
int 21h

mov ah,02h
mov cl,32
mov dl,cl
int 21h

mov ah,02h
mov cl,49
mov dl,cl
int 21h

mov ah,02h
mov cl,48
mov dl,cl
int 21h

mov ah,02h
mov cl,32
mov dl,cl
int 21h

mov ah,02h
mov cl,124
mov dl,cl
int 21h

	mov ah,02h 
	mov cl,0Ah 	; newline
	mov dl,cl 
	int 21h 

	mov ah,09h	; changing text color
	mov bl,4Fh	; 
	mov cx,56	; no. of characters to change
	int 10h

mov ah,02h
mov cl,45
mov dl,cl
int 21h

mov ah,02h
mov cl,45
mov dl,cl
int 21h

mov ah,02h
mov cl,45
mov dl,cl
int 21h

mov ah,02h
mov cl,45
mov dl,cl
int 21h

mov ah,02h
mov cl,45
mov dl,cl
int 21h

mov ah,02h
mov cl,45
mov dl,cl
int 21h

mov ah,02h
mov cl,45
mov dl,cl
int 21h

mov ah,02h
mov cl,45
mov dl,cl
int 21h

mov ah,02h
mov cl,45
mov dl,cl
int 21h

mov ah,02h
mov cl,45
mov dl,cl
int 21h

mov ah,02h
mov cl,45
mov dl,cl
int 21h

mov ah,02h
mov cl,45
mov dl,cl
int 21h

mov ah,02h
mov cl,45
mov dl,cl
int 21h

mov ah,02h
mov cl,45
mov dl,cl
int 21h

mov ah,02h
mov cl,45
mov dl,cl
int 21h

mov ah,02h
mov cl,45
mov dl,cl
int 21h

mov ah,02h
mov cl,45
mov dl,cl
int 21h

mov ah,02h
mov cl,45
mov dl,cl
int 21h

mov ah,02h
mov cl,45
mov dl,cl
int 21h

mov ah,02h
mov cl,45
mov dl,cl
int 21h

mov ah,02h
mov cl,45
mov dl,cl
int 21h

mov ah,02h
mov cl,45
mov dl,cl
int 21h

mov ah,02h
mov cl,45
mov dl,cl
int 21h

mov ah,02h
mov cl,45
mov dl,cl
int 21h

mov ah,02h
mov cl,45
mov dl,cl
int 21h

mov ah,02h
mov cl,45
mov dl,cl
int 21h

mov ah,02h
mov cl,45
mov dl,cl
int 21h

mov ah,02h
mov cl,45
mov dl,cl
int 21h

mov ah,02h
mov cl,45
mov dl,cl
int 21h

mov ah,02h
mov cl,45
mov dl,cl
int 21h

mov ah,02h
mov cl,45
mov dl,cl
int 21h

mov ah,02h
mov cl,45
mov dl,cl
int 21h

mov ah,02h
mov cl,45
mov dl,cl
int 21h

mov ah,02h
mov cl,45
mov dl,cl
int 21h

mov ah,02h
mov cl,45
mov dl,cl
int 21h

mov ah,02h
mov cl,45
mov dl,cl
int 21h

mov ah,02h
mov cl,45
mov dl,cl
int 21h

mov ah,02h
mov cl,45
mov dl,cl
int 21h

mov ah,02h
mov cl,45
mov dl,cl
int 21h

mov ah,02h
mov cl,45
mov dl,cl
int 21h

mov ah,02h
mov cl,45
mov dl,cl
int 21h

mov ah,02h
mov cl,45
mov dl,cl
int 21h

mov ah,02h
mov cl,45
mov dl,cl
int 21h

mov ah,02h
mov cl,45
mov dl,cl
int 21h

mov ah,02h
mov cl,45
mov dl,cl
int 21h

mov ah,02h
mov cl,45
mov dl,cl
int 21h

mov ah,02h
mov cl,45
mov dl,cl
int 21h

mov ah,02h
mov cl,45
mov dl,cl
int 21h

mov ah,02h
mov cl,45
mov dl,cl
int 21h

mov ah,02h
mov cl,45
mov dl,cl
int 21h

mov ah,02h
mov cl,45
mov dl,cl
int 21h

mov ah,02h
mov cl,45
mov dl,cl
int 21h

mov ah,02h
mov cl,45
mov dl,cl
int 21h

mov ah,02h
mov cl,45
mov dl,cl
int 21h

mov ah,02h
mov cl,45
mov dl,cl
int 21h

mov ah,02h
mov cl,45
mov dl,cl
int 21h

	mov ah,02h 
	mov cl,0Ah 	; newline
	mov dl,cl 
	int 21h 

	; 1st row

	mov ah,09h	; changing text color
	mov bl,4Fh	; 
	mov cx,6	; no. of characters to change
	int 10h

mov ah,02h
mov cl,124
mov dl,cl
int 21h

mov ah,02h
mov cl,32
mov dl,cl
int 21h

mov ah,02h
mov cl,49
mov dl,cl
int 21h

mov ah,02h
mov cl,32
mov dl,cl
int 21h

mov ah,02h
mov cl,32
mov dl,cl
int 21h

mov ah,02h
mov cl,124
mov dl,cl
int 21h

mov ah,02h
mov cl,32
mov dl,cl
int 21h

mov ah,02h
mov cl,49
mov dl,cl
int 21h

mov ah,02h
mov cl,32
mov dl,cl
int 21h

mov ah,02h
mov cl,32
mov dl,cl
int 21h

mov ah,02h
mov cl,124
mov dl,cl
int 21h

mov ah,02h
mov cl,32
mov dl,cl
int 21h

mov ah,02h
mov cl,50
mov dl,cl
int 21h

mov ah,02h
mov cl,32
mov dl,cl
int 21h

mov ah,02h
mov cl,32
mov dl,cl
int 21h

mov ah,02h
mov cl,124
mov dl,cl
int 21h

mov ah,02h
mov cl,32
mov dl,cl
int 21h

mov ah,02h
mov cl,51
mov dl,cl
int 21h

mov ah,02h
mov cl,32
mov dl,cl
int 21h

mov ah,02h
mov cl,32
mov dl,cl
int 21h

mov ah,02h
mov cl,124
mov dl,cl
int 21h

mov ah,02h
mov cl,32
mov dl,cl
int 21h

mov ah,02h
mov cl,52
mov dl,cl
int 21h

mov ah,02h
mov cl,32
mov dl,cl
int 21h

mov ah,02h
mov cl,32
mov dl,cl
int 21h

mov ah,02h
mov cl,124
mov dl,cl
int 21h

mov ah,02h
mov cl,32
mov dl,cl
int 21h

mov ah,02h
mov cl,53
mov dl,cl
int 21h

mov ah,02h
mov cl,32
mov dl,cl
int 21h

mov ah,02h
mov cl,32
mov dl,cl
int 21h

mov ah,02h
mov cl,124
mov dl,cl
int 21h

mov ah,02h
mov cl,32
mov dl,cl
int 21h

mov ah,02h
mov cl,54
mov dl,cl
int 21h

mov ah,02h
mov cl,32
mov dl,cl
int 21h

mov ah,02h
mov cl,32
mov dl,cl
int 21h

mov ah,02h
mov cl,124
mov dl,cl
int 21h

mov ah,02h
mov cl,32
mov dl,cl
int 21h

mov ah,02h
mov cl,55
mov dl,cl
int 21h

mov ah,02h
mov cl,32
mov dl,cl
int 21h

mov ah,02h
mov cl,32
mov dl,cl
int 21h

mov ah,02h
mov cl,124
mov dl,cl
int 21h

mov ah,02h
mov cl,32
mov dl,cl
int 21h

mov ah,02h
mov cl,56
mov dl,cl
int 21h

mov ah,02h
mov cl,32
mov dl,cl
int 21h

mov ah,02h
mov cl,32
mov dl,cl
int 21h

mov ah,02h
mov cl,124
mov dl,cl
int 21h

mov ah,02h
mov cl,32
mov dl,cl
int 21h

mov ah,02h
mov cl,57
mov dl,cl
int 21h

mov ah,02h
mov cl,32
mov dl,cl
int 21h

mov ah,02h
mov cl,32
mov dl,cl
int 21h

mov ah,02h
mov cl,124
mov dl,cl
int 21h

mov ah,02h
mov cl,32
mov dl,cl
int 21h

mov ah,02h
mov cl,49
mov dl,cl
int 21h

mov ah,02h
mov cl,48
mov dl,cl
int 21h

mov ah,02h
mov cl,32
mov dl,cl
int 21h

mov ah,02h
mov cl,124
mov dl,cl
int 21h

	mov ah,02h 
	mov cl,0Ah 	; newline
	mov dl,cl 
	int 21h 

	mov ah,09h	; changing text color
	mov bl,4Fh	; 
	mov cx,6	; no. of characters to change
	int 10h

mov ah,02h
mov cl,124
mov dl,cl
int 21h

mov ah,02h
mov cl,32
mov dl,cl
int 21h

mov ah,02h
mov cl,50
mov dl,cl
int 21h

mov ah,02h
mov cl,32
mov dl,cl
int 21h

mov ah,02h
mov cl,32
mov dl,cl
int 21h

mov ah,02h
mov cl,124
mov dl,cl
int 21h

mov ah,02h
mov cl,32
mov dl,cl
int 21h

mov ah,02h
mov cl,50
mov dl,cl
int 21h

mov ah,02h
mov cl,32
mov dl,cl
int 21h

mov ah,02h
mov cl,32
mov dl,cl
int 21h

mov ah,02h
mov cl,124
mov dl,cl
int 21h

mov ah,02h
mov cl,32
mov dl,cl
int 21h

mov ah,02h
mov cl,52
mov dl,cl
int 21h

mov ah,02h
mov cl,32
mov dl,cl
int 21h

mov ah,02h
mov cl,32
mov dl,cl
int 21h

mov ah,02h
mov cl,124
mov dl,cl
int 21h

mov ah,02h
mov cl,32
mov dl,cl
int 21h

mov ah,02h
mov cl,54
mov dl,cl
int 21h

mov ah,02h
mov cl,32
mov dl,cl
int 21h

mov ah,02h
mov cl,32
mov dl,cl
int 21h

mov ah,02h
mov cl,124
mov dl,cl
int 21h

mov ah,02h
mov cl,32
mov dl,cl
int 21h

mov ah,02h
mov cl,56
mov dl,cl
int 21h

mov ah,02h
mov cl,32
mov dl,cl
int 21h

mov ah,02h
mov cl,32
mov dl,cl
int 21h

mov ah,02h
mov cl,124
mov dl,cl
int 21h

mov ah,02h
mov cl,32
mov dl,cl
int 21h

mov ah,02h
mov cl,49
mov dl,cl
int 21h

mov ah,02h
mov cl,48
mov dl,cl
int 21h

mov ah,02h
mov cl,32
mov dl,cl
int 21h

mov ah,02h
mov cl,124
mov dl,cl
int 21h

mov ah,02h
mov cl,32
mov dl,cl
int 21h

mov ah,02h
mov cl,49
mov dl,cl
int 21h

mov ah,02h
mov cl,50
mov dl,cl
int 21h

mov ah,02h
mov cl,32
mov dl,cl
int 21h

mov ah,02h
mov cl,124
mov dl,cl
int 21h

mov ah,02h
mov cl,32
mov dl,cl
int 21h

mov ah,02h
mov cl,49
mov dl,cl
int 21h

mov ah,02h
mov cl,52
mov dl,cl
int 21h

mov ah,02h
mov cl,32
mov dl,cl
int 21h

mov ah,02h
mov cl,124
mov dl,cl
int 21h

mov ah,02h
mov cl,32
mov dl,cl
int 21h

mov ah,02h
mov cl,49
mov dl,cl
int 21h

mov ah,02h
mov cl,54
mov dl,cl
int 21h

mov ah,02h
mov cl,32
mov dl,cl
int 21h

mov ah,02h
mov cl,124
mov dl,cl
int 21h

mov ah,02h
mov cl,32
mov dl,cl
int 21h

mov ah,02h
mov cl,49
mov dl,cl
int 21h

mov ah,02h
mov cl,56
mov dl,cl
int 21h

mov ah,02h
mov cl,32
mov dl,cl
int 21h

mov ah,02h
mov cl,124
mov dl,cl
int 21h

mov ah,02h
mov cl,32
mov dl,cl
int 21h

mov ah,02h
mov cl,50
mov dl,cl
int 21h

mov ah,02h
mov cl,48
mov dl,cl
int 21h

mov ah,02h
mov cl,32
mov dl,cl
int 21h

mov ah,02h
mov cl,124
mov dl,cl
int 21h

;3rd

	mov ah,02h 
	mov cl,0Ah 	; newline
	mov dl,cl 
	int 21h 

	mov ah,09h	; changing text color
	mov bl,4Fh	; 
	mov cx,6	; no. of characters to change
	int 10h

mov ah,02h
mov cl,124
mov dl,cl
int 21h

mov ah,02h
mov cl,32
mov dl,cl
int 21h

mov ah,02h
mov cl,51
mov dl,cl
int 21h

mov ah,02h
mov cl,32
mov dl,cl
int 21h

mov ah,02h
mov cl,32
mov dl,cl
int 21h

mov ah,02h
mov cl,124
mov dl,cl
int 21h

mov ah,02h
mov cl,32
mov dl,cl
int 21h

mov ah,02h
mov cl,51
mov dl,cl
int 21h

mov ah,02h
mov cl,32
mov dl,cl
int 21h

mov ah,02h
mov cl,32
mov dl,cl
int 21h

mov ah,02h
mov cl,124
mov dl,cl
int 21h

mov ah,02h
mov cl,32
mov dl,cl
int 21h

mov ah,02h
mov cl,54
mov dl,cl
int 21h

mov ah,02h
mov cl,32
mov dl,cl
int 21h

mov ah,02h
mov cl,32
mov dl,cl
int 21h

mov ah,02h
mov cl,124
mov dl,cl
int 21h

mov ah,02h
mov cl,32
mov dl,cl
int 21h

mov ah,02h
mov cl,57
mov dl,cl
int 21h

mov ah,02h
mov cl,32
mov dl,cl
int 21h

mov ah,02h
mov cl,32
mov dl,cl
int 21h

mov ah,02h
mov cl,124
mov dl,cl
int 21h

mov ah,02h
mov cl,32
mov dl,cl
int 21h

mov ah,02h
mov cl,49
mov dl,cl
int 21h

mov ah,02h
mov cl,50
mov dl,cl
int 21h

mov ah,02h
mov cl,32
mov dl,cl
int 21h

mov ah,02h
mov cl,124
mov dl,cl
int 21h

mov ah,02h
mov cl,32
mov dl,cl
int 21h

mov ah,02h
mov cl,49
mov dl,cl
int 21h

mov ah,02h
mov cl,53
mov dl,cl
int 21h

mov ah,02h
mov cl,32
mov dl,cl
int 21h

mov ah,02h
mov cl,124
mov dl,cl
int 21h

mov ah,02h
mov cl,32
mov dl,cl
int 21h

mov ah,02h
mov cl,49
mov dl,cl
int 21h

mov ah,02h
mov cl,56
mov dl,cl
int 21h

mov ah,02h
mov cl,32
mov dl,cl
int 21h

mov ah,02h
mov cl,124
mov dl,cl
int 21h

mov ah,02h
mov cl,32
mov dl,cl
int 21h

mov ah,02h
mov cl,50
mov dl,cl
int 21h

mov ah,02h
mov cl,49
mov dl,cl
int 21h

mov ah,02h
mov cl,32
mov dl,cl
int 21h

mov ah,02h
mov cl,124
mov dl,cl
int 21h

mov ah,02h
mov cl,32
mov dl,cl
int 21h

mov ah,02h
mov cl,50
mov dl,cl
int 21h

mov ah,02h
mov cl,52
mov dl,cl
int 21h

mov ah,02h
mov cl,32
mov dl,cl
int 21h

mov ah,02h
mov cl,124
mov dl,cl
int 21h

mov ah,02h
mov cl,32
mov dl,cl
int 21h

mov ah,02h
mov cl,50
mov dl,cl
int 21h

mov ah,02h
mov cl,55
mov dl,cl
int 21h

mov ah,02h
mov cl,32
mov dl,cl
int 21h

mov ah,02h
mov cl,124
mov dl,cl
int 21h

mov ah,02h
mov cl,32
mov dl,cl
int 21h

mov ah,02h
mov cl,51
mov dl,cl
int 21h

mov ah,02h
mov cl,48
mov dl,cl
int 21h

mov ah,02h
mov cl,32
mov dl,cl
int 21h

mov ah,02h
mov cl,124
mov dl,cl
int 21h

;4th

	mov ah,02h 
	mov cl,0Ah 	; newline
	mov dl,cl 
	int 21h 

	mov ah,09h	; changing text color
	mov bl,4Fh	; 
	mov cx,6	; no. of characters to change
	int 10h


mov ah,02h
mov cl,124
mov dl,cl
int 21h

mov ah,02h
mov cl,32
mov dl,cl
int 21h

mov ah,02h
mov cl,52
mov dl,cl
int 21h

mov ah,02h
mov cl,32
mov dl,cl
int 21h

mov ah,02h
mov cl,32
mov dl,cl
int 21h

mov ah,02h
mov cl,124
mov dl,cl
int 21h

mov ah,02h
mov cl,32
mov dl,cl
int 21h

mov ah,02h
mov cl,52
mov dl,cl
int 21h

mov ah,02h
mov cl,32
mov dl,cl
int 21h

mov ah,02h
mov cl,32
mov dl,cl
int 21h

mov ah,02h
mov cl,124
mov dl,cl
int 21h

mov ah,02h
mov cl,32
mov dl,cl
int 21h

mov ah,02h
mov cl,56
mov dl,cl
int 21h

mov ah,02h
mov cl,32
mov dl,cl
int 21h

mov ah,02h
mov cl,32
mov dl,cl
int 21h

mov ah,02h
mov cl,124
mov dl,cl
int 21h

mov ah,02h
mov cl,32
mov dl,cl
int 21h

mov ah,02h
mov cl,49
mov dl,cl
int 21h

mov ah,02h
mov cl,50
mov dl,cl
int 21h

mov ah,02h
mov cl,32
mov dl,cl
int 21h

mov ah,02h
mov cl,124
mov dl,cl
int 21h

mov ah,02h
mov cl,32
mov dl,cl
int 21h

mov ah,02h
mov cl,49
mov dl,cl
int 21h

mov ah,02h
mov cl,54
mov dl,cl
int 21h

mov ah,02h
mov cl,32
mov dl,cl
int 21h

mov ah,02h
mov cl,124
mov dl,cl
int 21h

mov ah,02h
mov cl,32
mov dl,cl
int 21h

mov ah,02h
mov cl,50
mov dl,cl
int 21h

mov ah,02h
mov cl,48
mov dl,cl
int 21h

mov ah,02h
mov cl,32
mov dl,cl
int 21h

mov ah,02h
mov cl,124
mov dl,cl
int 21h

mov ah,02h
mov cl,32
mov dl,cl
int 21h

mov ah,02h
mov cl,50
mov dl,cl
int 21h

mov ah,02h
mov cl,52
mov dl,cl
int 21h

mov ah,02h
mov cl,32
mov dl,cl
int 21h

mov ah,02h
mov cl,124
mov dl,cl
int 21h

mov ah,02h
mov cl,32
mov dl,cl
int 21h

mov ah,02h
mov cl,50
mov dl,cl
int 21h

mov ah,02h
mov cl,56
mov dl,cl
int 21h

mov ah,02h
mov cl,32
mov dl,cl
int 21h

mov ah,02h
mov cl,124
mov dl,cl
int 21h

mov ah,02h
mov cl,32
mov dl,cl
int 21h

mov ah,02h
mov cl,51
mov dl,cl
int 21h

mov ah,02h
mov cl,50
mov dl,cl
int 21h

mov ah,02h
mov cl,32
mov dl,cl
int 21h

mov ah,02h
mov cl,124
mov dl,cl
int 21h

mov ah,02h
mov cl,32
mov dl,cl
int 21h

mov ah,02h
mov cl,51
mov dl,cl
int 21h

mov ah,02h
mov cl,54
mov dl,cl
int 21h

mov ah,02h
mov cl,32
mov dl,cl
int 21h

mov ah,02h
mov cl,124
mov dl,cl
int 21h

mov ah,02h
mov cl,32
mov dl,cl
int 21h

mov ah,02h
mov cl,52
mov dl,cl
int 21h

mov ah,02h
mov cl,48
mov dl,cl
int 21h

mov ah,02h
mov cl,32
mov dl,cl
int 21h

mov ah,02h
mov cl,124
mov dl,cl
int 21h

; 5th

	mov ah,02h 
	mov cl,0Ah 	; newline
	mov dl,cl 
	int 21h 

	mov ah,09h	; changing text color
	mov bl,4Fh	; 
	mov cx,6	; no. of characters to change
	int 10h


mov ah,02h
mov cl,124
mov dl,cl
int 21h

mov ah,02h
mov cl,32
mov dl,cl
int 21h

mov ah,02h
mov cl,53
mov dl,cl
int 21h

mov ah,02h
mov cl,32
mov dl,cl
int 21h

mov ah,02h
mov cl,32
mov dl,cl
int 21h

mov ah,02h
mov cl,124
mov dl,cl
int 21h

mov ah,02h
mov cl,32
mov dl,cl
int 21h

mov ah,02h
mov cl,53
mov dl,cl
int 21h

mov ah,02h
mov cl,32
mov dl,cl
int 21h

mov ah,02h
mov cl,32
mov dl,cl
int 21h

mov ah,02h
mov cl,124
mov dl,cl
int 21h

mov ah,02h
mov cl,32
mov dl,cl
int 21h

mov ah,02h
mov cl,49
mov dl,cl
int 21h

mov ah,02h
mov cl,48
mov dl,cl
int 21h

mov ah,02h
mov cl,32
mov dl,cl
int 21h

mov ah,02h
mov cl,124
mov dl,cl
int 21h

mov ah,02h
mov cl,32
mov dl,cl
int 21h

mov ah,02h
mov cl,49
mov dl,cl
int 21h

mov ah,02h
mov cl,53
mov dl,cl
int 21h

mov ah,02h
mov cl,32
mov dl,cl
int 21h

mov ah,02h
mov cl,124
mov dl,cl
int 21h

mov ah,02h
mov cl,32
mov dl,cl
int 21h

mov ah,02h
mov cl,50
mov dl,cl
int 21h

mov ah,02h
mov cl,48
mov dl,cl
int 21h

mov ah,02h
mov cl,32
mov dl,cl
int 21h

mov ah,02h
mov cl,124
mov dl,cl
int 21h

mov ah,02h
mov cl,32
mov dl,cl
int 21h

mov ah,02h
mov cl,50
mov dl,cl
int 21h

mov ah,02h
mov cl,53
mov dl,cl
int 21h

mov ah,02h
mov cl,32
mov dl,cl
int 21h

mov ah,02h
mov cl,124
mov dl,cl
int 21h

mov ah,02h
mov cl,32
mov dl,cl
int 21h

mov ah,02h
mov cl,51
mov dl,cl
int 21h

mov ah,02h
mov cl,48
mov dl,cl
int 21h

mov ah,02h
mov cl,32
mov dl,cl
int 21h

mov ah,02h
mov cl,124
mov dl,cl
int 21h

mov ah,02h
mov cl,32
mov dl,cl
int 21h

mov ah,02h
mov cl,51
mov dl,cl
int 21h

mov ah,02h
mov cl,53
mov dl,cl
int 21h

mov ah,02h
mov cl,32
mov dl,cl
int 21h

mov ah,02h
mov cl,124
mov dl,cl
int 21h

mov ah,02h
mov cl,32
mov dl,cl
int 21h

mov ah,02h
mov cl,52
mov dl,cl
int 21h

mov ah,02h
mov cl,48
mov dl,cl
int 21h

mov ah,02h
mov cl,32
mov dl,cl
int 21h

mov ah,02h
mov cl,124
mov dl,cl
int 21h

mov ah,02h
mov cl,32
mov dl,cl
int 21h

mov ah,02h
mov cl,52
mov dl,cl
int 21h

mov ah,02h
mov cl,53
mov dl,cl
int 21h

mov ah,02h
mov cl,32
mov dl,cl
int 21h

mov ah,02h
mov cl,124
mov dl,cl
int 21h

mov ah,02h
mov cl,32
mov dl,cl
int 21h

mov ah,02h
mov cl,53
mov dl,cl
int 21h

mov ah,02h
mov cl,48
mov dl,cl
int 21h

mov ah,02h
mov cl,32
mov dl,cl
int 21h

mov ah,02h
mov cl,124
mov dl,cl
int 21h

; 6th

	mov ah,02h 
	mov cl,0Ah 	; newline
	mov dl,cl 
	int 21h 

	mov ah,09h	; changing text color
	mov bl,4Fh	; 
	mov cx,6	; no. of characters to change
	int 10h


mov ah,02h
mov cl,124
mov dl,cl
int 21h

mov ah,02h
mov cl,32
mov dl,cl
int 21h

mov ah,02h
mov cl,54
mov dl,cl
int 21h

mov ah,02h
mov cl,32
mov dl,cl
int 21h

mov ah,02h
mov cl,32
mov dl,cl
int 21h

mov ah,02h
mov cl,124
mov dl,cl
int 21h

mov ah,02h
mov cl,32
mov dl,cl
int 21h

mov ah,02h
mov cl,54
mov dl,cl
int 21h

mov ah,02h
mov cl,32
mov dl,cl
int 21h

mov ah,02h
mov cl,32
mov dl,cl
int 21h

mov ah,02h
mov cl,124
mov dl,cl
int 21h

mov ah,02h
mov cl,32
mov dl,cl
int 21h

mov ah,02h
mov cl,49
mov dl,cl
int 21h

mov ah,02h
mov cl,50
mov dl,cl
int 21h

mov ah,02h
mov cl,32
mov dl,cl
int 21h

mov ah,02h
mov cl,124
mov dl,cl
int 21h

mov ah,02h
mov cl,32
mov dl,cl
int 21h

mov ah,02h
mov cl,49
mov dl,cl
int 21h

mov ah,02h
mov cl,56
mov dl,cl
int 21h

mov ah,02h
mov cl,32
mov dl,cl
int 21h

mov ah,02h
mov cl,124
mov dl,cl
int 21h

mov ah,02h
mov cl,32
mov dl,cl
int 21h

mov ah,02h
mov cl,50
mov dl,cl
int 21h

mov ah,02h
mov cl,52
mov dl,cl
int 21h

mov ah,02h
mov cl,32
mov dl,cl
int 21h

mov ah,02h
mov cl,124
mov dl,cl
int 21h

mov ah,02h
mov cl,32
mov dl,cl
int 21h

mov ah,02h
mov cl,51
mov dl,cl
int 21h

mov ah,02h
mov cl,48
mov dl,cl
int 21h

mov ah,02h
mov cl,32
mov dl,cl
int 21h

mov ah,02h
mov cl,124
mov dl,cl
int 21h

mov ah,02h
mov cl,32
mov dl,cl
int 21h

mov ah,02h
mov cl,51
mov dl,cl
int 21h

mov ah,02h
mov cl,54
mov dl,cl
int 21h

mov ah,02h
mov cl,32
mov dl,cl
int 21h

mov ah,02h
mov cl,124
mov dl,cl
int 21h

mov ah,02h
mov cl,32
mov dl,cl
int 21h

mov ah,02h
mov cl,52
mov dl,cl
int 21h

mov ah,02h
mov cl,50
mov dl,cl
int 21h

mov ah,02h
mov cl,32
mov dl,cl
int 21h

mov ah,02h
mov cl,124
mov dl,cl
int 21h

mov ah,02h
mov cl,32
mov dl,cl
int 21h

mov ah,02h
mov cl,52
mov dl,cl
int 21h

mov ah,02h
mov cl,56
mov dl,cl
int 21h

mov ah,02h
mov cl,32
mov dl,cl
int 21h

mov ah,02h
mov cl,124
mov dl,cl
int 21h

mov ah,02h
mov cl,32
mov dl,cl
int 21h

mov ah,02h
mov cl,53
mov dl,cl
int 21h

mov ah,02h
mov cl,52
mov dl,cl
int 21h

mov ah,02h
mov cl,32
mov dl,cl
int 21h

mov ah,02h
mov cl,124
mov dl,cl
int 21h

mov ah,02h
mov cl,32
mov dl,cl
int 21h

mov ah,02h
mov cl,54
mov dl,cl
int 21h

mov ah,02h
mov cl,48
mov dl,cl
int 21h

mov ah,02h
mov cl,32
mov dl,cl
int 21h

mov ah,02h
mov cl,124
mov dl,cl
int 21h

; 7th

	mov ah,02h 
	mov cl,0Ah 	; newline
	mov dl,cl 
	int 21h 

	mov ah,09h	; changing text color
	mov bl,4Fh	; 
	mov cx,6	; no. of characters to change
	int 10h


mov ah,02h
mov cl,124
mov dl,cl
int 21h

mov ah,02h
mov cl,32
mov dl,cl
int 21h

mov ah,02h
mov cl,55
mov dl,cl
int 21h

mov ah,02h
mov cl,32
mov dl,cl
int 21h

mov ah,02h
mov cl,32
mov dl,cl
int 21h

mov ah,02h
mov cl,124
mov dl,cl
int 21h

mov ah,02h
mov cl,32
mov dl,cl
int 21h

mov ah,02h
mov cl,55
mov dl,cl
int 21h

mov ah,02h
mov cl,32
mov dl,cl
int 21h

mov ah,02h
mov cl,32
mov dl,cl
int 21h

mov ah,02h
mov cl,124
mov dl,cl
int 21h

mov ah,02h
mov cl,32
mov dl,cl
int 21h

mov ah,02h
mov cl,49
mov dl,cl
int 21h

mov ah,02h
mov cl,52
mov dl,cl
int 21h

mov ah,02h
mov cl,32
mov dl,cl
int 21h

mov ah,02h
mov cl,124
mov dl,cl
int 21h

mov ah,02h
mov cl,32
mov dl,cl
int 21h

mov ah,02h
mov cl,50
mov dl,cl
int 21h

mov ah,02h
mov cl,49
mov dl,cl
int 21h

mov ah,02h
mov cl,32
mov dl,cl
int 21h

mov ah,02h
mov cl,124
mov dl,cl
int 21h

mov ah,02h
mov cl,32
mov dl,cl
int 21h

mov ah,02h
mov cl,50
mov dl,cl
int 21h

mov ah,02h
mov cl,56
mov dl,cl
int 21h

mov ah,02h
mov cl,32
mov dl,cl
int 21h

mov ah,02h
mov cl,124
mov dl,cl
int 21h

mov ah,02h
mov cl,32
mov dl,cl
int 21h

mov ah,02h
mov cl,51
mov dl,cl
int 21h

mov ah,02h
mov cl,53
mov dl,cl
int 21h

mov ah,02h
mov cl,32
mov dl,cl
int 21h

mov ah,02h
mov cl,124
mov dl,cl
int 21h

mov ah,02h
mov cl,32
mov dl,cl
int 21h

mov ah,02h
mov cl,52
mov dl,cl
int 21h

mov ah,02h
mov cl,50
mov dl,cl
int 21h

mov ah,02h
mov cl,32
mov dl,cl
int 21h

mov ah,02h
mov cl,124
mov dl,cl
int 21h

mov ah,02h
mov cl,32
mov dl,cl
int 21h

mov ah,02h
mov cl,52
mov dl,cl
int 21h

mov ah,02h
mov cl,57
mov dl,cl
int 21h

mov ah,02h
mov cl,32
mov dl,cl
int 21h

mov ah,02h
mov cl,124
mov dl,cl
int 21h

mov ah,02h
mov cl,32
mov dl,cl
int 21h

mov ah,02h
mov cl,53
mov dl,cl
int 21h

mov ah,02h
mov cl,54
mov dl,cl
int 21h

mov ah,02h
mov cl,32
mov dl,cl
int 21h

mov ah,02h
mov cl,124
mov dl,cl
int 21h

mov ah,02h
mov cl,32
mov dl,cl
int 21h

mov ah,02h
mov cl,54
mov dl,cl
int 21h

mov ah,02h
mov cl,51
mov dl,cl
int 21h

mov ah,02h
mov cl,32
mov dl,cl
int 21h

mov ah,02h
mov cl,124
mov dl,cl
int 21h

mov ah,02h
mov cl,32
mov dl,cl
int 21h

mov ah,02h
mov cl,55
mov dl,cl
int 21h

mov ah,02h
mov cl,48
mov dl,cl
int 21h

mov ah,02h
mov cl,32
mov dl,cl
int 21h

mov ah,02h
mov cl,124
mov dl,cl
int 21h

; 8th

	mov ah,02h 
	mov cl,0Ah 	; newline
	mov dl,cl 
	int 21h 

	mov ah,09h	; changing text color
	mov bl,4Fh	; 
	mov cx,6	; no. of characters to change
	int 10h


mov ah,02h
mov cl,124
mov dl,cl
int 21h

mov ah,02h
mov cl,32
mov dl,cl
int 21h

mov ah,02h
mov cl,56
mov dl,cl
int 21h

mov ah,02h
mov cl,32
mov dl,cl
int 21h

mov ah,02h
mov cl,32
mov dl,cl
int 21h

mov ah,02h
mov cl,124
mov dl,cl
int 21h

mov ah,02h
mov cl,32
mov dl,cl
int 21h

mov ah,02h
mov cl,56
mov dl,cl
int 21h

mov ah,02h
mov cl,32
mov dl,cl
int 21h

mov ah,02h
mov cl,32
mov dl,cl
int 21h

mov ah,02h
mov cl,124
mov dl,cl
int 21h

mov ah,02h
mov cl,32
mov dl,cl
int 21h

mov ah,02h
mov cl,49
mov dl,cl
int 21h

mov ah,02h
mov cl,54
mov dl,cl
int 21h

mov ah,02h
mov cl,32
mov dl,cl
int 21h

mov ah,02h
mov cl,124
mov dl,cl
int 21h

mov ah,02h
mov cl,32
mov dl,cl
int 21h

mov ah,02h
mov cl,50
mov dl,cl
int 21h

mov ah,02h
mov cl,52
mov dl,cl
int 21h

mov ah,02h
mov cl,32
mov dl,cl
int 21h

mov ah,02h
mov cl,124
mov dl,cl
int 21h

mov ah,02h
mov cl,32
mov dl,cl
int 21h

mov ah,02h
mov cl,51
mov dl,cl
int 21h

mov ah,02h
mov cl,50
mov dl,cl
int 21h

mov ah,02h
mov cl,32
mov dl,cl
int 21h

mov ah,02h
mov cl,124
mov dl,cl
int 21h

mov ah,02h
mov cl,32
mov dl,cl
int 21h

mov ah,02h
mov cl,52
mov dl,cl
int 21h

mov ah,02h
mov cl,48
mov dl,cl
int 21h

mov ah,02h
mov cl,32
mov dl,cl
int 21h

mov ah,02h
mov cl,124
mov dl,cl
int 21h

mov ah,02h
mov cl,32
mov dl,cl
int 21h

mov ah,02h
mov cl,52
mov dl,cl
int 21h

mov ah,02h
mov cl,56
mov dl,cl
int 21h

mov ah,02h
mov cl,32
mov dl,cl
int 21h

mov ah,02h
mov cl,124
mov dl,cl
int 21h

mov ah,02h
mov cl,32
mov dl,cl
int 21h

mov ah,02h
mov cl,53
mov dl,cl
int 21h

mov ah,02h
mov cl,54
mov dl,cl
int 21h

mov ah,02h
mov cl,32
mov dl,cl
int 21h

mov ah,02h
mov cl,124
mov dl,cl
int 21h

mov ah,02h
mov cl,32
mov dl,cl
int 21h

mov ah,02h
mov cl,54
mov dl,cl
int 21h

mov ah,02h
mov cl,52
mov dl,cl
int 21h

mov ah,02h
mov cl,32
mov dl,cl
int 21h

mov ah,02h
mov cl,124
mov dl,cl
int 21h

mov ah,02h
mov cl,32
mov dl,cl
int 21h

mov ah,02h
mov cl,55
mov dl,cl
int 21h

mov ah,02h
mov cl,50
mov dl,cl
int 21h

mov ah,02h
mov cl,32
mov dl,cl
int 21h

mov ah,02h
mov cl,124
mov dl,cl
int 21h

mov ah,02h
mov cl,32
mov dl,cl
int 21h

mov ah,02h
mov cl,56
mov dl,cl
int 21h

mov ah,02h
mov cl,48
mov dl,cl
int 21h

mov ah,02h
mov cl,32
mov dl,cl
int 21h

mov ah,02h
mov cl,124
mov dl,cl
int 21h

; 9th

	mov ah,02h 
	mov cl,0Ah 	; newline
	mov dl,cl 
	int 21h 

	mov ah,09h	; changing text color
	mov bl,4Fh	; 
	mov cx,6	; no. of characters to change
	int 10h


mov ah,02h
mov cl,124
mov dl,cl
int 21h

mov ah,02h
mov cl,32
mov dl,cl
int 21h

mov ah,02h
mov cl,57
mov dl,cl
int 21h

mov ah,02h
mov cl,32
mov dl,cl
int 21h

mov ah,02h
mov cl,32
mov dl,cl
int 21h

mov ah,02h
mov cl,124
mov dl,cl
int 21h

mov ah,02h
mov cl,32
mov dl,cl
int 21h

mov ah,02h
mov cl,57
mov dl,cl
int 21h

mov ah,02h
mov cl,32
mov dl,cl
int 21h

mov ah,02h
mov cl,32
mov dl,cl
int 21h

mov ah,02h
mov cl,124
mov dl,cl
int 21h

mov ah,02h
mov cl,32
mov dl,cl
int 21h

mov ah,02h
mov cl,49
mov dl,cl
int 21h

mov ah,02h
mov cl,56
mov dl,cl
int 21h

mov ah,02h
mov cl,32
mov dl,cl
int 21h

mov ah,02h
mov cl,124
mov dl,cl
int 21h

mov ah,02h
mov cl,32
mov dl,cl
int 21h

mov ah,02h
mov cl,50
mov dl,cl
int 21h

mov ah,02h
mov cl,55
mov dl,cl
int 21h

mov ah,02h
mov cl,32
mov dl,cl
int 21h

mov ah,02h
mov cl,124
mov dl,cl
int 21h

mov ah,02h
mov cl,32
mov dl,cl
int 21h

mov ah,02h
mov cl,51
mov dl,cl
int 21h

mov ah,02h
mov cl,54
mov dl,cl
int 21h

mov ah,02h
mov cl,32
mov dl,cl
int 21h

mov ah,02h
mov cl,124
mov dl,cl
int 21h

mov ah,02h
mov cl,32
mov dl,cl
int 21h

mov ah,02h
mov cl,52
mov dl,cl
int 21h

mov ah,02h
mov cl,53
mov dl,cl
int 21h

mov ah,02h
mov cl,32
mov dl,cl
int 21h

mov ah,02h
mov cl,124
mov dl,cl
int 21h

mov ah,02h
mov cl,32
mov dl,cl
int 21h

mov ah,02h
mov cl,53
mov dl,cl
int 21h

mov ah,02h
mov cl,52
mov dl,cl
int 21h

mov ah,02h
mov cl,32
mov dl,cl
int 21h

mov ah,02h
mov cl,124
mov dl,cl
int 21h

mov ah,02h
mov cl,32
mov dl,cl
int 21h

mov ah,02h
mov cl,54
mov dl,cl
int 21h

mov ah,02h
mov cl,51
mov dl,cl
int 21h

mov ah,02h
mov cl,32
mov dl,cl
int 21h

mov ah,02h
mov cl,124
mov dl,cl
int 21h

mov ah,02h
mov cl,32
mov dl,cl
int 21h

mov ah,02h
mov cl,55
mov dl,cl
int 21h

mov ah,02h
mov cl,50
mov dl,cl
int 21h

mov ah,02h
mov cl,32
mov dl,cl
int 21h

mov ah,02h
mov cl,124
mov dl,cl
int 21h

mov ah,02h
mov cl,32
mov dl,cl
int 21h

mov ah,02h
mov cl,56
mov dl,cl
int 21h

mov ah,02h
mov cl,49
mov dl,cl
int 21h

mov ah,02h
mov cl,32
mov dl,cl
int 21h

mov ah,02h
mov cl,124
mov dl,cl
int 21h

mov ah,02h
mov cl,32
mov dl,cl
int 21h

mov ah,02h
mov cl,57
mov dl,cl
int 21h

mov ah,02h
mov cl,48
mov dl,cl
int 21h

mov ah,02h
mov cl,32
mov dl,cl
int 21h

mov ah,02h
mov cl,124
mov dl,cl
int 21h

; 10th

	mov ah,02h 
	mov cl,0Ah 	; newline
	mov dl,cl 
	int 21h 

	mov ah,09h	; changing text color
	mov bl,4Fh	; 
	mov cx,6	; no. of characters to change
	int 10h

mov ah,02h
mov cl,124
mov dl,cl
int 21h

mov ah,02h
mov cl,32
mov dl,cl
int 21h

mov ah,02h
mov cl,49
mov dl,cl
int 21h

mov ah,02h
mov cl,48
mov dl,cl
int 21h

mov ah,02h
mov cl,32
mov dl,cl
int 21h

mov ah,02h
mov cl,124
mov dl,cl
int 21h

mov ah,02h
mov cl,32
mov dl,cl
int 21h

mov ah,02h
mov cl,49
mov dl,cl
int 21h

mov ah,02h
mov cl,48
mov dl,cl
int 21h

mov ah,02h
mov cl,32
mov dl,cl
int 21h

mov ah,02h
mov cl,124
mov dl,cl
int 21h

mov ah,02h
mov cl,32
mov dl,cl
int 21h

mov ah,02h
mov cl,50
mov dl,cl
int 21h

mov ah,02h
mov cl,48
mov dl,cl
int 21h

mov ah,02h
mov cl,32
mov dl,cl
int 21h

mov ah,02h
mov cl,124
mov dl,cl
int 21h

mov ah,02h
mov cl,32
mov dl,cl
int 21h

mov ah,02h
mov cl,51
mov dl,cl
int 21h

mov ah,02h
mov cl,48
mov dl,cl
int 21h

mov ah,02h
mov cl,32
mov dl,cl
int 21h

mov ah,02h
mov cl,124
mov dl,cl
int 21h

mov ah,02h
mov cl,32
mov dl,cl
int 21h

mov ah,02h
mov cl,52
mov dl,cl
int 21h

mov ah,02h
mov cl,48
mov dl,cl
int 21h

mov ah,02h
mov cl,32
mov dl,cl
int 21h

mov ah,02h
mov cl,124
mov dl,cl
int 21h

mov ah,02h
mov cl,32
mov dl,cl
int 21h

mov ah,02h
mov cl,53
mov dl,cl
int 21h

mov ah,02h
mov cl,48
mov dl,cl
int 21h

mov ah,02h
mov cl,32
mov dl,cl
int 21h

mov ah,02h
mov cl,124
mov dl,cl
int 21h

mov ah,02h
mov cl,32
mov dl,cl
int 21h

mov ah,02h
mov cl,54
mov dl,cl
int 21h

mov ah,02h
mov cl,48
mov dl,cl
int 21h

mov ah,02h
mov cl,32
mov dl,cl
int 21h

mov ah,02h
mov cl,124
mov dl,cl
int 21h

mov ah,02h
mov cl,32
mov dl,cl
int 21h

mov ah,02h
mov cl,55
mov dl,cl
int 21h

mov ah,02h
mov cl,48
mov dl,cl
int 21h

mov ah,02h
mov cl,32
mov dl,cl
int 21h

mov ah,02h
mov cl,124
mov dl,cl
int 21h

mov ah,02h
mov cl,32
mov dl,cl
int 21h

mov ah,02h
mov cl,56
mov dl,cl
int 21h

mov ah,02h
mov cl,48
mov dl,cl
int 21h

mov ah,02h
mov cl,32
mov dl,cl
int 21h

mov ah,02h
mov cl,124
mov dl,cl
int 21h

mov ah,02h
mov cl,32
mov dl,cl
int 21h

mov ah,02h
mov cl,57
mov dl,cl
int 21h

mov ah,02h
mov cl,48
mov dl,cl
int 21h

mov ah,02h
mov cl,32
mov dl,cl
int 21h

mov ah,02h
mov cl,124
mov dl,cl
int 21h

mov ah,02h
mov cl,32
mov dl,cl
int 21h

mov ah,02h
mov cl,49
mov dl,cl
int 21h

mov ah,02h
mov cl,48
mov dl,cl
int 21h

mov ah,02h
mov cl,48
mov dl,cl
int 21h

mov ah,02h
mov cl,124
mov dl,cl
int 21h

	mov ah,02h 
	mov cl,0Ah 	; newline
	mov dl,cl 
	int 21h 
	mov ah,02h 
	mov cl,0Ah 	; newline
	mov dl,cl 
	int 21h 

int 27h ; terminate
end start ; end program