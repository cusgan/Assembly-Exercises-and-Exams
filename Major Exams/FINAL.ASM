; Filename: FINAL.ASM
; CS243 Lab Hands-on Final Exam 
; First Semester SY 2024-2025
; Student Name: FELISA MELANIE FAY G. BASCUG
; Date Finished: December 12, 2024

.model small
.stack 100h
.data  
    ;opening screen
    header db "Cebu Institute of Technology - University", 0ah
            db "College of Computer Studies", 0ah
            db "FAVORITE CLASSMATE VOTING SYSTEM", 0ah
            db "Programmer: FELISA MELANIE FAY G. BASCUG", 0ah, "$"
 
    menuPrompt      db 0ah,'Main Menu$'
    menuPrompt1      db '1. Vote$'
    menuPrompt2      db '2. View$'
    menuPrompt3      db '3. Update$'
    menuPrompt4      db '4. Delete$'
    menuPrompt5      db '5. Exit$'
    menuPrompt6      db 'Enter Choice: $'
    userChoice     db ?
 
    editPrompt db 0ah,0ah,'Enter record number to update: ','$'
    deletePrompt db 0ah,0ah,'Enter record number to delete: ','$'
    deleted db 0ah, 0ah, 'Record deleted.', '$'
    recordNumber   db ?
 
    ; PROMPT ITEM NAME
    recordNamePrompt1 db 0ah,0ah,'Enter candidate name: $'
    recordNamePrompt2 db 0ah,'Enter candidate name: $'
    recordNamePrompt3 db 0ah,'Enter candidate name: $'
    recordNamePrompt4 db 0ah,'Enter candidate name: $'
    recordNamePrompt5 db 0ah,'Enter candidate name: $'
 
    ; USERINPUT ITEM NAME
    recordNameInput1 db 50, ?, 50 dup(' ')
    recordNameInput2 db 50, ?, 50 dup(' ')
    recordNameInput3 db 50, ?, 50 dup(' ')
    recordNameInput4 db 50, ?, 50 dup(' ')
    recordNameInput5 db 50, ?, 50 dup(' ')
 
    ; PROMPT ITEM PRICE
    ratingPrompt db 0ah,'Enter vote rating (1 - 100): $'
    back2main db 0ah,0ah , 'Press any key to go back to Main Menu... $'
 
    ; USERINPUT ITEM PRICE
    itemPriceInput1 db 50, ?, 50 dup(' ')
    itemPriceInput2 db 50, ?, 50 dup(' ')
    itemPriceInput3 db 50, ?, 50 dup(' ')
    itemPriceInput4 db 50, ?, 50 dup(' ')
    itemPriceInput5 db 50, ?, 50 dup(' ')
 
    ;PRICE & QUANTITY DISPLAY
    price_msg DB ' - '
 
 
    outputHeader db 'View', 0ah, '$'
    vote db 'Vote', 0ah, '$'
    update db 'Update', 0ah, '$'
    delete db 'Delete', 0ah, '$'
 
    outputrecordName1 db 0ah,'1. $'
    outputrecordName2 db 0ah,'2. $'
    outputrecordName3 db 0ah,'3. $'
    outputrecordName4 db 0ah,'4. $'
    outputrecordName5 db 0ah,'5. $'
 
    footer     db 0ah,0ah, 'Exiting...'
               db 0ah, 'Thank you for using Favorite Classmate Voting System.', 0ah, 0ah, '$'
 
.code
start:
    mov ax, @data
    mov ds, ax
 
    mov ax, 3
    int 10h
   
    mov ah, 06h
    xor al, al
    xor cx, cx
    int 10h
 
    lea dx, header
    mov ah, 9
    int 21h
 
mainMenu:
    mov ax, 3
    int 10h
   
   
