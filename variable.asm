.MODEL SMALL
.STACK 100H
.DATA 
F1 DB 7
.CODE
MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
    
    
    MOV AH,2
    ADD F1,48
    MOV DL,F1
    INT 21H
    
    
    MOV AH,4CH
    INT 21H
    
    MAIN ENDP
END MAIN