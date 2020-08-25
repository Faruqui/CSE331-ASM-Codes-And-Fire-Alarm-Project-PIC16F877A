
.model small
.data
    msg1 db "Enter a string to count it's length: $"
    msg2 db "Length of the string is: $"
    arr db 100 dup ("$")
    
.code
main proc
    mov ax, @data
    mov ds,ax
    
    lea si, arr
    
    mov ah,9        ; showing first msg
    lea dx,msg1
    int 21h
    
    mov ah,0ah
    mov dx,si
    int 21h
    
    mov ah,2          ;newline
    mov dl,0ah
    int 21h
    mov dl,0dh
    int 21h
    
    mov ah,9           ;showing msg2
    lea dx,msg2
    int 21h
    
    mov bl,arr+1       
    
    mov al,bl
    
    aam                ;ASCII Adjust AX after Multiply
    add ax,3030h
    mov dh,al
    mov dl,ah
    
    mov ah,2
    int 21h
    
    mov dl,dh
    mov ah,2
    int 21h
    
    exit:
    mov ah,4ch
    int 21h
    
    main endp

end main








