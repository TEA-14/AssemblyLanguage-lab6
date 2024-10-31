.model small
.stack 100h
.data

arr db 1, 1, 2, 3
sum db ? ; to store the sum

.code 

main proc
    mov ax, @data
    mov ds, ax
    
    lea si, arr
    
    mov cx, 4   
    
    LABEL:
    mov al, [si]     
    add sum, al     
    inc si         
    
    loop LABEL:
      
    mov dl, sum      
    add dl, 48     
    mov ah, 2        
    int 21h          
    
    mov ah, 4Ch     
    int 21h

main endp
end main
