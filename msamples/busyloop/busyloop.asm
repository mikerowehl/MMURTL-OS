
.DATA
EXTRN _Alarm FWORD
EXTRN _KillAlarm FWORD
EXTRN _Sleep FWORD
EXTRN _MicroDelay FWORD
EXTRN _GetCMOSTime FWORD
EXTRN _GetCMOSDate FWORD
EXTRN _GetTimerTick FWORD
EXTRN _Tone FWORD
EXTRN _Beep FWORD
EXTRN _GetpJCB FWORD
EXTRN _GetJobNum FWORD
EXTRN _LoadNewJob FWORD
EXTRN _Chain FWORD
EXTRN _ExitJob FWORD
EXTRN _KillJob FWORD
EXTRN _SetUserName FWORD
EXTRN _GetUserName FWORD
EXTRN _SetCmdLine FWORD
EXTRN _GetCmdLine FWORD
EXTRN _SetPath FWORD
EXTRN _GetPath FWORD
EXTRN _SetExitJob FWORD
EXTRN _GetExitJob FWORD
EXTRN _SetSysIn FWORD
EXTRN _GetSysIn FWORD
EXTRN _SetSysOut FWORD
EXTRN _GetSysOut FWORD
EXTRN _SetJobName FWORD
EXTRN _RegisterSvc FWORD
EXTRN _UnRegisterSvc FWORD
EXTRN _GetSystemDisk FWORD
L_lit DB 66,117,115,121,76,111,111,112,0,37,100,32,13,10,0
PUBLIC _tick DD 0h


.CODE
EXTRN _fopen: NEAR
EXTRN _fclose: NEAR
EXTRN _remove: NEAR
EXTRN _rename: NEAR
EXTRN _fgetc: NEAR
EXTRN _fgets: NEAR
EXTRN _fputs: NEAR
EXTRN _fputc: NEAR
EXTRN _printf: NEAR
EXTRN _sprintf: NEAR
EXTRN _fprintf: NEAR
EXTRN _ftell: NEAR
EXTRN _rewind: NEAR
EXTRN _fseek: NEAR
EXTRN _fread: NEAR
EXTRN _fwrite: NEAR
PUBLIC _main:
	PUSH EBP
	MOV EBP,ESP
	SUB ESP,4
	PUSH OFFSET L_lit+0
	PUSH 8
	CALL FWORD PTR _SetJobName
	PUSH 100
	CALL FWORD PTR _Sleep
L_1:
	MOV EAX,1
	AND EAX,EAX
	JZ L_2
	PUSH OFFSET _tick
	CALL FWORD PTR _GetTimerTick
	PUSH OFFSET L_lit+9
	PUSH _tick
	MOV EDI, 4
	CALL _printf
	ADD ESP,8
	MOV EAX,DWORD PTR [EBP-4]
	INC DWORD PTR [EBP-4]
	JMP L_1
L_2:
	MOV ESP,EBP
	POP EBP
	RETN