main_Menu:
 
    lea dx, header
    mov ah, 9
    int 21h
 
    lea dx, menuPrompt
    mov ah, 9
    int 21h
 
    mov ah,02h
    mov cl,0Ah ; newline
    mov dl,cl
    int 21h
    
    mov ah, 09h
    mov bl, 5Fh ; bg fg
    mov cx,  7; no. of chars to change
    int 10h
   
    mov ah, 09h
    lea dx, menuPrompt1
    int 21h
    mov ah,02h
    mov cl,0Ah ; newline
    mov dl,cl
    int 21h
    
    mov ah, 09h
    mov bl, 4Fh ; bg fg
    mov cx,  7; no. of chars to change
    int 10h
   
    mov ah, 09h
    lea dx, menuPrompt2
    int 21h
    mov ah,02h
    mov cl,0Ah ; newline
    mov dl,cl
    int 21h
    
    mov ah, 09h
    mov bl, 2Fh ; bg fg
    mov cx, 9; no. of chars to change
    int 10h
   
    mov ah, 09h
    lea dx, menuPrompt3
    int 21h
    mov ah,02h
    mov cl,0Ah ; newline
    mov dl,cl
    int 21h
    
    mov ah, 09h
    mov bl, 1Fh ; bg fg
    mov cx, 9; no. of chars to change
    int 10h
   
    mov ah, 09h
    lea dx, menuPrompt4
    int 21h
    mov ah,02h
    mov cl,0Ah ; newline
    mov dl,cl
    int 21h
   
    mov ah, 09h
    lea dx, menuPrompt5
    int 21h
    
    mov ah,02h
    mov cl,0Ah ; newline
    mov dl,cl
    int 21h
   
    mov ah, 09h
    lea dx, menuPrompt6
    int 21h
 
    mov ah, 1              
    int 21h                    
    mov userChoice, al
 
    cmp userChoice, '1'
    je CreateItemsList
    cmp userChoice, '2'
    je ViewItemsList
    cmp userChoice, '3'
    je EditItemsList
    cmp userChoice, '4'
    je DeleteItemsList
    cmp userChoice, '5'
    je Exit_Program
 
    jmp mainMenu
 
CreateItemsList:
    mov ax, 3
    int 10h
 
    mov ah, 09h
    lea dx, header
    int 21h
    mov ah, 09h
    lea dx, vote
    int 21h
    
    call createItem
 
    lea dx, back2main
    mov ah, 9
    int 21h
    ;wait for enter key
    MOV AH, 01H            
    INT 21H
 
    mov ax, 3
    int 10h
 
    jmp mainMenu
 
ViewItemsList:
    mov ax, 3
    int 10h

    call viewItems
 
    lea dx, back2main
    mov ah, 9
    int 21h
    ;wait for enter key
    MOV AH, 01H            
    INT 21H
 
    mov ax, 3
    int 10h
 
    jmp main_Menu
 
EditItemsList:
    mov ax, 3
    int 10h
 
    call editItem
 
    lea dx, back2main
    mov ah, 9
    int 21h
    ;wait for enter key
    MOV AH, 01H            
    INT 21H
 
    mov ax, 3
    int 10h
    jmp mainMenu
 
DeleteItemsList:
    mov ax, 3
    int 10h
 
    call deleteItem
 
    lea dx, back2main
    mov ah, 9
    int 21h
    ;wait for enter key
    MOV AH, 01H            
    INT 21H
 
    mov ax, 3
    int 10h
 
    jmp mainMenu
 
Exit_Program:
 
    call exitProgram
 
 
;----------------get inputs--------------------
createItem:
    ;item1
    call enterName1
 
    ;item2
    call enterName2
 
    ;item3
    call enterName3
 
    ;item4
    call enterName4
 
    ;item5
    call enterName5
    ret
 
