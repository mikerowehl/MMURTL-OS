	TITLE	CUBIX CONTROL STRUCTURES
*
* Cubix control structures
*
* Copyright 1983,1990 Dave Dunfield
*
* DRIVE CONTROL BLOCK (DCB) STRUCTURE
	ORG	0
DRIVE	RMB	1		PHYSICAL DEVICE ID
NCYL	RMB	1		NUMBER OF CYLINDERS
NHEAD	RMB	1		NUMBER OF HEADS
NSEC	RMB	1		NUMBER OF SECTORS/TRACK
CYL	RMB	1		CYLINDER TO ACCESS
HEAD	RMB	1		HEAD TO ACCESS
*
* FILE CONTROL BLOCK (FCB) STRUCTURE
*
	ORG	0
OPEN	RMB	1		OPEN TYPE (1=READ, 2=WRITE)
FDRIVE	RMB	1		DRIVE INDEX WHERE FILE IS LOCATED
FIRST	RMB	2		FIRST SECTOR IN FILE
SECTOR	RMB	2		SECTOR CURRENTLY BEING ACCESSED
LASTSEC	RMB	2		LAST SECTOR ACCESSED
OFFSET	RMB	2		OFFSET INTO CHARACTER BUFFER
CHRBUF	RMB	512		DISK SECTOR BUFFER FOR CHARACTER I/O
*
* DIRECTORY ENTRY STRUCTURE
*
	ORG	0
DPREFIX	RMB	8		DIRECTORY PREFIX
FNAME	RMB	8		FILENAME
FTYPE	RMB	3		FILETYPE
DSKADR	RMB	2		ADDRESS OF FIRST DISK SECTOR
LODADR	RMB	2		RAM LOAD ADDRESS
FPROT	RMB	1		PROTECTION BITS
SPARE	RMB	8		AVAILABLE TO USER APPLICATIONS
* PROTECTION BITS IN 'FPROT' FIELD OF DIRECTORY ENTRY
RPERM	EQU	%10000000	READ PERMISSION
WPERM	EQU	%01000000	WRITE PERMISSION
EPERM	EQU	%00100000	EXECUTE PERMISSION
DPERM	EQU	%00010000	DELETE PERMISSION
*
* CUBIX INTERNAL FILE SPECIFICATION PATTERN STRUCTURE
*
* NOTE: FOR CONSISTANCY WITH DIRECTIORY ENTRIES, CUBIX RETURNS
*	A POINTER TO THE 'FSDIR' ENTRY, ALLOWING 'FSDRIVE' TO
*	BE ACCESSED AT AN OFFSET OF '-1'.
*
	ORG	0
FSDRIVE	RMB	1		DRIVE INDEX (0-3)
FSDIR	RMB	8		DIRECTORY PREFIX
FSNAME	RMB	8		FILENAME
FSTYPE	RMB	3		FILETYPE
*
* CUBIX RETURN CODES
*
RCOK	EQU	0		SUCCESS
RCINV	EQU	1		OPERAND MISSING OR INVALID
RCNOTF	EQU	2		REQUESTED FILE CANNOT BE FOUND
RCPRO	EQU	3		PROTECTION VIOLATION
RCNOTR	EQU	4		FILE NOT OPEN FOR READ
RCNOTW	EQU	5		FILE NOT OPEN FOR WRITE
RCEOF	EQU	6		END OF FILE ENCOUNTERED
RCEXI	EQU	7		FILE ALREADY EXISTS
RCFULL	EQU	8		DISK FULL (NO AVAILABLE SPACE)
RCIOERR	EQU	9		DISK READ OR WRITE ERROR
RCNODEV	EQU	10		ACCESS NON-EXISTAND SERIAL DEVICE
RCDNLD	EQU	11		ERROR IN DOWNLOAD FILE
RCUNKN	EQU	255		UNKNOWN COMMAND OR SSR