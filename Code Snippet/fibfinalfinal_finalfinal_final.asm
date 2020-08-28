.MODEL SMALL
.DATA
    PROMPT DB 'Enter the Nth term number to find (1-8): $'
    OUTPUT DB 'Result: $'
.CODE
    START: MOV AX, @DATA
    MOV DS, AX
    LEA DX, PROMPT
    MOV AH, 9
    INT 21H  
    MOV DX, 0
    MOV BH, 0
    MOV AH, 1
    INT 21H
    SUB AL, 48
    MOV CX, 0
    DEC AL
    MOV CL, AL 
    MOV DL, 2
    FIB: 
        MOV AX, 0
        MOV BX, 1
        CMP CX, 0
        JE DISPLAY
        L1:
            ADD AX, BX 
            PUSH AX
            MOV AX, BX
            POP BX
        LOOP L1  
        MOV CX, BX
        DEC CX
        DEC DL
        CMP DL, 0
    JG FIB
    DISPLAY:
        MOV DX, 13
        MOV AH, 2
        INT 21H
        MOV DX, 10
        MOV AH, 2
        INT 21H
        LEA DX, OUTPUT
        MOV AH, 9
        INT 21H
        MOV AX, BX
        MOV CX, 0
        MOV BX, 10  
        DIVIDE:
            MOV DX, 0 
            DIV BX
            PUSH DX   
            INC CX    
            CMP AX, 0
        JNE DIVIDE   
        PRINT:
            POP  DX
            ADD  DL, 48   
            MOV  AH, 2 
            INT  21H
        LOOP PRINT   
    END START