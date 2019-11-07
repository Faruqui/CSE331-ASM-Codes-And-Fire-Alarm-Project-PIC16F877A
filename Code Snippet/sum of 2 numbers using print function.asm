INCLUDE "EMU8086.INC"

.MODEL SMALL
.STACK 100H

.DATA

    A DB ?     ; int A
    B DB ?     ; int B


.CODE
MAIN PROC
    
    PRINT "ENTER 1ST NUMBER: "
    
    MOV AH, 1  ; take input
    INT 21H
    MOV A, AL  ; A = input
    SUB A, 48  ; adjust for ascii value
    
    PRINTN
    PRINT "ENTER 2ND NUMBER: "
    INT 21H    ; take 2nd input
    MOV B, AL
    SUB B, 48
                
    MOV BL, A   ; load one input in a reg and add with other one
    ADD BL, B
    ADD BL, 48
     
    PRINTN 
    PRINT "SUM OF 2 NUMBERS IS: " 
    MOV AH, 2   ; print the sum
    MOV DL, BL
    INT 21H
    
    
    
    MOV AH, 4CH
    INT 21H
    MAIN ENDP
END MAIN