INCLUDE 'EMU8086.INC'
.MODEL SMALL4
.STACK 100H
.DATA
A DB ?
B DB ?
.CODE
MAIN PROC
;INPUT 1
MOV AH, 1
INT 21H
MOV A, AL
SUB BL, 48
PRINTN
;INPUT 2
MOV AH, 1
INT 21H
MOV B, AL
SUB B, 48
MOV BH, B
ADD A, BH
ADD A, 48
PRINTN
;PRINT
MOV AH, 2
MOV DL, A
INT 21H
MOV AH, 4CH
INT 21H
MAIN ENDP
END MAIN