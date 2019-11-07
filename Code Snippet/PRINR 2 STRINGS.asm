
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt


.MODEL SMALL
.STACK 100H

DATA SEGMENT
    STR_1 DB "HELLO$"
    STR_2 DB "WORLD$"
ENDS

CODE SEGMENT
    ASSUME DS:DATA CS:CODE
    
START:
    MOV AX, DATA
    MOV DS, AX
    LEA DX, STR_1
    
    MOV AH, 9
    INT 21H 
    
    MOV AH, 2
    MOV DL, 0DH
    INT 21H
    
    MOV DL, 0AH
    INT 21H
    
    LEA DX, STR_2
    MOV AH, 9
    INT 21H
    
    
    
    MOV AH, 4CH
    INT 21H
    
    
    
ENDS

END START
    
    



