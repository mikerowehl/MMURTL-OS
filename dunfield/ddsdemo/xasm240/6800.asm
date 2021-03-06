*
* Test file to verify instructions and addressing modes of: 6800
*
IMM	EQU	$12
DIR	EQU	$34
EXT	EQU	$5678
*
	ADDA	#IMM
	ADDA	DIR
	ADDA	EXT
	ADDA	10,X
	ADDB	#IMM
	ADDB	DIR
	ADDB	EXT
	ADDB	10,X
*
	ABA
*
	ADCA	#IMM
	ADCA	DIR
	ADCA	EXT
	ADCA	10,X
	ADCB	#IMM
	ADCB	DIR
	ADCB	EXT
	ADCB	10,X
*
	ANDA	#IMM
	ANDA	DIR
	ANDA	EXT
	ANDA	10,X
	ANDB	#IMM
	ANDB	DIR
	ANDB	EXT
	ANDB	10,X
*
	BITA	#IMM
	BITA	DIR
	BITA	EXT
	BITA	10,X
	BITB	#IMM
	BITB	DIR
	BITB	EXT
	BITB	10,X
*
	CLRA
	CLRB
	CLR	EXT
	CLR	10,X
*
	CMPA	#IMM
	CMPA	DIR
	CMPA	EXT
	CMPA	10,X
	CMPB	#IMM
	CMPB	DIR
	CMPB	EXT
	CMPB	10,X
*
	CBA
*
	COMA
	COMB
	COM	EXT
	COM	10,X
*
	NEGA
	NEGB
	NEG	EXT
	NEG	10,X
*
	DAA
*
	DECA
	DECB
	DEC	EXT
	DEC	10,X
*
	EORA	#IMM
	EORA	DIR
	EORA	EXT
	EORA	10,X
	EORB	#IMM
	EORB	DIR
	EORB	EXT
	EORB	10,X
*
	INCA
	INCB
	INC	EXT
	INC	10,X
*
	LDAA	#IMM
	LDAA	DIR
	LDAA	EXT
	LDAA	10,X
	LDAB	#IMM
	LDAB	DIR
	LDAB	EXT
	LDAB	10,X
*
	ORAA	#IMM
	ORAA	DIR
	ORAA	EXT
	ORAA	10,X
	ORAB	#IMM
	ORAB	DIR
	ORAB	EXT
	ORAB	10,X
*
	PSHA
	PSHB
	PULA
	PULB
*
	ROLA
	ROLB
	ROL	EXT
	ROL	10,X
*
	RORA
	RORB
	ROR	EXT
	ROR	10,X
*
	ASLA
	ASLB
	ASL	EXT
	ASL	10,X
*
	ASRA
	ASRB
	ASR	EXT
	ASR	10,X
*
	LSLA
	LSLB
	LSL	EXT
	LSL	10,X
*
	LSRA
	LSRB
	LSR	EXT
	LSR	10,X
*
	STAA	DIR
	STAA	EXT
	STAA	10,X
	STAB	DIR
	STAB	EXT
	STAB	10,X
*
	SUBA	#IMM
	SUBA	DIR
	SUBA	EXT
	SUBA	10,X
	SUBB	#IMM
	SUBB	DIR
	SUBB	EXT
	SUBB	10,X
*
	SBA
*
	SBCA	#IMM
	SBCA	DIR
	SBCA	EXT
	SBCA	10,X
	SBCB	#IMM
	SBCB	DIR
	SBCB	EXT
	SBCB	10,X
*
	TAB
	TBA
*
	TSTA
	TSTB
	TST	EXT
	TST	10,X
*
	CPX	#IMM
	CPX	DIR
	CPX	EXT
	CPX	10,X
*
	DEX
	DES
	INX
	INS
*
	LDX	#IMM
	LDX	DIR
	LDX	EXT
	LDX	10,X
*
	LDS	#IMM
	LDS	DIR
	LDS	EXT
	LDS	10,X
*
	STX	DIR
	STX	EXT
	STX	10,X
*
	STS	DIR
	STS	EXT
	STS	10,X
*
	TXS
	TSX
*
	BRA	*
	BCC	*
	BCS	*
	BEQ	*
	BGE	*
	BGT	*
	BHI	*
	BLE	*
	BLS	*
	BLT	*
	BMI	*
	BNE	*
	BVC	*
	BVS	*
	BPL	*
	BSR	*
	BHS	*
	BLO	*
*
	JMP	EXT
	JMP	10,X
	JSR	EXT
	JSR	10,X
*
	NOP
*
	RTI
	RTS
*
	SWI
	WAI
