.model small
.stack 100h
.data

.code

main proc
    
    mov ax, @data
    mov ds, ax
    
    mov dl, '0'
    mov cx, 10 ;no of iteration of loop
    
    LABEL:
    
    mov ah,2
    int 21h
    
    inc dl    
    loop LABEL ;end point of the loop: will check if CX is zero or not
    
    
    mov dx, 10
    mov ah, 2
    int 21h
    
    mov dx, 13
    mov ah, 2
    int 21h
    
    
    mov dl, 'A'    
    mov cx, 26 ;no of iteration of loop
    
    LABEL2:
    
    mov ah,2
    int 21h
    
    inc dl    
    loop LABEL2 ;end point of the loop: will check if CX is zero or not
   
    
    mov ah, 4ch
    int 21h

    main endp
end main