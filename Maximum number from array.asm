DATA SEGMENT
    ARRAY DB 2,7,3,4,10,12
    LEN DW 6
    MAX DB ?
    DATA ENDS
CODE SEGMENT
    ASSUME CS:CODE , DS:DATA
START:
    MOV AX,DATA
    MOV DS,AX       
    MOV SI,0
    MOV AL,ARRAY[SI]
    MOV CX,LEN
    CMP CX,1
    JE RESULT
    DEC CX
CHECK:
    INC SI
    MOV BL,ARRAY[SI]
    CMP AL,BL
    JG LEV
    MOV AL,BL
LEV:
    LOOP CHECK
RESULT:
    MOV MAX,AL
    END START
    CODE ENDS
