
 org 100h 

    ;Initializing Data segment
    
     MOV AX, @DATA
     MOV DS, AX  
    
    
    

    ;Printing "?"
    
     MOV AH,2 
     MOV DL,63
     int 21h
    
    
    ;Newline 
   
     MOV AH,2 
     MOV DL,0DH
     INT 21H
     MOV DL, 0AH
     INT 21H    
    
    
    ;Showing prompt to enter letters
     
     LEA DX, STRING1 
     MOV AH, 9 
     INT 21H 
    
    
   
    
    
    
              
              
   ;Taking capital letters
   
  
     MOV AH, 1
     INT 21H 
     MOV BL, AL 
    
    
     MOV AH, 1
     INT 21H 
     MOV CL, AL  
    
    
    ;Comparing the letters 
    
     CMP BL, CL
     JL SMT
     JG GRT 
    
    
    
    SMT:
    
     MOV AH,2 
     MOV DL,0DH
     INT 21H
     MOV DL, 0AH
     INT 21H
     JMP DISPLAY1 
    
    
    GRT:
    
     MOV AH,2 
     MOV DL,0DH
     INT 21H
     MOV DL, 0AH
     INT 21H
     JMP DISPLAY2
    
                
                
                
    DISPLAY1:
      
      MOV AH, 2
      MOV DL, BL
      INT 21H  
      
      MOV AH, 2
      MOV DL, CL
      INT 21H 
      
      JMP EXIT 
     
    
    DISPLAY2:
      
      MOV AH, 2
      MOV DL, CL
      INT 21H  
      
      MOV AH, 2
      MOV DL, BL
      INT 21H
      
      JMP EXIT 
    
    
    
    EXIT: 
      
      MOV AH, 4CH
      INT 21H
        
    
    
     
 ret  
  
      STRING1 DB 'Enter two capital letters:$'




