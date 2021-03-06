*
* Test file to verify instructions and addressing modes of: 8086
*
IMM	EQU	$12
IMMM	EQU	$3456
EXT	EQU	$789A
*
	AAA
	AAD
	AAM
	AAS
*
	ADC	AX,BX
	ADC	AL,#IMM
	ADC	AX,#IMM
	ADC	BL,#IMM
	ADC	BX,#IMM
	ADC	BX,#IMMM
	ADC	CL,[BX]
	ADC	CX,5[BX]
	ADC	DH,[DI]
	ADC	DX,5[DI]
	ADC	DI,[SI]
	ADC	SI,5[BX+DI]
	ADC	DI,5[BX+SI]
	ADC	AX,5[BP]
	ADC	AX,5[BP+DI]
	ADC	AX,5[BP+SI]
*
	ADD	AX,BX
	ADD	AL,#IMM
	ADD	AX,#IMM
	ADD	BL,#IMM
	ADD	BX,#IMM
	ADD	BX,#IMMM
	ADD	CL,[BX]
	ADD	CX,5[BX]
	ADD	DH,[DI]
	ADD	DX,5[DI]
	ADD	DI,[SI]
	ADD	SI,5[BX+DI]
	ADD	DI,5[BX+SI]
	ADD	AX,5[BP]
	ADD	AX,5[BP+DI]
	ADD	AX,5[BP+SI]
*
	AND	AX,BX
	AND	AL,#IMM
	AND	AX,#IMM
	AND	BL,#IMM
	AND	BX,#IMM
	AND	BX,#IMMM
	AND	CL,[BX]
	AND	CX,5[BX]
	AND	DH,[DI]
	AND	DX,5[DI]
	AND	DI,[SI]
	AND	SI,5[BX+DI]
	AND	DI,5[BX+SI]
	AND	AX,5[BP]
	AND	AX,5[BP+DI]
	AND	AX,5[BP+SI]
*
	CALL	EXT
	CALL	0:EXT
	CALL	AX
	CALL	0:AX
	CALL	[BX]
	CALL	5[SI]
	CALL	5[DI]
	CALL	5[BX+SI]
	CALL	0:5[DI]
	CALL	0:5[BP+DI]
*
	CBW
	CLC
	CLD
	CLI
	CMC
*
	CMP	AX,BX
	CMP	AL,#IMM
	CMP	AX,#IMM
	CMP	BL,#IMM
	CMP	BX,#IMM
	CMP	BX,#IMMM
	CMP	CL,[BX]
	CMP	CX,5[BX]
	CMP	DH,[DI]
	CMP	DX,5[DI]
	CMP	DI,[SI]
	CMP	SI,5[BX+DI]
	CMP	DI,5[BX+SI]
	CMP	AX,5[BP]
	CMP	AX,5[BP+DI]
	CMP	AX,5[BP+SI]
*
	CMPS	<EXT
	CMPS	>EXT
	REPZ
	CMPSB
	REPNZ
	CMPSW
*
	CWD
	DAA
	DAS
*
	DEC	AL
	DEC	AX
	DEC	<EXT
	DEC	>EXT
	DEC	<[BX]
	DEC	>[BX]
	DEC	<5[SI]
	DEC	>5[BX+DI]
	DEC	<10[BP]
	DEC	>10[BP+DI]
*
	DIV	AL
	DIV	AX
	DIV	<EXT
	DIV	>EXT
	DIV	<[BX]
	DIV	>[BX]
	DIV	<5[SI]
	DIV	>5[BX+DI]
	DIV	<10[BP]
	DIV	>10[BP+DI]
*
	ESC	1,<EXT
	ESC	5,>EXT
	ESC	15,<[BX]
	ESC	20,>[BX]
	ESC	25,<5[SI]
	ESC	30,>5[BX+DI]
	ESC	35,<10[BP]
	ESC	40,>10[BP+DI]
*
	HLT
*
	IDIV	AL
	IDIV	AX
	IDIV	<EXT
	IDIV	>EXT
	IDIV	<[BX]
	IDIV	>[BX]
	IDIV	<5[SI]
	IDIV	>5[BX+DI]
	IDIV	<10[BP]
	IDIV	>10[BP+DI]
