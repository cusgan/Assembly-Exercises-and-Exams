; Filename: EXER44.ASM
; Programmer Name: FELISA MELANIE FAY G. BASCUG
; Program Description: Sum of the individual digits of a number.
; Date Created: October 27, 2024

.MODEL SMALL
.STACK 100H
.DATA
info       	DB 'Filename: EXER44.ASM',10,'Programmer Name: FELISA MELANIE FAY G. BASCUG',10,'Program Description: Sum of the individual digits of a number.',10,'Date Created: October 27, 2024',10,10,'$'
number_prompt  DB  'Please type a number (<11 digits): ',0
out_msg    	DB  'The sum of individual digits is: ',0
number     	DB  11 DUP (?)

.CODE
INCLUDE io.mac
main	PROC
    	.STARTUP
    	MOV AH, 09H
    	LEA DX, info
    	INT 21H
    	PutStr  number_prompt  ; request an input number
    	GetStr  number,11	; read input number as a string
    	nwln
    	mov 	BX,OFFSET number  ; BX := address of number
    	sub 	DX,DX    	; DX := 0 -- DL keeps the sum
repeat_add:
    	mov 	AL,[BX]  	; move the digit to AL
    	cmp 	AL,0     	; if it is the NULL character
    	je  	done     	;  sum is done
    	and 	AL,0FH   	; mask off the upper 4 bits
    	add 	DL,AL    	; add the digit to sum
    	inc 	BX       	; increment BX to point to next digit
    	jmp 	repeat_add   ;  and jump back
done:
    	PutStr  out_msg
    	PutInt  DX       	; write sum
    	nwln
    	MOV AH, 4CH
    	INT 21H
main	ENDP
	END   main