*
* Test file to verify instructions and addressing modes of: 68HC16
*
IMM	EQU	$12
EXT	EQU	$3456
*
	ABA
	ABX
	ABY
	ABZ
	ACE
	ACED
*
	ADCA	#IMM
	ADCA	EXT
	ADCA	1,X
	ADCA	1,Y
	ADCA	1,Z
	ADCA	1000,X
	ADCA	1000,Y
	ADCA	1000,Z
	ADCA	E,X
	ADCA	E,Y
	ADCA	E,Z
*
	ADCB	#IMM
	ADCB	EXT
	ADCB	1,X
	ADCB	1,Y
	ADCB	1,Z
	ADCB	1000,X
	ADCB	1000,Y
	ADCB	1000,Z
	ADCB	E,X
	ADCB	E,Y
	ADCB	E,Z
*
	ADCD	#IMM
	ADCD	EXT
	ADCD	1,X
	ADCD	1,Y
	ADCD	1,Z
	ADCD	1000,X
	ADCD	1000,Y
	ADCD	1000,Z
	ADCD	E,X
	ADCD	E,Y
	ADCD	E,Z
*
	ADCE	#IMM
	ADCE	EXT
	ADCE	1,X
	ADCE	1,Y
	ADCE	1,Z
*
	ADDA	#IMM
	ADDA	EXT
	ADDA	1,X
	ADDA	1,Y
	ADDA	1,Z
	ADDA	1000,X
	ADDA	1000,Y
	ADDA	1000,Z
	ADDA	E,X
	ADDA	E,Y
	ADDA	E,Z
*
	ADDB	#IMM
	ADDB	EXT
	ADDB	1,X
	ADDB	1,Y
	ADDB	1,Z
	ADDB	1000,X
	ADDB	1000,Y
	ADDB	1000,Z
	ADDB	E,X
	ADDB	E,Y
	ADDB	E,Z
*
	ADDD	#IMM
	ADDD	#1000
	ADDD	EXT
	ADDD	1,X
	ADDD	1,Y
	ADDD	1,Z
	ADDD	1000,X
	ADDD	1000,Y
	ADDD	1000,Z
	ADDD	E,X
	ADDD	E,Y
	ADDD	E,Z
*
	ADDE	#IMM
	ADDE	EXT
	ADDE	1,X
	ADDE	1,Y
	ADDE	1,Z
*
	ADE
	ADX
	ADY
	ADZ
	AEX
	AEY
	AEZ
*
	AIS	#IMM
	AIS	#1000
	AIX	#IMM
	AIX	#1000
	AIY	#IMM
	AIY	#1000
	AIZ	#IMM
	AIZ	#1000
*
	ANDA	#IMM
	ANDA	EXT
	ANDA	1,X
	ANDA	1,Y
	ANDA	1,Z
	ANDA	1000,X
	ANDA	1000,Y
	ANDA	1000,Z
	ANDA	E,X
	ANDA	E,Y
	ANDA	E,Z
*
	ANDB	#IMM
	ANDB	EXT
	ANDB	1,X
	ANDB	1,Y
	ANDB	1,Z
	ANDB	1000,X
	ANDB	1000,Y
	ANDB	1000,Z
	ANDB	E,X
	ANDB	E,Y
	ANDB	E,Z
*
	ANDD	#IMM
	ANDD	EXT
	ANDD	1,X
	ANDD	1,Y
	ANDD	1,Z
	ANDD	1000,X
	ANDD	1000,Y
	ANDD	1000,Z
	ANDD	E,X
	ANDD	E,Y
	ANDD	E,Z
*
	ANDE	#IMM
	ANDE	EXT
	ANDE	1,X
	ANDE	1,Y
	ANDE	1,Z
*
	ANDP	#IMM
*
	ASLA
	ASLB
	ASLD
	ASLE
	ASLM
	ASL	EXT
	ASL	1,X
	ASL	1,Y
	ASL	1,Z
	ASL	1000,X
	ASL	1000,Y
	ASL	1000,Z
	ASLW	EXT
	ASLW	1000,X
	ASLW	1000,Y
	ASLW	1000,Z
*
	ASRA
	ASRB
	ASRD
	ASRE
	ASRM
	ASR	EXT
	ASR	1,X
	ASR	1,Y
	ASR	1,Z
	ASR	1000,X
	ASR	1000,Y
	ASR	1000,Z
	ASRW	EXT
	ASRW	1000,X
	ASRW	1000,Y
	ASRW	1000,Z
