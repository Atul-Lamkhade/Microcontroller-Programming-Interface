   AREA mycode,CODE,READONLY
   ENTRY
   EXPORT start
start PROC
	MOV32 R1,#0xFFFFFFFF
	MOV32 R2,#0x00000001
	
	BL addition
	BL subtraction
	
	B .
	ENDP
		
		
addition PROC
	ADD R3,R1,R2
	BX LR
	ENDP
		
subtraction PROC
	SUB R4,R1,R2
	BX LR
	ENDP
		
		
END
	
	   