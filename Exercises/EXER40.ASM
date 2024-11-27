; Filename: EXER40.ASM
; Programmer Name: FELISA MELANIE FAY G. BASCUG
; Program Description: Displays the ASCII value of the input key in binary.
; Date Created: October 25, 2024

.MODEL SMALL
.STACK 100
.DATA
	info    	DB 'Filename: EXER40.ASM',10,'Programmer Name: FELISA MELANIE FAY G. BASCUG',10,'Program Description: Displays the ASCII value of the input key in binary.',10,'Date Created: October 25, 2024',10,10,'$'
	char_prompt DB 'Please input a character: ',0
	out_msg1	DB 'The ASCII code of ''',0
	out_msg2	DB ''' in binary is ',0
	query_msg   DB 'Do you want to quit (Y/N): ',0

.CODE
INCLUDE IO.MAC
main	PROC
    	.STARTUP
    
	MOV AH, 09H
	LEA DX, info
	INT 21H

read_char:
	PutStr  char_prompt ; request a char. input
	GetCh   AL      	; read input character
	nwln
	PutStr  out_msg1
	PutCh   AL   
	PutStr  out_msg2
	mov 	AH,80H  	; mask byte = 80H
	mov 	CX,8    	; loop count to print 8 bits

print_bit:
	test	AL,AH   	; test does not modify AL
	jz  	print_0 	; if tested bit is 0, print it
	PutCh   '1'     	; otherwise, print 1
	jmp skip1

print_0:
	PutCh   '0'     	; print 0

skip1:
	shr 	AH,1    	; right shift mask bit to test next bit of the ASCII code
	loop	print_bit
	nwln
	PutStr  query_msg   ; query user whether to terminate
	GetCh   AL      	; read response
	nwln
	cmp 	AL,'Y'  	; if response is not 'y'
	jne 	read_char   ; read another character. otherwise, terminate program

done:              	 
	MOV AH, 4CH
	INT 21H

MAIN ENDP
END MAIN