*
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
	BPL	*
	BRA	*
	BRN	*
	BVC	*
	BVS	*
	BSR	*
	BHS	*
	BLO	*
*
	BCLR	EXT,#%00000001
	BCLR	1,X,#%00000010
	BCLR	1,Y,#%00000100
	BCLR	1,Z,#%00001000
	BCLR	1000,X,#%00010000
	BCLR	1000,Y,#%00100000
	BCLR	1000,Z,#%01000000
	BCLRW	EXT,#%10000000
	BCLRW	1,X,#%00000001
	BCLRW	1,Y,#%00000010
	BCLRW	1,Z,#%00000100
*
	BGND
*
	BITA	#IMM
	BITA	EXT
	BITA	1,X
	BITA	1,Y
	BITA	1,Z
	BITA	1000,X
	BITA	1000,Y
	BITA	1000,Z
	BITA	E,X
	BITA	E,Y
	BITA	E,Z
*
	BITB	#IMM
	BITB	EXT
	BITB	1,X
	BITB	1,Y
	BITB	1,Z
	BITB	1000,X
	BITB	1000,Y
	BITB	1000,Z
	BITB	E,X
	BITB	E,Y
	BITB	E,Z
*
	BRCLR	EXT,#%00000001,*
	BRCLR	1,X,#%00000010,*
	BRCLR	1,Y,#%00000100,*
	BRCLR	1,Z,#%00001000,*
	BRCLR	1000,X,#%00010000,*
	BRCLR	1000,Y,#%00100000,*
	BRCLR	1000,Z,#%01000000,*
*
	BRSET	EXT,#%00000001,*
	BRSET	1,X,#%00000010,*
	BRSET	1,Y,#%00000100,*
	BRSET	1,Z,#%00001000,*
	BRSET	1000,X,#%00010000,*
	BRSET	1000,Y,#%00100000,*
	BRSET	1000,Z,#%01000000,*
*
	BSET	EXT,#%00000001
	BSET	1,X,#%00000010
	BSET	1,Y,#%00000100
	BSET	1,Z,#%00001000
	BSET	1000,X,#%00010000
	BSET	1000,Y,#%00100000
	BSET	1000,Z,#%01000000
	BSETW	EXT,#%10000000
	BSETW	1,X,#%00000001
	BSETW	1,Y,#%00000010
	BSETW	1,Z,#%00000100
*
	CBA
*
	CLRA
	CLRB
	CLRD
	CLRE
	CLRM
	CLR	EXT
	CLR	1,X
	CLR	1,Y
	CLR	1,Z
	CLR	1000,X
	CLR	1000,Y
	CLR	1000,Z
	CLRW	EXT
	CLRW	1000,X
	CLRW	1000,Y
	CLRW	1000,Z
*
	CMPA	#IMM
	CMPA	EXT
	CMPA	1,X
	CMPA	1,Y
	CMPA	1,Z
	CMPA	1000,X
	CMPA	1000,Y
	CMPA	1000,Z
	CMPA	E,X
	CMPA	E,Y
	CMPA	E,Z
*
	CMPB	#IMM
	CMPB	EXT
	CMPB	1,X
	CMPB	1,Y
	CMPB	1,Z
	CMPB	1000,X
	CMPB	1000,Y
	CMPB	1000,Z
	CMPB	E,X
	CMPB	E,Y
	CMPB	E,Z
*
	COMA
	COMB
	COMD
	COME
	COM	EXT
	COM	1,X
	COM	1,Y
	COM	1,Z
	COM	1000,X
	COM	1000,Y
	COM	1000,Z
	COMW	EXT
	COMW	1000,X
	COMW	1000,Y
	COMW	1000,Z
*
	CPD	#IMM
	CPD	EXT
	CPD	1,X
	CPD	1,Y
	CPD	1,Z
	CPD	1000,X
	CPD	1000,Y
	CPD	1000,Z
	CPD	E,X
	CPD	E,Y
	CPD	E,Z
*
	CPE	#IMM
	CPE	EXT
	CPE	1,X
	CPE	1,Y
	CPE	1,Z
