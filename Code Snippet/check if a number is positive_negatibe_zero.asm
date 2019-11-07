INCLUDE "EMU8086.INC"
.MODEL SMALL
.STACK 100H

.DATA


.CODE
MAIN PROC
    MOV BX, -10
    MOV CX, 20
    
    CMP BX, 0   ; COMPARE BX WITH 0
    JL IF       ; JUMP @IF IF  BX<0 /NEGATIVE
    JG ELSE_IF  ; JUMP @ELSE_IF BX>0 /POSITIVE
    JE ELSE     ; JUMP @ELSE FOR BX=0
    
    IF:
        PRINTN "THE NUMBER IS NEGATIVE"
        JMP END_IF
        
        ELSE_IF:
        PRINTN "THE NUMBER IS POSITIVE"
        JMP END_IF
        
        ELSE:
        PRINTN "THE NUMBER IS 0"
        JMP END_IF
     
    END_IF: 
    
    
    
    MOV AH, 4CH
    INT 21H
    MAIN ENDP
END MAIN
