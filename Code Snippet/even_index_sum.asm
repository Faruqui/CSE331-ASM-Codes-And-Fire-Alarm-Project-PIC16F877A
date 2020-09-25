;Write a program in Assembly language that will adds the even index 
;values from an Array of Size 20.

INCLUDE "EMU8086.INC"
.MODEL SMALL
.STACK 100H


.DATA
    
    ARR DB 5, 4, 3, 7, 9, 10, 4, 5, 3, 2, 2, 4 ,5, 1, 4, 3, 7, 8, 9, 2    ;Initilize array

    SUM DB 0                 ; sum = 0

.CODE
MAIN PROC
    MOV AX, @DATA           ;load data
    MOV DS, AX
    
    LEA BX, ARR             ;load the address of the array onto BX register
    
  
    
      
    MOV CX, 10          ;counter =10
    MOV SI, 0H          ; array index
    
    @LOOP: 
        MOV AL, [BX+SI]  ;load the even indexed value form array to AL register
        ADD SUM, AL   
        
        INC SI            ;SI = SI+2
        INC SI
        
        
        DEC CX
        CMP CX, 0
        JNZ @LOOP
        
        
       PRINTN               ;print sum
       PRINT "THE SUM of even indexed NUMBER IS: "
       MOV AH, 2
       MOV DL, SUM
       INT 21H     
        
        
       
    
    
    MOV AH, 4CH
    INT 21H
    MAIN ENDP
END MAIN