*
	CPS	#IMM
	CPS	EXT
	CPS	1,X
	CPS	1,Y
	CPS	1,Z
	CPS	1000,X
	CPS	1000,Y
	CPS	1000,Z
*
	CPX	#IMM
	CPX	EXT
	CPX	1,X
	CPX	1,Y
	CPX	1,Z
	CPX	1000,X
	CPX	1000,Y
	CPX	1000,Z
*
	CPY	#IMM
	CPY	EXT
	CPY	1,X
	CPY	1,Y
	CPY	1,Z
	CPY	1000,X
	CPY	1000,Y
	CPY	1000,Z
*
	CPZ	#IMM
	CPZ	EXT
	CPZ	1,X
	CPZ	1,Y
	CPZ	1,Z
	CPZ	1000,X
	CPZ	1000,Y
	CPZ	1000,Z
*
	DAA
*
	DECA
	DECB
	DEC	EXT
	DEC	1,X
	DEC	1,Y
	DEC	1,Z
	DEC	1000,X
	DEC	1000,Y
	DEC	1000,Z
	DECW	EXT
	DECW	1,X
	DECW	1,Y
	DECW	1,Z
*
	EDIV
	EDIVS
	EMUL
	EMULS
*
	EORA	#IMM
	EORA	EXT
	EORA	1,X
	EORA	1,Y
	EORA	1,Z
	EORA	1000,X
	EORA	1000,Y
	EORA	1000,Z
	EORA	E,X
	EORA	E,Y
	EORA	E,Z
*
	EORB	#IMM
	EORB	EXT
	EORB	1,X
	EORB	1,Y
	EORB	1,Z
	EORB	1000,X
	EORB	1000,Y
	EORB	1000,Z
	EORB	E,X
	EORB	E,Y
	EORB	E,Z
*
	EORD	#IMM
	EORD	EXT
	EORD	1,X
	EORD	1,Y
	EORD	1,Z
	EORD	1000,X
	EORD	1000,Y
	EORD	1000,Z
	EORD	E,X
	EORD	E,Y
	EORD	E,Z
*
	EORE	#IMM
	EORE	EXT
	EORE	1,X
	EORE	1,Y
	EORE	1,Z
*
	FDIV
	FMULS
	IDIV
*
	INCA
	INCB
	INC	EXT
	INC	1,X
	INC	1,Y
	INC	1,Z
	INC	1000,X
	INC	1000,Y
	INC	1000,Z
	INCW	EXT
	INCW	1,X
	INCW	1,Y
	INCW	1,Z
*
	JMP	EXT
	JMP	9,EXT
	JMP	1,X
	JMP	1,Y
	JMP	1,Z
	JMP	9,1,X
	JMP	9,1,Y
	JMP	9,1,Z
*
	JSR	EXT
	JSR	9,EXT
	JSR	1,X
	JSR	1,Y
	JSR	1,Z
	JSR	9,1,X
	JSR	9,1,Y
	JSR	9,1,Z
*
	LBCC	*
	LBCS	*
	LBEQ	*
	LBGE	*
	LBGT	*
	LBHI	*
	LBLE	*
	LBLS	*
	LBLT	*
	LBMI	*
	LBNE	*
	LBPL	*
	LBRA	*
	LBRN	*
	LBVC	*
	LBVS	*
	LBSR	*
	LBHS	*
	LBLO	*
*
	LDAA	#IMM
	LDAA	EXT
	LDAA	1,X
	LDAA	1,Y
	LDAA	1,Z
	LDAA	1000,X
	LDAA	1000,Y
	LDAA	1000,Z
	LDAA	E,X
	LDAA	E,Y
	LDAA	E,Z
*
	LDAB	#IMM
	LDAB	EXT
	LDAB	1,X
	LDAB	1,Y
	LDAB	1,Z
	LDAB	1000,X
	LDAB	1000,Y
	LDAB	1000,Z
	LDAB	E,X
	LDAB	E,Y
	LDAB	E,Z
*
	LDD	#IMM
	LDD	EXT
	LDD	1,X
	LDD	1,Y
	LDD	1,Z
	LDD	1000,X
	LDD	1000,Y
	LDD	1000,Z
	LDD	E,X
	LDD	E,Y
	LDD	E,Z
*
	LDE	#IMM
	LDE	EXT
	LDE	1,X
	LDE	1,Y
	LDE	1,Z
