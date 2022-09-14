DATA SEGMENT
    MULTIPLICANT DW 204AH
    MULTIPLIER DW 3B2AH
    PRODUCER DW 2 DUP (2)
    DATA ENDS 
CODE SEGMENT 
    ASSUME CS:CODE, DS:DATA
START: 
    MOV AX, DATA
    MOV DS, AX
    MOV AX, MULTIPLICANT
    MUL MULTIPLIER
    MOV PRODUCER,AX
    MOV PRODUCER+2, DX
    END START
    CODE ENDS