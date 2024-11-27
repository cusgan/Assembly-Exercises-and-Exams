; Filename: Prog36.asm
; Programmer Name: FELISA MELANIE FAY G. BASCUG
; Program Description: Displays the ASCII value of the input key in hexadecimal using xlat instruction.
; Date Created: November 9, 2024

.MODEL SMALL
.STACK 100H
.DATA
info       	DB 'Filename: Prog36.asm',10,'Programmer Name: FELISA MELANIE FAY G. BASCUG',10,'Program Description: Displays the ASCII value of the input key in hexadecimal using xlat instruction.',10,'Date Created: November 9, 2024',10,10,'$'
char_prompt	DB  'Please input a character: ',0
out_msg1   	DB  'The ASCII code of ''',0
out_msg2   	DB  ''' in hex is ',0
query_msg  	DB  'Do you want to quit (Y/N): ',0
; translation table: 4-bit binary to hex
hex_table  	DB  '0123456789ABCDEF'    

.CODE
.486
INCLUDE IO.MAC
main	PROC
    	.STARTUP
	MOV AH, 09H
	LEA DX, info
	INT 21H    
read_char:
    	PutStr  char_prompt  ; request a char. input
    	GetCh   AL       	; read input character
    	nwln
    	PutStr  out_msg1
    	PutCh   AL
    	PutStr  out_msg2
    	mov 	AH,AL    	; save input character in AH
    	mov 	BX,OFFSET hex_table  ; BX := translation table
    	shr 	AL,4     	; move upper 4 bits to lower half
    	xlatb            	; replace AL with hex digit
    	PutCh   AL       	; write the first hex digit
    	mov 	AL,AH    	; restore input character to AL
    	and 	AL,0FH   	; mask off upper 4 bits
    	xlatb
    	PutCh   AL       	; write the second hex digit
    	nwln
    	PutStr  query_msg	; query user whether to terminate
    	GetCh   AL       	; read response
    	nwln
    	cmp 	AL,'Y'   	; if response is not 'Y'
    	jne 	read_char	; read another character. otherwise, terminate program
done:              	 
	MOV AH, 4CH
	INT 21H
main	ENDP
    	END   main