*
	LDED	EXT
	LDHI	EXT
*
	LDS	#IMM
	LDS	EXT
	LDS	1,X
	LDS	1,Y
	LDS	1,Z
	LDS	1000,X
	LDS	1000,Y
	LDS	1000,Z
*
	LDX	#IMM
	LDX	EXT
	LDX	1,X
	LDX	1,Y
	LDX	1,Z
	LDX	1000,X
	LDX	1000,Y
	LDX	1000,Z
*
	LDY	#IMM
	LDY	EXT
	LDY	1,X
	LDY	1,Y
	LDY	1,Z
	LDY	1000,X
	LDY	1000,Y
	LDY	1000,Z
*
	LDZ	#IMM
	LDZ	EXT
	LDZ	1,X
	LDZ	1,Y
	LDZ	1,Z
	LDZ	1000,X
	LDZ	1000,Y
	LDZ	1000,Z
*
	LPSTOP
*
	LSRA
	LSRB
	LSRD
	LSRE
	LSR	EXT
	LSR	1,X
	LSR	1,Y
	LSR	1,Z
	LSR	1000,X
	LSR	1000,Y
	LSR	1000,Z
	LSRW	EXT
	LSRW	1000,X
	LSRW	1000,Y
	LSRW	1000,Z
*
	MAC	#%00001111
*
	MOVB	1,X,EXT
	MOVB	EXT,1,X
	MOVB	EXT,EXT
	MOVW	1,X,EXT
	MOVW	EXT,1,X
	MOVW	EXT,EXT
*
	MUL
*
	NEGA
	NEGB
	NEGD
	NEGE
	NEG	EXT
	NEG	1,X
	NEG	1,Y
	NEG	1,Z
	NEG	1000,X
	NEG	1000,Y
	NEG	1000,Z
	NEGW	EXT
	NEGW	1000,X
	NEGW	1000,Y
	NEGW	1000,Z
*
	NOP
*
	ORAA	#IMM
	ORAA	EXT
	ORAA	1,X
	ORAA	1,Y
	ORAA	1,Z
	ORAA	1000,X
	ORAA	1000,Y
	ORAA	1000,Z
	ORAA	E,X
	ORAA	E,Y
	ORAA	E,Z
*
	ORAB	#IMM
	ORAB	EXT
	ORAB	1,X
	ORAB	1,Y
	ORAB	1,Z
	ORAB	1000,X
	ORAB	1000,Y
	ORAB	1000,Z
	ORAB	E,X
	ORAB	E,Y
	ORAB	E,Z
*
	ORD	#IMM
	ORD	EXT
	ORD	1,X
	ORD	1,Y
	ORD	1,Z
	ORD	1000,X
	ORD	1000,Y
	ORD	1000,Z
	ORD	E,X
	ORD	E,Y
	ORD	E,Z
*
	ORE	#IMM
	ORE	EXT
	ORE	1,X
	ORE	1,Y
	ORE	1,Z
*
	ORP	#IMM
*
	PSHA
	PSHB
	PSHM	D,E,X,Y,Z,K,CC
	PSHMAC
	PULA
	PULB
	PULM	D,E,X,Y,Z,K,CC
	PULMAC
*
	RMAC	#%00001111
*
	ROLA
	ROLB
	ROLD
	ROLE
	ROL	EXT
	ROL	1,X
	ROL	1,Y
	ROL	1,Z
	ROL	1000,X
	ROL	1000,Y
	ROL	1000,Z
	ROLW	EXT
	ROLW	1000,X
	ROLW	1000,Y
	ROLW	1000,Z
*
	RORA
	RORB
	RORD
	RORE
	ROR	EXT
	ROR	1,X
	ROR	1,Y
	ROR	1,Z
	ROR	1000,X
	ROR	1000,Y
	ROR	1000,Z
	RORW	EXT
	RORW	1000,X
	RORW	1000,Y
	RORW	1000,Z
*
	RTI
	RTS
	SBA
*
	SBCA	#IMM
	SBCA	EXT
	SBCA	1,X
	SBCA	1,Y
	SBCA	1,Z
	SBCA	1000,X
	SBCA	1000,Y
	SBCA	1000,Z
	SBCA	E,X
	SBCA	E,Y
	SBCA	E,Z
