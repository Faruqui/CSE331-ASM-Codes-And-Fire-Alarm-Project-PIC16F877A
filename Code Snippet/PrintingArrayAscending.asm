.model small
.stack 100h 

.data 
        n db 1d,5d,2d,6d,9d,8d,4d,3d  ;given data to be sorted
        
        count dw 8
   
.code   
begin:   

         
            ; main part 
        
     
        mov ax,@data
        mov ds,ax 
            

    
   
       mov cx, count ;cx=8
       dec cx        ;cx=7 
       
   
 nextscan:mov bx,cx 
            
         mov si, 0
         
 nextcomp:mov al,n[si] 
          mov dl, n[si+1]
          cmp al,dl
          jc noswap
          mov n[si], dl
          mov n[si+1],al 
          
   noswap:inc si
          dec bx
          jnz nextcomp
          loop nextscan
          
          
         
         
         mov bx,offset n
         mov cx,8d
       nsu: 
            mov al,[bx]
            mov ah,2
            add al, 48
            mov dl,al 
            int 21h
            inc bx
            loop nsu
          
         
          mov ah,4ch
         
          int 21h
         
          end begin
          
          
ret

   
   
   




