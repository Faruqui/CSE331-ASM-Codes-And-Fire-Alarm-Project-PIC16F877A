.MODEL SMALL
.STACK 100H

.DATA
    
    A DB ?
    B DB ?
    
    MSG1 DB "ENTER NUMBER: $"
    MSG2 DB "SUM OF THE INPUTS: $"



.CODE
MAIN PROC
    MOV AX, @DATA   ; load data
    MOV DS, AX
    
    MOV AH, 9       ; print "Enter number"
    LEA DX, MSG1
    INT 21H
    
    
    MOV AH, 1H      ; take 1st input 
    INT 21H
    MOV A, AL       ; store it in memory location A
    SUB A, 48       ; 
    
    
    INT 21H         ; take 2nd number
    MOV B, AL       ; store it in B
    SUB B, 48
    
    MOV BL, A       ; add the numbers
    ADD BL, B
    ADD BL, 48
    
    MOV AH, 2       ; print new line
    MOV DL, 0AH
    INT 21H
    MOV DL, 0DH
    INT 21H
    
    
    MOV AH, 9       ; print "sum of the inputs"
    LEA DX, MSG2
    INT 21H
    
    MOV AH, 2       ; print the sum A + B
    MOV DL, BL
    INT 21H
    
    
    
    
    MOV AH, 4CH
    INT 21H
    MAIN ENDP
END MAIN