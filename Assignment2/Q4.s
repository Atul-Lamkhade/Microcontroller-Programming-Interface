    AREA SVC_Handler_Example, CODE, READONLY
    EXPORT start
    EXPORT SVC_Handler

start
    MRS R0, CONTROL
    ORR R0, R0, #0x02
    MSR CONTROL, R0
    CPSIE I
    MOV R0, #0x01
    SVC 0

    B .

SVC_Handler
    MRS R1, MSP
    MRS R0, PSP
    CPSID I
    ORR R0, R0, #0x01
    MSR CONTROL, R0
    BX LR

    END