;---------------summary output-------------
viewItems:
    ;item1
    mov ah,02h
    mov cl,0Ah ; newline
    mov dl,cl
    int 21h
    
    mov ah, 09h
    mov bl, 4Fh ; bg fg
    mov cx, 4 ; no. of chars to change
    int 10h
    lea dx, outputHeader
    mov ah, 9
    int 21h
 
    lea dx, outputrecordName1
    mov ah, 9
    int 21h
 
    xor bx, bx
    mov bl, recordNameInput1[1]
    mov recordNameInput1[bx+2], '$'
    lea dx, recordNameInput1 + 2
    mov ah, 09h
    int 21h
 
 
    xor bx, bx
    mov bl, itemPriceInput1[1]
    mov itemPriceInput1[bx+2], '$'
    lea dx, itemPriceInput1 + 2
    mov ah, 09h
    int 21h
 
    ;item2
    lea dx, outputrecordName2
    mov ah, 9
    int 21h
 
    xor bx, bx
    mov bl, recordNameInput2[1]
    mov recordNameInput2[bx+2], '$'
    lea dx, recordNameInput2 + 2
    mov ah, 09h
    int 21
 
    xor bx, bx
    mov bl, itemPriceInput2[1]
    mov itemPriceInput2[bx+2], '$'
    lea dx, itemPriceInput2 + 2
    mov ah, 09h
    int 21h
 
   
    ;item3
    lea dx, outputrecordName3
    mov ah, 9
    int 21h
 
    xor bx, bx
    mov bl, recordNameInput3[1]
    mov recordNameInput3[bx+2], '$'
    lea dx, recordNameInput3 + 2
    mov ah, 09h
    int 21h
 
 
    xor bx, bx
    mov bl, itemPriceInput3[1]
    mov itemPriceInput3[bx+2], '$'
    lea dx, itemPriceInput3 + 2
    mov ah, 09h
    int 21h
 
    ;item4
    lea dx, outputrecordName4
    mov ah, 9
    int 21h
   
    xor bx, bx
    mov bl, recordNameInput4[1]
    mov recordNameInput4[bx+2], '$'
    lea dx, recordNameInput4 + 2
    mov ah, 09h
    int 21h
 
    xor bx, bx
    mov bl, itemPriceInput4[1]
    mov itemPriceInput4[bx+2], '$'
    lea dx, itemPriceInput4 + 2
    mov ah, 09h
    int 21h
 
    ;item5
    lea dx, outputrecordName5
    mov ah, 9
    int 21h
 
    xor bx, bx
    mov bl, recordNameInput5[1]
    mov recordNameInput5[bx+2], '$'
    lea dx, recordNameInput5 + 2
    mov ah, 09h
    int 21h
 
    xor bx, bx
    mov bl, itemPriceInput5[1]
    mov itemPriceInput5[bx+2], '$'
    lea dx, itemPriceInput5 + 2
    mov ah, 09h
    int 21h
 
    ret
 
;-------------------update items---------------
editItem:
    lea dx, editPrompt
    mov ah, 9
    int 21h
 
    mov ah, 1                
    int 21h
    mov recordNumber, al      
 
    cmp recordNumber, '1'        
    je enterName1          
   
    cmp recordNumber, '2'        
    je enterName2            
   
    cmp recordNumber, '3'        
    je enterName3  
 
    cmp recordNumber, '4'        
    je enterName4          
   
    cmp recordNumber, '5'        
    je enterName5          
   
    ret                      
 
 
;-------------------storing item names---------------
enterName1:
    lea dx, recordNamePrompt1
    mov ah, 9
    int 21h            
 
    mov ah, 0Ah
    lea dx, recordNameInput1
    int 21h
   
    call enterPrice1
   
    ret
 
enterName2:
    lea dx, recordNamePrompt2
    mov ah, 9
    int 21h            
 
    mov ah, 0Ah
    lea dx, recordNameInput2
    int 21h
 
    call enterPrice2
 
    ret
 
enterName3:
    lea dx, recordNamePrompt3
    mov ah, 9
    int 21h            
 
    mov ah, 0Ah
    lea dx, recordNameInput3
    int 21h
 
    call enterPrice3
 
    ret
 
enterName4:
    lea dx, recordNamePrompt4
    mov ah, 9
    int 21h            
 
    mov ah, 0Ah
    lea dx, recordNameInput4
    int 21h
 
   
    call enterPrice4
 
    ret
 
enterName5:
    lea dx, recordNamePrompt5
    mov ah, 9
    int 21h            
 
    mov ah, 0Ah
    lea dx, recordNameInput5
    int 21h
 
    call enterPrice5
    ret
 
enterPrice1:
    lea dx, ratingPrompt
    mov ah, 9
    int 21h            
 
    mov ah, 0Ah
    lea dx, itemPriceInput1
    int 21h
    ret
 
enterPrice2:
    lea dx, ratingPrompt
    mov ah, 9
    int 21h            
 
    mov ah, 0Ah
    lea dx, itemPriceInput2
    int 21h
    ret
 
enterPrice3:
    lea dx, ratingPrompt
    mov ah, 9
    int 21h            
 
    mov ah, 0Ah
    lea dx, itemPriceInput3
    int 21h
    ret
 
