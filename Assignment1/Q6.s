   AREA mycode,CODE,READONLY
   ENTRY
   EXPORT start
start PROC
	MOV32 R1,#0xFFFFFFFF
	MOV32 R2,#0x00000001
	
	BL addition
	BL subtraction
	BL multiplication
	BL division
	B .
	ENDP
		
addition PROC
	ADDS R3,R1,R2
	BX LR
	ENDP		
subtraction PROC
	SUB R4,R1,R2
	BX LR
	ENDP		
multiplication PROC
	MUL R5,R1,R2
	BX LR
	ENDP		
division PROC	
	CMP R2,#0
	BEQ divide_by_zero
	UDIV R6,R1,R2
	BX LR
	ENDP
	
divide_by_zero PROC
	MOV R6,#01
	BX LR
	ENDP
			END
		
		
		