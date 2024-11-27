; Filename: Exer8.asm
; Displaying text using string variables
; Felisa Melanie Fay G. Bascug
; Date: August 30, 2024

.model small
.stack 100h
.DATA 
    line1 db 'Felisa Melanie Fay Garcillano Bascug',10,'$'
	line2 db 'Bachelor of Science in Computer Science 3rd Year',10,'$'
	line3 db 'College of Computer Studies',10,'$'
	line4 db 'Cebu Institute of Technology - University',10,'$'
.code
start: 
    mov ax, @data
    mov ds, ax

	mov ah, 09h
    lea dx, line1
    int 21h
	mov ah, 09h
    lea dx, line2
    int 21h
	mov ah, 09h
    lea dx, line3
    int 21h
	mov ah, 09h
    lea dx, line4
    int 21h

int 27h ; terminate
end start ; end program
