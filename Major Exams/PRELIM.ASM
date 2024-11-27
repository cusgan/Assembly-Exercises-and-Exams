; Filename: PRELIM.ASM
; CS243 Lab Prelim Exam First Semester SY 2024-2025
; Student Name: BASCUG, FELISA MELANIE FAY G.
; Date Finished: September 12, 2024

.model small
.stack 160h
.data
    l1      db "                  Cebu Institute of Technology - University                 $" ; 76
    l2      db "                       VEHICLE STICKER APPLICATION FORM                     $"
    l3      db "                          Please fill out form below.                       $"

    l4      db " Personnel Type:           $" ; 27
    l5      db " Name of Applicant/Driver: $"
    l6      db " Mobile Number:            $"
    l7      db " Vehicle Make(s)/Brand:    $"
    l8      db " Vehicle Color:            $"

    l4a     db "  Vehicle Sticker Type: $" ; 24
    l5a     db "  ID Number:            $"
    l6a     db "  Address:              $"
    l7a     db "  Plate Number:         $"
    l8a     db "  Vehicle Type:         $"

    l9      db "  SUBMIT  $" ; 10
    l10     db "                   Copyright 2024 BASCUG, FELISA MELANIE FAY G.               $"
    l11     db "                                    Thank you!$" ; 46

    v       db " v $" ; 3
    blankv  db "          $" ; 10
    blank   db "             $" ; 13
    padding db "          $" ; 10

.code
main proc
    mov ax, @data
    mov ds, ax

; citu
    mov ah,02h 
    mov cl,20h 	; space
    mov dl,cl 
    int 21h 

    mov ah,09h	
    mov bl,77h	; grey
    mov cx,1	
    int 10h

    mov ah,02h 
    mov cl,20h 	; space
    mov dl,cl 
    int 21h 

    mov ah,09h	
    mov bl,4Fh	; red bg, white txt
    mov cx,76	
    int 10h

    mov ah, 09h
    lea dx, l1
    int 21h

    mov ah,09h	
    mov bl,77h	; grey
    mov cx,1	
    int 10h

    mov ah,02h 
    mov cl,20h 	; space
    mov dl,cl 
    int 21h 

    mov ah,02h 
    mov cl,0Ah 	; newline
    mov dl,cl 
    int 21h 

; vehicle sticker application
    mov ah,02h 
    mov cl,20h 	; space
    mov dl,cl 
    int 21h 

    mov ah,09h	
    mov bl,77h	; grey
    mov cx,1	
    int 10h

    mov ah,02h 
    mov cl,20h 	; space
    mov dl,cl 
    int 21h 

    mov ah,09h	
    mov bl,4Fh	; red bg, white txt
    mov cx,76	
    int 10h

    mov ah, 09h
    lea dx, l2
    int 21h

    mov ah,09h	
    mov bl,77h	; grey
    mov cx,1	
    int 10h

    mov ah,02h 
    mov cl,20h 	; space
    mov dl,cl 
    int 21h 

    mov ah,02h 
    mov cl,0Ah 	; newline
    mov dl,cl 
    int 21h 

; pls fill up
    mov ah,02h 
    mov cl,20h 	; space
    mov dl,cl 
    int 21h 

    mov ah,09h	
    mov bl,77h	; grey
    mov cx,1	
    int 10h

    mov ah,02h 
    mov cl,20h 	; space
    mov dl,cl 
    int 21h 

    mov ah,09h	
    mov bl,11001110b	; blinking, red bg, yellow txt
    mov cx,76	
    int 10h

    mov ah, 09h
    lea dx, l3
    int 21h

    mov ah,09h	
    mov bl,77h	; grey
    mov cx,1	
    int 10h

    mov ah,02h 
    mov cl,20h 	; space
    mov dl,cl 
    int 21h 

    mov ah,02h 
    mov cl,0Ah 	; newline
    mov dl,cl 
    int 21h 

