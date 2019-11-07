
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

MOV AL, 05H
MOV BL, 04H
          
MOV CL, 0H          
ADD CL, AL
ADD CL, BL
          

CMP AL, 1

ret




