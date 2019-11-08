
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

DATA SEGMENT
    MSG DB "HELLO WORLD!$"
ENDS

CODE SEGMENT
    ASSUME DS:DATA CS :CODE

START:
    MOV AX, DATA
    MOV DS, AX
    LEA DX, MSG
    
    MOV AH, 9
    INT 21H
    
    MOV AH, 4CH
    INT 21H
    
ENDS

END START 



   
   
ret




