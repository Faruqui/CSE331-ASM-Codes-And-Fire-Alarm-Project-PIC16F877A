.MODEL SMALL
.STACK 100H


.DATA
    PROMT DB "ENTER LETTER: $"
    MSG1 DB 0AH,0DH,"Upper Case LETTER$"
    MSG2 DB 0AH,0DH,"Lower Case LETTER$"
    

.CODE
MAIN PROC
    MOV AX, @DATA       ;load data
    MOV DS, AX
    
    MOV AH, 9           ; print promt
    LEA DX, PROMT
    INT 21H
    
    
    MOV AH, 1           ; take input letter
    INT 21H
    MOV BL, AL          ;store input in BL
    
    
    
    MOV AH, 9           ; for printing string
    CMP BL, 90          ; compare with ASCII value of Z
    JLE CAPITAL         ; ASCII values of capital letters are less than 90
    
    MOV DX, OFFSET MSG2 ; print "Lower case letter"
    INT 21H
    JMP END
    
    CAPITAL:
    LEA DX, MSG1        ; print "Upper Case Letter"
    INT 21H
    
    
    
    END:                ; End
    MOV AH, 4CH
    INT 21H
    MAIN ENDP
END MAIN