enterPrice4:
    lea dx, ratingPrompt
    mov ah, 9
    int 21h            
 
    mov ah, 0Ah
    lea dx, itemPriceInput4
    int 21h
    ret
 
enterPrice5:
    lea dx, ratingPrompt
    mov ah, 9
    int 21h            
 
    mov ah, 0Ah
    lea dx, itemPriceInput5
    int 21h
    ret
 
 
;-------------------delete items----------------
deleteItem:
    lea dx, deletePrompt
    mov ah, 9
    int 21h
 
    ; Get item number to delete
    mov ah, 1
    int 21h
    mov recordNumber, al
 
    ; Based on number, clear the corresponding input
    cmp recordNumber, '1'
    je clearItem1
    cmp recordNumber, '2'
    je clearItem2
    cmp recordNumber, '3'
    je clearItem3
    cmp recordNumber, '4'
    je clearItem4
    cmp recordNumber, '5'
    je clearItem5
 
   
 
    ret
 
clearItem1:
    lea dx, recordNameInput1
    mov ah, 0Ah
    lea dx, recordNameInput1
    mov byte ptr [recordNameInput1], 50
    mov byte ptr [recordNameInput1 + 1], 0
 
    call clearPrice1
   
    ret
 
clearItem2:
    lea dx, recordNameInput2
    mov ah, 0Ah
    lea dx, recordNameInput2
    mov byte ptr [recordNameInput2], 100
    mov byte ptr [recordNameInput2 + 1], 0
 
    call clearPrice2
    ret
 
clearItem3:
    lea dx, recordNameInput3
    mov ah, 0Ah
    lea dx, recordNameInput3
    mov byte ptr [recordNameInput3], 100
    mov byte ptr [recordNameInput3 + 1], 0
 
    call clearPrice3
    ret
 
clearItem4:
    lea dx, recordNameInput4
    mov ah, 0Ah
    lea dx, recordNameInput4
    mov byte ptr [recordNameInput4], 100
    mov byte ptr [recordNameInput4 + 1], 0
 
    call clearPrice4
    ret
 
clearItem5:
    lea dx, recordNameInput5
    mov ah, 0Ah
    lea dx, recordNameInput5
    mov byte ptr [recordNameInput5], 100
    mov byte ptr [recordNameInput5 + 1], 0
 
    call clearPrice5
    ret
 
clearPrice1:
    lea dx, itemPriceInput1
    mov ah, 0Ah
    lea dx, itemPriceInput1
    mov byte ptr [itemPriceInput1], 50
    mov byte ptr [itemPriceInput1 + 1], 0
 
    lea dx, deleted
    mov ah, 9
    int 21h
 
    ret
 
clearPrice2:
    lea dx, itemPriceInput2
    mov ah, 0Ah
    lea dx, itemPriceInput2
    mov byte ptr [itemPriceInput2], 50
    mov byte ptr [itemPriceInput2 + 1], 0
 
    lea dx, deleted
    mov ah, 9
    int 21h
 
    ret
 
clearPrice3:
    lea dx, itemPriceInput3
    mov ah, 0Ah
    lea dx, itemPriceInput3
    mov byte ptr [itemPriceInput3], 50
    mov byte ptr [itemPriceInput3 + 1], 0
 
    lea dx, deleted
    mov ah, 9
    int 21h
 
    ret
 
clearPrice4:
    lea dx, itemPriceInput4
    mov ah, 0Ah
    lea dx, itemPriceInput4
    mov byte ptr [itemPriceInput4], 50
    mov byte ptr [itemPriceInput4 + 1], 0
 
    lea dx, deleted
    mov ah, 9
    int 21h
 
    ret
 
clearPrice5:
    lea dx, itemPriceInput5
    mov ah, 0Ah
    lea dx, itemPriceInput5
    mov byte ptr [itemPriceInput5], 50
    mov byte ptr [itemPriceInput5 + 1], 0
 
    lea dx, deleted
    mov ah, 9
    int 21h
 
    ret
 
;----------------------end prog-----------------
exitProgram:
    lea dx, footer
    mov ah, 09h
    int 21h
 
    mov ah, 4Ch
    int 21h
 
end start