DATA SEGMENT
    TEST_MESS DB 'THIS IS TIME'
    DB 100 DUP(?)
    NEW_LOC DB 12
    DATA ENDS 
CODE SEGMENT 
    ASSUME CS:CODE, DS:DATA, ES:DATA
START: 
    MOV AX,DATA
    MOV DS, AX
    MOV ES, AX
    LEA SI, TEST_MESS
    LEA DI, NEW_LOC
    MOV CX, 12
    CLD
    REP MOVSB
    CODE ENDS
    END START