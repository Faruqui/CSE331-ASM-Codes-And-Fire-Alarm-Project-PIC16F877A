.MODEL SMALL
.STACK 100H

.DATA
    NUM DB 00011000B    ;Initilize a 8bit binary number
    
.CODE
MAIN PROC
    MOV AX, @DATA        ; load data
    MOV DS, AX
    
    MOV BL, NUM          ; load the binary number into BL register
    MOV BH, 00H
    NOT BL               ; invert the bits
    INC BL               ; add 1
    MOV CX, 8
    
    MOV AH, 2
    LOOP:
        SHL BL, 1        ; Rotate carry left -SHIFT THE BITS OF BX REGISTER TOWARDS CARRY
    
        JC PRINT_ONE     ; If MSB is 1 jump to Print_one
        
        MOV DL, '0'      ; ELSE print 0
        INT 21H
        JMP END_LOOP
        
        PRINT_ONE:       ; print 1
        MOV DL, '1'
        INT 21H
        
        END_LOOP:
        DEC CX            ; count--
        JNZ LOOP          ; jump until count is 0
        
    
    
    MOV AH, 4CH            ;end program
    INT 21H
    MAIN ENDP


END MAIN