.MODEL SMALL
.STACK 100H

.DATA
    MSG DB "RACECAR$"
    VCOUNT DB 0
    
.CODE
MAIN PROC
    MOV AX, @DATA
    MOV DS, AX
    
    MOV AH, 09H
    LEA DX, MSG
    INT 21H
    
    MOV BX, OFFSET MSG
    MOV SI, 00H
    
    MOV CX, 8
    
    MOV AH, 02H
    
    MOV DL, [BX]
    INT 21H
    
    
    
    @LOOP:
        MOV DL, [BX+SI]
        CMP DL, 'A'
        JE VOWEL
        CMP DL, 'E'
        JE VOWEL
        CMP DL, 'I'
        JE VOWEL
        CMP DL, 'O'
        JE VOWEL
        CMP DL, 'U'
        JE VOWEL
        
        INC SI
        CMP SI, 7
        JNZ @LOOP
        JMP PRINT
        
        VOWEL:
            INC VCOUNT
            INC SI
            CMP SI, 7
            JNZ @LOOP
            JMP PRINT
            
            
    PRINT:
        MOV AH, 02
        MOV DL, VCOUNT
        ADD DL, 48
        INT 21H
        
       
    MOV AH, 4CH
    INT 21H
    
    MAIN ENDP
END MAIN