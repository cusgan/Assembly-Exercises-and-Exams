; Filename: EXER25.ASM
; Programmer Name: FELISA MELANIE FAY G. BASCUG
; Date: September 26, 2024
; Description: This assembly language program will get 3 string inputs
; and display back the 3 strings on separate lines.

.MODEL SMALL
.STACK 100H
.DATA
	inputString1 DB 50 DUP ('$') ; Reserve 50 bytes for input string
	inputString2 DB 50 DUP ('$')
	inputString3 DB 50 DUP ('$')
	promptString1 DB 'Enter first string: $'
	promptString2 DB 'Enter second string: $'
	promptString3 DB 'Enter third string: $'
	outputString1 DB 'You entered first string: $'
	outputString2 DB 'You entered second string: $'
	outputString3 DB 'You entered third string: $'

.CODE
MAIN PROC
; Getting the input
	; Initialize data segment
	MOV AX, @DATA
	MOV DS, AX

	; Prompt the user for input first string
	LEA DX, promptString1
	MOV AH, 09H
	INT 21H

	; Read input first string
	LEA DX, inputString1
	MOV AH, 0AH
	INT 21H

	; Displaying new line
	MOV AH, 02H
	MOV CL, 0AH
	MOV DL, CL
	INT 21H

	; Prompt the user for input second string
	LEA DX, promptString2
	MOV AH, 09H
	INT 21H

	; Read input second string
	LEA DX, inputString2
	MOV AH, 0AH
	INT 21H

	; Displaying new line
	MOV AH, 02H
	MOV CL, 0AH
	MOV DL, CL
	INT 21H

	; Prompt the user for input third string
	LEA DX, promptString3
	MOV AH, 09H
	INT 21H

	; Read input third string
	LEA DX, inputString3
	MOV AH, 0AH
	INT 21H

	; Displaying new line
	MOV AH, 02H
	MOV CL, 0AH
	MOV DL, CL
	INT 21H

; Displaying the output
	; Display the output message for first string
	LEA DX, outputString1
	MOV AH, 09H
	INT 21H

	; Display the entered first string
	LEA DX, inputString1 + 2 ; Skip the first two bytes (length and max length)
	MOV AH, 09H
	INT 21H

	; Displaying new line
	MOV AH, 02H
	MOV CL, 0AH
	MOV DL, CL
	INT 21H
    
	; Display the output message for second string
	LEA DX, outputString2
	MOV AH, 09H
	INT 21H

	; Display the entered second string
	LEA DX, inputString2 + 2 ; Skip the first two bytes (length and max length)
	MOV AH, 09H
	INT 21H

	; Displaying new line
	MOV AH, 02H
	MOV CL, 0AH
	MOV DL, CL
	INT 21H
    
	; Display the output message for third string
	LEA DX, outputString3
	MOV AH, 09H
	INT 21H

	; Display the entered third string
	LEA DX, inputString3 + 2 ; Skip the first two bytes (length and max length)
	MOV AH, 09H
	INT 21H

	; Displaying new line
	MOV AH, 02H
	MOV CL, 0AH
	MOV DL, CL
	INT 21H
    
; Exit program
	MOV AX, 4C00H ; DOS function to terminate program
	INT 21H

MAIN ENDP
END MAIN
