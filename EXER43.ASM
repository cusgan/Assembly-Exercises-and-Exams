; Filename: EXER43.ASM
; Programmer Name: FELISA MELANIE FAY G. BASCUG
; Program Description: Conversion of lowercase letters to uppercase by character manipulation.
; Date Created: October 27, 2024

.MODEL SMALL
.STACK 100H
.DATA
info       	DB 'Filename: EXER43.ASM',10,'Programmer Name: FELISA MELANIE FAY G. BASCUG',10,'Program Description: Conversion of lowercase letters to uppercase by character manipulation.',10,'Date Created: October 27, 2024',10,10,'$'
name_prompt	DB  'Please type your name: ',0
out_msg    	DB  'Your name in capitals is: ',0
in_name    	DB  31 DUP (?)

.CODE
INCLUDE io.mac
main	PROC
    	.STARTUP
    	MOV AH, 09H
    	LEA DX, info
    	INT 21H
    	PutStr  name_prompt  ; request character string
    	GetStr  in_name,31   ; read input character string
    	nwln
    	PutStr  out_msg
    	mov 	BX,OFFSET in_name  ; BX := address of in_name
process_char:
    	mov 	AL,[BX]  	; move the char. to AL
    	cmp 	AL,0     	; if it is the NULL character
    	je  	done     	;  conversion done
    	cmp 	AL,'a'     	; if (char < 'a')
    	jl  	not_lower_case ; not a lowercase letter
    	cmp 	AL,'z'     	; if (char > 'z')
    	jg  	not_lower_case ; not a lowercase letter
lower_case:
    	add 	AL,'A'-'a'   ; convert to uppercase
not_lower_case:
    	PutCh   AL       	; write the character
    	inc 	BX       	; BX points to next char.
    	jmp 	process_char ; go back to process next char.
    	nwln
done:              	 
	nwln
	MOV AH, 4CH
	INT 21H
main	ENDP
    	END   main