*
	IMUL	AL
	IMUL	AX
	IMUL	<EXT
	IMUL	>EXT
	IMUL	<[BX]
	IMUL	>[BX]
	IMUL	<5[SI]
	IMUL	>5[BX+DI]
	IMUL	<10[BP]
	IMUL	>10[BP+DI]
*
	IN	AL,10
	IN	AX,100
	IN	AL,DX
	IN	AX,DX
*
	INC	AL
	INC	AX
	INC	<EXT
	INC	>EXT
	INC	<[BX]
	INC	>[BX]
	INC	<5[SI]
	INC	>5[BX+DI]
	INC	<10[BP]
	INC	>10[BP+DI]
*
	INT	0
	INT	3
	INT	255
*
	IRET
*
	JA	*
	JAE	*
	JB	*
	JBE	*
	JC	*
	JCXZ	*
	JZ	*
	JNZ	*
	JG	*
	JGE	*
	JL	*
	JLE	*
	JNC	*
	JNO	*
	JNS	*
	JNP	*
	JO	*
	JP	*
	JS	*
*
	JMP	<*
	JMP	EXT
	JMP	0:EXT
	JMP	AX
	JMP	0:AX
	JMP	[BX]
	JMP	5[SI]
	JMP	5[DI]
	JMP	5[BX+SI]
	JMP	0:5[DI]
	JMP	0:5[BP+DI]
*
	LAHF
*
	LDS	AX,EXT
	LDS	BX,[BX]
	LDS	CX,5[SI]
	LDS	DX,5[BX+DI]
	LDS	SI,5[BP+DI]
*
	LEA	AX,EXT
	LEA	BX,[BX]
	LEA	CX,5[SI]
	LEA	DX,5[BX+DI]
	LEA	SI,5[BP+DI]
*
	LES	AX,EXT
	LES	BX,[BX]
	LES	CX,5[SI]
	LES	DX,5[BX+DI]
	LES	SI,5[BP+DI]
*
	LOCK
*
	LODS	<EXT
	LODS	>EXT
	LODSB
	LODSW
*
	LOOP	*
	LOOPZ	*
	LOOPNZ	*
*
	MOV	AX,EXT
	MOV	BX,#IMM
	MOV	BX,EXT
	MOV	BX,CX
	MOV	CX,[BX]
	MOV	CX,5[BX+SI]
	MOV	CX,5[BP+DI]
	MOV	<EXT,#IMM
	MOV	>EXT,#IMM
	MOV	EXT,AX
	MOV	EXT,BX
	MOV	[BX],CX
	MOV	5[BX+SI],CX
	MOV	5[BP+DI],CX
	MOV	DS,AX
	MOV	DS,EXT
	MOV	[BX],ES
	MOV	5[BP+DI],CS
*
	MOVS	<EXT
	MOVS	>EXT
	REP
	MOVSB
	MOVSW
*
	MUL	AL
	MUL	AX
	MUL	<EXT
	MUL	>EXT
	MUL	<[BX]
	MUL	>[BX]
	MUL	<5[SI]
	MUL	>5[BX+DI]
	MUL	<10[BP]
	MUL	>10[BP+DI]
*
	NEG	AL
	NEG	AX
	NEG	<EXT
	NEG	>EXT
	NEG	<[BX]
	NEG	>[BX]
	NEG	<5[SI]
	NEG	>5[BX+DI]
	NEG	<10[BP]
	NEG	>10[BP+DI]
*
	NOP
*
	NOT	AL
	NOT	AX
	NOT	<EXT
	NOT	>EXT
	NOT	<[BX]
	NOT	>[BX]
	NOT	<5[SI]
	NOT	>5[BX+DI]
	NOT	<10[BP]
	NOT	>10[BP+DI]
*
	OR	AX,BX
	OR	AL,#IMM
	OR	AX,#IMM
	OR	BL,#IMM
	OR	BX,#IMM
	OR	BX,#IMMM
	OR	CL,[BX]
	OR	CX,5[BX]
	OR	DH,[DI]
	OR	DX,5[DI]
	OR	DI,[SI]
	OR	SI,5[BX+DI]
	OR	DI,5[BX+SI]
	OR	AX,5[BP]
	OR	AX,5[BP+DI]
	OR	AX,5[BP+SI]
