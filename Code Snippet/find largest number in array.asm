INCLUDE "EMU8086.INC"
.MODEL SMALL
.STACK 100H


.DATA
    
    ARR DB 5, 4, 3, 7, 9
    MAX DB ?
    COUNT DB 4

.CODE
MAIN PROC
    MOV AX, @DATA
    MOV DS, AX
    
    LEA BX, ARR
     
    PRINT "THE 1ST NUMBER IS: " 
    MOV AH, 2
    MOV DL, [BX]
    ADD DL, 48
    INT 21H
    
    MOV DL, [BX]
    MOV MAX, DL
    MOV SI, 1H
    
    @LOOP:
        MOV DL, MAX
        MOV AL, [BX+SI]
        CMP DL, AL
        JGE GREATER
        JL LESS
        
        LESS:
            MOV DL, [BX+SI]
            MOV MAX, DL
            JMP LOOP_END
        GREATER:
            JMP LOOP_END
            
        LOOP_END:
            INC SI
            DEC COUNT
            CMP COUNT, 0
            JNZ @LOOP
            
       PRINTN
       PRINT "THE GREATEST NUMBER IS: "
       MOV AH, 2
       MOV DL, MAX
       ADD DL, 48
       INT 21H 
        
        
               
    
    
    
    MOV AH, 4CH
    INT 21H
    MAIN ENDP
END MAIN