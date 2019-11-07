.MODEL SMALL
.STACK 100H

.DATA
    MSG DB 0AH, 0DH,"THE NUMBERS ARE: $"   ; NEW LINE + message
    COUNT DB 10                            ; Initialize count count=10
    
.CODE
MAIN PROC
    
    MOV AX, @DATA                           ;Load data
    MOV DS, AX
    
                                            ;print msg
    LEA DX, MSG
    MOV AH, 9
    INT 21H
                                            ; ASCII value for 0
    MOV CL, 48
                                            ; Print function
    MOV AH, 2
                                            ; Loop start
    @LOOP:                                  ; print new line
        MOV DL, 0AH
        INT 21H
        MOV DL, 0DH
        INT 21H
                                            ; print char/num for current ASCII value
        MOV DL, CL
        INT 21H
        
        
        
        INC CL                              ; increase ASCII value for next number
        DEC COUNT                           ;decrement counter c--
        JNZ @LOOP                           ;loop condition check
    
       
    
    MOV AH, 4CH
    INT 21H
    MAIN ENDP
END MAIN