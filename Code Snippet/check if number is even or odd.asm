.MODEL SMALL
.STACK 100H


.DATA
    PROMT DB "ENTER THE NUMBER: $"
    MSG DB 0AH,0DH,"THE NUMBER IS: $",


.CODE
MAIN PROC 
    MOV AX, @DATA           ;Load data
    MOV DS, AX
    
    MOV AH, 9               ;Print promt
    MOV DX, OFFSET PROMT
    INT 21H 
    
    MOV AH, 1               ;Take input number
    INT 21H
    MOV BL, AL              ;Save input in BL register
    
    MOV AH, 9               ;Print MSG
    LEA DX, MSG
    INT 21H
    
    MOV AH, 2               ;Print function
    TEST BL, 01H            ;Check if number is odd 
                            ;set off Zero flag if even
                            
    JNZ ODD                 
    MOV DL, 'E'
    INT 21H
    JMP END
    
    ODD:
    MOV DL, 'O'
    INT 21H
    
    END:
    
    
    
    MOV AH, 4CH
    INT 21H
    MAIN ENDP
END MAIN