*
	SBCB	#IMM
	SBCB	EXT
	SBCB	1,X
	SBCB	1,Y
	SBCB	1,Z
	SBCB	1000,X
	SBCB	1000,Y
	SBCB	1000,Z
	SBCB	E,X
	SBCB	E,Y
	SBCB	E,Z
*
	SBCD	#IMM
	SBCD	EXT
	SBCD	1,X
	SBCD	1,Y
	SBCD	1,Z
	SBCD	1000,X
	SBCD	1000,Y
	SBCD	1000,Z
	SBCD	E,X
	SBCD	E,Y
	SBCD	E,Z
*
	SBCE	#IMM
	SBCE	EXT
	SBCE	1,X
	SBCE	1,Y
	SBCE	1,Z
*
	SDE
*
	STAA	EXT
	STAA	1,X
	STAA	1,Y
	STAA	1,Z
	STAA	1000,X
	STAA	1000,Y
	STAA	1000,Z
	STAA	E,X
	STAA	E,Y
	STAA	E,Z
*
	STAB	EXT
	STAB	1,X
	STAB	1,Y
	STAB	1,Z
	STAB	1000,X
	STAB	1000,Y
	STAB	1000,Z
	STAB	E,X
	STAB	E,Y
	STAB	E,Z
*
	STD	EXT
	STD	1,X
	STD	1,Y
	STD	1,Z
	STD	1000,X
	STD	1000,Y
	STD	1000,Z
	STD	E,X
	STD	E,Y
	STD	E,Z
*
	STE	EXT
	STE	1,X
	STE	1,Y
	STE	1,Z
*
	STED	EXT
*
	STS	EXT
	STS	1,X
	STS	1,Y
	STS	1,Z
	STS	1000,X
	STS	1000,Y
	STS	1000,Z
*
	STX	EXT
	STX	1,X
	STX	1,Y
	STX	1,Z
	STX	1000,X
	STX	1000,Y
	STX	1000,Z
*
	STY	EXT
	STY	1,X
	STY	1,Y
	STY	1,Z
	STY	1000,X
	STY	1000,Y
	STY	1000,Z
*
	STZ	EXT
	STZ	1,X
	STZ	1,Y
	STZ	1,Z
	STZ	1000,X
	STZ	1000,Y
	STZ	1000,Z
*
	SUBA	#IMM
	SUBA	EXT
	SUBA	1,X
	SUBA	1,Y
	SUBA	1,Z
	SUBA	1000,X
	SUBA	1000,Y
	SUBA	1000,Z
	SUBA	E,X
	SUBA	E,Y
	SUBA	E,Z
*
	SUBB	#IMM
	SUBB	EXT
	SUBB	1,X
	SUBB	1,Y
	SUBB	1,Z
	SUBB	1000,X
	SUBB	1000,Y
	SUBB	1000,Z
	SUBB	E,X
	SUBB	E,Y
	SUBB	E,Z
*
	SUBD	#IMM
	SUBD	EXT
	SUBD	1,X
	SUBD	1,Y
	SUBD	1,Z
	SUBD	1000,X
	SUBD	1000,Y
	SUBD	1000,Z
	SUBD	E,X
	SUBD	E,Y
	SUBD	E,Z
*
	SUBE	#IMM
	SUBE	EXT
	SUBE	1,X
	SUBE	1,Y
	SUBE	1,Z
*
	SWI
	SXT
	TAB
	TAP
	TBA
	TBEK
	TBSK
	TBXK
	TBYK
	TBZK
	TDE
	TDMSK
	TDP
	TED
	TEDM
	TEKB
	TEM
	TMER
	TMET
	TMXED
	TPA
	TPD
	TSKB
	TSX
	TSY
	TSZ
	TXKB
	TXS
	TXY
	TXZ
	TYKB
	TYS
	TYX
	TYZ
	TZKB
	TZS
	TZX
	TZY
*
	TSTA
	TSTB
	TSTD
	TSTE
	TST	EXT
	TST	1,X
	TST	1,Y
	TST	1,Z
	TST	1000,X
	TST	1000,Y
	TST	1000,Z
	TSTW	EXT
	TSTW	1,X
	TSTW	1,Y
	TSTW	1,Z
*
	WAI
	XGAB
	XGDE
	XGDX
	XGDY
	XGDZ
	XGEX
	XGEY
	XGEZ
