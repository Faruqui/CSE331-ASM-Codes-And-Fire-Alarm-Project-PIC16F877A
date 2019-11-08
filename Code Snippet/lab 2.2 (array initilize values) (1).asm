
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h
                 
                 
arr db 24 dup (0)

mov bx, offset arr ; offset = pointer start in C
mov [bx+ 7], 2
mov [bx+ 8], 3
mov [bx+ 9], 4
mov [bx+ 10], 5
mov [bx+ 11], 6
mov [bx+ 12], 7
mov [bx+ 13], 8
mov [bx+ 14], 9
mov [bx+ 15], 2
mov [bx+ 16], 3
mov [bx+ 17], 4
mov [bx+ 18], 5
mov [bx+ 19], 6
mov [bx+ 20], 7
mov [bx+ 21], 8
mov [bx+ 22], 9
mov [bx+ 23], 10



   
   
ret




