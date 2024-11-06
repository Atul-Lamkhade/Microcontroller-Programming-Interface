    AREA mycode,CODE,READONLY
    ENTRY
    EXPORT start
start PROC
	MOV32 R1,#0x7FFFFFFF
	MOV32 R2,#0x1
	
	BL addition_signed
	BL subtraction_signed
	
	B .
	ENDP
		
		
addition_signed PROC
	ADDS R3,R1,R2
	BX LR
	ENDP
		
subtraction_signed PROC
	SUBS R4,R1,R2
	BX LR
	ENDP
		
		
    END