; empty
    mov ah,02h 
    mov cl,20h 	; space
    mov dl,cl 
    int 21h 

    mov ah,09h	
    mov bl,77h	; grey
    mov cx,78	
    int 10h

    mov ah,02h 
    mov cl,0Ah 	; newline
    mov dl,cl 
    int 21h 

; row 1
    ; col 1 
        mov ah,02h 
        mov cl,20h 	; space
        mov dl,cl 
        int 21h 

        mov ah,09h	
        mov bl,70h	; grey bg, black txt
        mov cx,27	
        int 10h

        mov ah, 09h
        lea dx, l4
        int 21h

        mov ah,09h	
        mov bl,60h	; orange bg, black txt
        mov cx,10	
        int 10h

        mov ah, 09h
        lea dx, blankv
        int 21h

        mov ah,09h	
        mov bl,4Fh	; red bg, white txt
        mov cx,3	
        int 10h

        mov ah, 09h
        lea dx, v
        int 21h

    ; col 2
        mov ah,09h	
        mov bl,70h	; grey bg, black txt
        mov cx,24	
        int 10h

        mov ah, 09h
        lea dx, l4a
        int 21h

        mov ah,09h	
        mov bl,60h	; orange bg, black txt
        mov cx,10	
        int 10h

        mov ah, 09h
        lea dx, blankv
        int 21h

        mov ah,09h	
        mov bl,4Fh	; red bg, white txt
        mov cx,3	
        int 10h

        mov ah, 09h
        lea dx, v
        int 21h

        mov ah,09h	
        mov bl,77h	; grey
        mov cx,1	
        int 10h

        mov ah,02h 
        mov cl,20h 	; space
        mov dl,cl 
        int 21h 
        
        mov ah,02h 
        mov cl,0Ah 	; newline
        mov dl,cl 
        int 21h 

; empty
    mov ah,02h 
    mov cl,20h 	; space
    mov dl,cl 
    int 21h 

    mov ah,09h	
    mov bl,77h	; grey
    mov cx,78	
    int 10h

    mov ah,02h 
    mov cl,0Ah 	; newline
    mov dl,cl 
    int 21h 

; row 2
    ; col 1 
        mov ah,02h 
        mov cl,20h 	; space
        mov dl,cl 
        int 21h 

        mov ah,09h	
        mov bl,70h	; grey bg, black txt
        mov cx,27	
        int 10h

        mov ah, 09h
        lea dx, l5
        int 21h

        mov ah,09h	
        mov bl,60h	; orange bg, black txt
        mov cx,13	
        int 10h

        mov ah, 09h
        lea dx, blank
        int 21h

    ; col 2
        mov ah,09h	
        mov bl,70h	; grey bg, black txt
        mov cx,24	
        int 10h

        mov ah, 09h
        lea dx, l5a
        int 21h

        mov ah,09h	
        mov bl,60h	; orange bg, black txt
        mov cx,13	
        int 10h

        mov ah, 09h
        lea dx, blank
        int 21h

        mov ah,09h	
        mov bl,77h	; grey
        mov cx,1	
        int 10h

        mov ah,02h 
        mov cl,20h 	; space
        mov dl,cl 
        int 21h 
        
        mov ah,02h 
        mov cl,0Ah 	; newline
        mov dl,cl 
        int 21h 

; empty
    mov ah,02h 
    mov cl,20h 	; space
    mov dl,cl 
    int 21h 

    mov ah,09h	
    mov bl,77h	; grey
    mov cx,78	
    int 10h

    mov ah,02h 
    mov cl,0Ah 	; newline
    mov dl,cl 
    int 21h 

