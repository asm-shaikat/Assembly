;WRITE A COUNT CONTROLLED LOOP  TO DISPLAY A ROW OF 80 STARS.

INCLUDE "EMU8086.INC"
.MODEL SMALL
.STACK 100H
.CODE
MAIN PROC
    MOV CX,80
    MOV AH,2
    MOV DL,"*"
    INS1:
        INT 21H
        LOOP INS1
    MOV AH,4CH
    INT 21H
    
    MAIN ENDP
END MAIN
   