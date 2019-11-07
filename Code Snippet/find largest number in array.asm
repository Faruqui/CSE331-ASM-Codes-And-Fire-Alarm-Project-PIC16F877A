INCLUDE "EMU8086.INC"
.MODEL SMALL
.STACK 100H


.DATA
    
    ARR DB 5, 4, 3, 7, 9    ;Initilize array
    MAX DB ?                ;create MAX variable
    COUNT DB 4              ;initialize counter

.CODE
MAIN PROC
    MOV AX, @DATA           ;load data
    MOV DS, AX
    
    LEA BX, ARR             ;load the address of the array onto BX register
    
     
    PRINT "THE 1ST NUMBER IS: " ;print 1st number of the array
    MOV AH, 2
    MOV DL, [BX]
    ADD DL, 48
    INT 21H
    
    MOV DL, [BX]            ;load the 1st number of array
    MOV MAX, DL             ;store the number inside variable MAX
    MOV SI, 1H              ;set indexing register valu to 1
    
    @LOOP:
        MOV DL, MAX         ;move MAX to DL register
        MOV AL, [BX+SI]     ;move current index number onto AL
        CMP DL, AL          ;compare MAX and current number
        JGE GREATER         ;if MAX is greater or equal
        JL LESS             ;if MAX is smaller that current number
        
        LESS:               ;set current number as MAX
            MOV DL, [BX+SI]
            MOV MAX, DL
            JMP LOOP_END
            
        GREATER:
            JMP LOOP_END
            
    LOOP_END:
        INC SI              ;increase Index number
        DEC COUNT           ;decrease counter   c--
        CMP COUNT, 0        ;c>=0
        JNZ @LOOP
            
       
       PRINTN               ;print greatest number
       PRINT "THE GREATEST NUMBER IS: "
       MOV AH, 2
       MOV DL, MAX
       ADD DL, 48
       INT 21H 
        
        
               
    
    
    
    MOV AH, 4CH
    INT 21H
    MAIN ENDP
END MAIN