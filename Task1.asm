.model small
.stack 100h
.data


arr db 4,1,3,5,6,7 


.code
main proc
    mov ax, @data ;get ref of data
    mov ds, ax
    
  
   ; Si : source index
   
   lea Si, arr ;offset  
   mov cx, 6
   
   LABEL:
   
   mov dl, [Si]
   add dl, 48
   mov ah,2
   int 21h
   
   
   inc Si ; add si, 1 increment
   
   loop LABEL
   
   mov ah, 4ch
   int 21h
    
  
    main endp
end main