; row 3
    ; col 1 
        mov ah,02h 
        mov cl,20h 	; space
        mov dl,cl 
        int 21h 

        mov ah,09h	
        mov bl,70h	; grey bg, black txt
        mov cx,27	
        int 10h

        mov ah, 09h
        lea dx, l6
        int 21h

        mov ah,09h	
        mov bl,60h	; orange bg, black txt
        mov cx,13	
        int 10h

        mov ah, 09h
        lea dx, blank
        int 21h

    ; col 2
        mov ah,09h	
        mov bl,70h	; grey bg, black txt
        mov cx,24	
        int 10h

        mov ah, 09h
        lea dx, l6a
        int 21h

        mov ah,09h	
        mov bl,60h	; orange bg, black txt
        mov cx,13	
        int 10h

        mov ah, 09h
        lea dx, blank
        int 21h

        mov ah,09h	
        mov bl,77h	; grey
        mov cx,1	
        int 10h

        mov ah,02h 
        mov cl,20h 	; space
        mov dl,cl 
        int 21h 
        
        mov ah,02h 
        mov cl,0Ah 	; newline
        mov dl,cl 
        int 21h 

; empty
    mov ah,02h 
    mov cl,20h 	; space
    mov dl,cl 
    int 21h 

    mov ah,09h	
    mov bl,77h	; grey
    mov cx,78	
    int 10h

    mov ah,02h 
    mov cl,0Ah 	; newline
    mov dl,cl 
    int 21h 

; row 4
    ; col 1 
        mov ah,02h 
        mov cl,20h 	; space
        mov dl,cl 
        int 21h 

        mov ah,09h	
        mov bl,70h	; grey bg, black txt
        mov cx,27	
        int 10h

        mov ah, 09h
        lea dx, l7
        int 21h

        mov ah,09h	
        mov bl,60h	; orange bg, black txt
        mov cx,13	
        int 10h

        mov ah, 09h
        lea dx, blank
        int 21h

    ; col 2
        mov ah,09h	
        mov bl,70h	; grey bg, black txt
        mov cx,24	
        int 10h

        mov ah, 09h
        lea dx, l7a
        int 21h

        mov ah,09h	
        mov bl,60h	; orange bg, black txt
        mov cx,13	
        int 10h

        mov ah, 09h
        lea dx, blank
        int 21h

        mov ah,09h	
        mov bl,77h	; grey
        mov cx,1	
        int 10h

        mov ah,02h 
        mov cl,20h 	; space
        mov dl,cl 
        int 21h 
        
        mov ah,02h 
        mov cl,0Ah 	; newline
        mov dl,cl 
        int 21h 

; empty
    mov ah,02h 
    mov cl,20h 	; space
    mov dl,cl 
    int 21h 

    mov ah,09h	
    mov bl,77h	; grey
    mov cx,78	
    int 10h

    mov ah,02h 
    mov cl,0Ah 	; newline
    mov dl,cl 
    int 21h 

; row 5
    ; col 1 
        mov ah,02h 
        mov cl,20h 	; space
        mov dl,cl 
        int 21h 

        mov ah,09h	
        mov bl,70h	; grey bg, black txt
        mov cx,27	
        int 10h

        mov ah, 09h
        lea dx, l8
        int 21h

        mov ah,09h	
        mov bl,60h	; orange bg, black txt
        mov cx,10	
        int 10h

        mov ah, 09h
        lea dx, blankv
        int 21h

        mov ah,09h	
        mov bl,4Fh	; red bg, white txt
        mov cx,3	
        int 10h

        mov ah, 09h
        lea dx, v
        int 21h

    ; col 2
        mov ah,09h	
        mov bl,70h	; grey bg, black txt
        mov cx,24	
        int 10h

        mov ah, 09h
        lea dx, l8a
        int 21h

        mov ah,09h	
        mov bl,60h	; orange bg, black txt
        mov cx,10	
        int 10h

        mov ah, 09h
        lea dx, blankv
        int 21h

        mov ah,09h	
        mov bl,4Fh	; red bg, white txt
        mov cx,3	
        int 10h

        mov ah, 09h
        lea dx, v
        int 21h

        mov ah,09h	
        mov bl,77h	; grey
        mov cx,1	
        int 10h

        mov ah,02h 
        mov cl,20h 	; space
        mov dl,cl 
        int 21h 
        
        mov ah,02h 
        mov cl,0Ah 	; newline
        mov dl,cl 
        int 21h 

