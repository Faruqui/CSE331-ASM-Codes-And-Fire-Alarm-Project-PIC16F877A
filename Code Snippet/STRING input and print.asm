.MODEL SMALL
.STACK 100H

.DATA
    MSG DB 10, 13, "ENTER A STRING: $"
    BUF DB 255,256 DUP(0)


.CODE
MAIN PROC
    MOV AX, @DATA
    MOV DS, AX
    
    MOV AH, 9       ;PRINT MESSAGE
    LEA DX, MSG
    INT 21H
    
    MOV AH, 0AH     ;TAKE STRING INPUT
    LEA DX, BUF
    INT 21H
    
    
    XOR BX, BX      ;CLAER BX REGISTER
    MOV BL, BUF[1]
    MOV BUF[BX+2], '$'
    MOV DX, OFFSET BUF+2
    
    MOV AH, 9
    INT 21H
    
    
    
    
    
    
    
    MOV AX, 4CH
    INT 21H
    MAIN ENDP
END MAIN