*
	OUT	10,AL
	OUT	100,AX
	OUT	DX,AL
	OUT	DX,AX
*
	POP	AX
	POP	>EXT
	POP	>[BX]
	POP	>5[BP+DI]
	POP	ES
	POPF
	PUSH	AX
	PUSH	>EXT
	PUSH	>[BX]
	PUSH	>5[BP+DI]
	PUSH	ES
	PUSHF
*
	RCL	AL,1
	RCL	AX,1
	RCL	AL,CL
	RCL	AX,CL
	RCR	AL,1
	RCR	AX,1
	RCR	AL,CL
	RCR	AL,CL
*
	RET
*
	ROL	AL,1
	ROL	AX,1
	ROL	AL,CL
	ROL	AX,CL
	ROR	AL,1
	ROR	AX,1
	ROR	AL,CL
	ROR	AX,CL
*
	SAHF
*
	SAL	AL,1
	SAL	AX,1
	SAL	AL,CL
	SAL	AX,CL
	SHR	AL,1
	SHR	AX,1
	SHR	AL,CL
	SHR	AX,CL
*
	SBB	AX,BX
	SBB	AL,#IMM
	SBB	AX,#IMM
	SBB	BL,#IMM
	SBB	BX,#IMM
	SBB	BX,#IMMM
	SBB	CL,[BX]
	SBB	CX,5[BX]
	SBB	DH,[DI]
	SBB	DX,5[DI]
	SBB	DI,[SI]
	SBB	SI,5[BX+DI]
	SBB	DI,5[BX+SI]
	SBB	AX,5[BP]
	SBB	AX,5[BP+DI]
	SBB	AX,5[BP+SI]
*
	SCAS	<EXT
	SCAS	>EXT
	SCASB
	SCASW
*
	SHR	AL,1
	SHR	AX,1
	SHR	AL,CL
	SHR	AX,CL
*
	STC
	STD
	STI
*
	STOS	<EXT
	STOS	>EXT
	STOSB
	STOSW
*
	SUB	AX,BX
	SUB	AL,#IMM
	SUB	AX,#IMM
	SUB	BL,#IMM
	SUB	BX,#IMM
	SUB	BX,#IMMM
	SUB	CL,[BX]
	SUB	CX,5[BX]
	SUB	DH,[DI]
	SUB	DX,5[DI]
	SUB	DI,[SI]
	SUB	SI,5[BX+DI]
	SUB	DI,5[BX+SI]
	SUB	AX,5[BP]
	SUB	AX,5[BP+DI]
	SUB	AX,5[BP+SI]
*
	TEST	AX,BX
	TEST	AL,#IMM
	TEST	AX,#IMM
	TEST	BL,#IMM
	TEST	BX,#IMM
	TEST	BX,#IMMM
	TEST	CL,[BX]
	TEST	CX,5[BX]
	TEST	DH,[DI]
	TEST	DX,5[DI]
	TEST	DI,[SI]
	TEST	SI,5[BX+DI]
	TEST	DI,5[BX+SI]
	TEST	AX,5[BP]
	TEST	AX,5[BP+DI]
	TEST	AX,5[BP+SI]
*
	WAIT
*
	XCHG	AX,BX
	XCHG	BX,CX
	XCHG	BL,BH
	XCHG	BX,EXT
	XCHG	CX,[BX]
	XCHG	DX,5[SI]
	XCHG	DI,[BX+SI]
	XCHG	SI,5[BP+DI]
*
	XLAT
*
	XOR	AX,BX
	XOR	AL,#IMM
	XOR	AX,#IMM
	XOR	BL,#IMM
	XOR	BX,#IMM
	XOR	BX,#IMMM
	XOR	CL,[BX]
	XOR	CX,5[BX]
	XOR	DH,[DI]
	XOR	DX,5[DI]
	XOR	DI,[SI]
	XOR	SI,5[BX+DI]
	XOR	DI,5[BX+SI]
	XOR	AX,5[BP]
	XOR	AX,5[BP+DI]
	XOR	AX,5[BP+SI]