; empty
    mov ah,02h 
    mov cl,20h 	; space
    mov dl,cl 
    int 21h 

    mov ah,09h	
    mov bl,77h	; grey
    mov cx,78	
    int 10h

    mov ah,02h 
    mov cl,0Ah 	; newline
    mov dl,cl 
    int 21h 

; padding
    mov ah,02h 
    mov cl,20h 	; space
    mov dl,cl 
    int 21h 

    mov ah,09h	
    mov bl,77h	; grey
    mov cx,34	
    int 10h

    mov ah, 09h
    lea dx, blank
    int 21h
    mov ah, 09h
    lea dx, blankv
    int 21h
    mov ah, 09h
    lea dx, blankv
    int 21h

    mov ah,09h	
    mov bl,4Eh	; red bg yellow txt
    mov cx,10
    int 10h

    mov ah, 09h
    lea dx, padding
    int 21h

    mov ah,09h	
    mov bl,77h	; grey
    mov cx,35	
    int 10h

    mov ah,02h 
    mov cl,0Ah 	; newline
    mov dl,cl 
    int 21h 

; submit
    mov ah,02h 
    mov cl,20h 	; space
    mov dl,cl 
    int 21h 

    mov ah,09h	
    mov bl,77h	; grey
    mov cx,34	
    int 10h

    mov ah, 09h
    lea dx, blank
    int 21h
    mov ah, 09h
    lea dx, blankv
    int 21h
    mov ah, 09h
    lea dx, blankv
    int 21h

    mov ah,09h	
    mov bl,4Eh	; red bg yellow txt
    mov cx,10	
    int 10h

    mov ah, 09h
    lea dx, l9
    int 21h

    mov ah,09h	
    mov bl,77h	; grey
    mov cx,35
    int 10h

    mov ah,02h 
    mov cl,0Ah 	; newline
    mov dl,cl 
    int 21h 

; padding
    mov ah,02h 
    mov cl,20h 	; space
    mov dl,cl 
    int 21h 

    mov ah,09h	
    mov bl,77h	; grey
    mov cx,34	
    int 10h

    mov ah, 09h
    lea dx, blank
    int 21h
    mov ah, 09h
    lea dx, blankv
    int 21h
    mov ah, 09h
    lea dx, blankv
    int 21h

    mov ah,09h	
    mov bl,4Eh	; red bg yellow txt
    mov cx,10
    int 10h

    mov ah, 09h
    lea dx, padding
    int 21h

    mov ah,09h	
    mov bl,77h	; grey
    mov cx,35	
    int 10h

    mov ah,02h 
    mov cl,0Ah 	; newline
    mov dl,cl 
    int 21h 

; empty
    mov ah,02h 
    mov cl,20h 	; space
    mov dl,cl 
    int 21h 

    mov ah,09h	
    mov bl,77h	; grey
    mov cx,78	
    int 10h

    mov ah,02h 
    mov cl,0Ah 	; newline
    mov dl,cl 
    int 21h 

; copyright
    mov ah,02h 
    mov cl,20h 	; space
    mov dl,cl 
    int 21h 

    mov ah,09h	
    mov bl,70h	; grey bg black txt
    mov cx,78	
    int 10h

    mov ah, 09h
    lea dx, l10
    int 21h

    mov ah,02h 
    mov cl,0Ah 	; newline
    mov dl,cl 
    int 21h 

; empty
    mov ah,02h 
    mov cl,20h 	; space
    mov dl,cl 
    int 21h 

    mov ah,09h	
    mov bl,77h	; grey
    mov cx,78	
    int 10h

    mov ah,02h 
    mov cl,0Ah 	; newline
    mov dl,cl 
    int 21h 

    mov ah,02h 
    mov cl,0Ah 	; newline
    mov dl,cl 
    int 21h 

; thank you
    mov ah,09h	
    mov bl,8Eh	; blinking yellow text
    mov cx,46	
    int 10h

    mov ah, 09h
    lea dx, l11
    int 21h

mov ah, 4Ch
int 21h

main endp
end main