.MODEL SMALL
.STACK 100H

.DATA
    MSG DB "THE UPPER CASE LETTERS ARE: $"
    MSG2 DB 0DH, 0AH, " $"


.CODE
MAIN PROC
    MOV AX, @DATA   ;load data
    MOV DS, AX 
    
    MOV AH, 9       ;print msg
    MOV DX, OFFSET MSG     ;LEA DX, MSG
    INT 21H
    LEA DX, MSG2    ;print a new line
    INT 21H
    
    
    MOV BX, 26      ;set counter to 26(for 26 letters)
    MOV CL, 65      ;ASCII valu for A
    
    MOV AH, 2
    
    MOV DL, 0AH     ;print new line using another method
    INT 21H
    MOV DL, 0DH
    INT 21H
    
    @LOOP:
        MOV DL, CL  ;load current ASCII code to DL
        INT 21H     ; print the current character
        
        MOV DL, 0AH ;print new line
        INT 21H
        MOV DL, 0DH
        INT 21H
        
        INC CL      ; increment ascii value
        DEC BX      ; decrement counter
    
    JNZ @LOOP       ; jump to srat of loop if BX (counter) is not zero 
    
    
    
    
    
    
    MOV AH, 4CH
    INT 21H
    MAIN ENDP
END MAIN