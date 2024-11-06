    AREA mycode,CODE,READONLY
	ENTRY
    EXPORT start
start PROC
	
	;FIRST 64 BIT NUMBER   00000001 FFFFFFFF
	MOV R0,#0xFFFFFFFF      ;UPPER 32 BITS
	MOV R1,#0x00000005      ;LOWER 32 BITS
	
	;SECOND 64 BIT NUMBER  00000000 00000001
	MOV R2,#0x00000005      ;UPPER 32 BITS
	MOV R3,#0x00000000        ;LOWER 32 BITS
	
	ADDS R4,R0,R2           ;ADDITION OF LOWER 32 BITS
	ADCS R5,R1,R3          ;ADDITION OF UPPER 32 BITS WITH CARRY BIT
    		
    B .
    ENDP
    END		