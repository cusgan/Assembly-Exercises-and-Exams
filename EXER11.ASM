.model small
.stack 100
.data
    emptyline db 59 dup (" "),10,'$'
    emptypart db 26 dup (" "),'$'
    titleline db '           Dear Customer, Welcome to Bambi Bank            ',10,'$'
    
    wthdrw db '      Withdrawal      $'
    paymnt db '       Payment        $'
    balinq db '   Balance Inquiry    $'
    recent db '  Recent Transactions $'
    trnsfr db '       Transfer       $'
    credit db 'Credit Card Operations$'
    change db '      Change PIN      $'
    depost db '       Deposit        $'

    arrowl db ' < $'
    arrowr db ' > $'
.code
blank proc far
    mov ah, 09h
    mov bl, 1Fh ; bg fg
    mov cx, 59 ; no. of chars to change
    int 10h
    mov ah, 09h
    lea dx, emptyline
    int 21h
    retf
blank endp
line proc far
    mov ah, 09h
    mov bl, 1fh ; bg fg
    mov cx, 2 ; no. of chars to change
    int 10h
    mov ah,02h
    mov cl,20h ; space
    mov dl,cl
    int 21h
    mov ah,02h
    mov cl,20h ; space
    mov dl,cl
    int 21h
    mov ah, 09h
    mov bl, 3fh ; bg fg
    mov cx, 26 ; no. of chars to change
    int 10h
    mov ah, 09h
    lea dx, emptypart
    int 21h
    mov ah, 09h
    mov bl, 1Fh ; bg fg
    mov cx, 3 ; no. of chars to change
    int 10h 
    mov ah,02h
    mov cl,20h ; space
    mov dl,cl
    int 21h 
    mov ah,02h
    mov cl,20h ; space
    mov dl,cl
    int 21h 
    mov ah,02h
    mov cl,20h ; space
    mov dl,cl
    int 21h
    mov ah, 09h
    mov bl, 3Fh ; bg fg
    mov cx, 26 ; no. of chars to change
    int 10h
    mov ah, 09h
    lea dx, emptypart
    int 21h
    mov ah, 09h
    mov bl, 1fh ; bg fg
    mov cx, 2 ; no. of chars to change
    int 10h
    mov ah,02h
    mov cl,20h ; space
    mov dl,cl
    int 21h
    mov ah,02h
    mov cl,20h ; space
    mov dl,cl
    int 21h
    mov ah,02h
    mov cl,0Ah ; newline
    mov dl,cl
    int 21h
    
    retf
line endp
left proc far
    push dx
    mov ah, 09h
    mov bl, 1fh ; bg fg
    mov cx, 2 ; no. of chars to change
    int 10h
    mov ah,02h
    mov cl,20h ; space
    mov dl,cl
    int 21h
    mov ah,02h
    mov cl,20h ; space
    mov dl,cl
    int 21h
    mov ah, 09h
    mov bl, 3fh ; bg fg
    mov cx, 26 ; no. of chars to change
    int 10h
    mov ah, 09h
    lea dx, arrowl
    int 21h
    mov ah, 09h
    pop dx
    int 21h
    mov ah,02h
    mov cl,20h ; space
    mov dl,cl
    int 21h
    mov ah, 09h
    mov bl, 1Fh ; bg fg
    mov cx, 3 ; no. of chars to change
    int 10h
    mov ah,02h
    mov cl,20h ; space
    mov dl,cl
    int 21h 
    mov ah,02h
    mov cl,20h ; space
    mov dl,cl
    int 21h 
    mov ah,02h
    mov cl,20h ; space
    mov dl,cl
    int 21h
    retf
    
left endp
right proc far
    push dx
    mov ah, 09h
    mov bl, 3fh ; bg fg
    mov cx, 26 ; no. of chars to change
    int 10h
    mov ah,02h
    mov cl,20h ; space
    mov dl,cl
    int 21h
    mov ah, 09h
    pop dx
    int 21h
    mov ah, 09h
    lea dx, arrowr
    int 21h
    mov ah, 09h
    mov bl, 1fh ; bg fg
    mov cx, 2 ; no. of chars to change
    int 10h
    mov ah,02h
    mov cl,20h ; space
    mov dl,cl
    int 21h
    mov ah,02h
    mov cl,20h ; space
    mov dl,cl
    int 21h
    mov ah,02h
    mov cl,0Ah ; newline
    mov dl,cl
    int 21h
    
    retf
right endp
main proc
    mov ax, @data
    mov ds, ax
mov ah,02h
mov cl,0Ah ; newline
mov dl,cl
int 21h

    mov ah, 09h
    mov bl, 3Fh
    mov cx, 59
    int 10h
    mov ah, 09h
    lea dx, emptyline
    int 21h
    mov ah, 09h
    mov bl, 3Fh
    mov cx, 59
    int 10h
    mov ah, 09h
    lea dx, titleline
    int 21h
    mov ah, 09h
    mov bl, 3Fh
    mov cx, 59
    int 10h
    mov ah, 09h
    lea dx, emptyline
    int 21h

    call blank
    call line
    lea dx, wthdrw
    call left
    lea dx, paymnt
    call right
    call line
    call blank

    call blank
    call line
    lea dx, balinq
    call left
    lea dx, recent
    call right
    call line
    call blank

    call blank
    call line
    lea dx, trnsfr
    call left
    lea dx, credit
    call right
    call line
    call blank

    call blank
    call line
    lea dx, change
    call left
    lea dx, depost
    call right
    call line
    call blank

mov ah,02h
mov cl,0Ah ; newline
mov dl,cl
int 21h
    mov ah,02h
    mov dl,20h
    int 21h

mov ah, 4Ch
int 21h

main endp
end main