.MODEL SMALL
.STACK 100H

.DATA
    
    NUM DB 48
    CHAR DB 'A'
    MSG DB "HELLO WORLD$"
    
.CODE

MAIN PROC
    
    MOV AX, @DATA     ; LOAD DATA
    MOV DS, AX
                      ;PRINT NUMBER/CHARACRER
    MOV AH, 2
    MOV DL, NUM
    INT 21H
    
    MOV AH, 2          ; PRINT NEW LINE
    MOV DL, 0AH
    INT 21H
    MOV DL, 0DH
    INT 21H
    
    MOV AH, 9          ; PRINT STRING
    LEA DX, MSG
    INT 21H
    
    
    
    MOV AH, 4CH         ; RETURN CONTROL TO OS
    INT 21H
    MAIN ENDP

END MAIN