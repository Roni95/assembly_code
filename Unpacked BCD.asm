CODE SEGMENT 
    ASSUME CS:CODE
START: 
    MOV AL, '5'
    MOV BL, '9'
    AND AL, 0FH
    AND BL, 0FH
    MOV CL, 4H
    ROL BL, CL
    OR AL, BL
    END START
