org 100h

   
    org 100h
    MOV AX,@DATA
    MOV DS,AX
    
    ;Printing STR1
    
    MOV AH,9
    LEA DX,STR1
    INT 21H
    
    ;Carriage return and newline
   
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H
    
    ;Taking input of 1st number
   
    MOV AH,1
    INT 21H
    MOV BL,AL
    
    ;Carriage return and newline
   
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H
    
    ;Printing STR2
   
    MOV AH,9
    LEA DX,STR2
    INT 21H
    
    ;Carriage return and newline
   
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H
    
    
   
    ;Taking input of 2nd number  
        
    MOV AH,1
    INT 21H
    MOV BH,AL
    
    
    ;Carriage return and newline
   
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H
    
    ;Printing STR3
   
    MOV AH,9
    LEA DX,STR3
    INT 21H
    
    ;Carriage return and newline
   
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H
    
    ;Taking input of 3rd number
    
    MOV AH,1
    INT 21H
    MOV CL,AL
          
          
    ;Comparing of three numbers start here
    
    CMP BL,BH
    JL LA1
    JMP LB1
    
    LA1: CMP BL,CL
    JL LA2
    JMP LB1
    
    
    LA2:
    
    ;Carriage return and newline
    
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H
   
   
    MOV AH,9
    LEA DX,STR4
    INT 21H
    
    
    MOV AH,2
    MOV DL,BL
    INT 21H
    JMP EXIT
   
   LB1: CMP BH,CL
    JL LB2
    JMP LC1
   
  
   LB2:
    
    ;Carriage return and newline
    
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H
    MOV AH,9
    
    LEA DX,STR4
    INT 21H          
    
    
    
    
    
        ;(4)
        
        
    MOV AH,2
    MOV DL,BH
    INT 21H
    JMP EXIT
   
   
   LC1:
    
    ;Carriage return and newline
    
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H
    
    
    MOV AH,9
    LEA DX,STR4
    INT 21H
  
    MOV AH,2
    MOV DL,CL
    INT 21H
    JMP EXIT
    
    
    EXIT:
    MOV AH,4CH
    INT 21H
  
  
  ret
  
  
    STR1 DW 'Enter the first number:$'
    STR2 DW 'Enter the second number:$'
    STR3 DW 'Enter the third number:$'
    STR4 DW 'The smallest number is:$'



