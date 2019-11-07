.MODEL SMALL
.STACK 100H

.DATA


.CODE
MAIN PROC
    
    
    MOV AH, 1H    ; TAKE INPUT AND STORE IT IN AL REG
    INT 21H
    
    MOV BL, AL    ; STORE THE INPUT IN BL
    
    
    MOV AH, 2      ; PRINT NEW LINE
    MOV DL, 0AH
    INT 21H
    MOV DL, 0DH
    INT 21H
    
    MOV AH, 2      ; PRINT THE INPUT STORED IN BL
    MOV DL, BL
    INT 21H
    
    
    
    
    MOV AH, 4CH
    INT 21H
    MAIN ENDP
END MAIN