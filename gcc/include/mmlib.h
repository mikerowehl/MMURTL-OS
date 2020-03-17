/* MMURTL System Call library for gcc
 *
 *
*/

#ifndef __MMLIB_H
#define __MMLIB_H

int AddCallGate();
int AddIDTGate();
int Alarm(int dExchRet, int count);
int AllocExch(int *pExchRet);
int AllocOSPage(int nPages, char **ppMemRet);
int AllocPage(int nPages, char **ppMemRet);
int Beep();
int CheckMsg(int dExch, char *pMsgsRet);
int CloseFile(int dHandle);
int ClrScr();
int Compare(char *pS1, char *pS2, int dSize);
int CompareNCS(char *pS1, char *pS2, int dSize);
int CopyData(char *pSource, char *pDestination, int dBytes);
int CopyDataR(char *pSource, char *pDestination, int dBytes);
int CreateFile(char *pFilename, int cbFilename, int Attribute);
int DeAllocExch(int dExch);
int DeleteFile(int dHandle);
int DeviceInit(int dDevNum, char *pInitData, int sdInitData);
int DeviceOp(int dDevice, int dOpNum, int dLBA, int dnBlocks, char *pData);
int DeviceStat(int dDevice, char *pStatRet, int dStatusMax, int *pdStatusRet);
int DMASetUp(int dPhyMem, int sdMem, int dChannel, int fdRead, int dMode);
int EndOfIRQ(int dIRQnum);
int ExitJob(int dExitError);
int FillData(char *pDest, int cBytes, char bFill);
int GetCmdLine(char *pCmdLineRet, int *pdcbCmdLineRet);
int GetCMOSTime(int *pTimeRet);
int GetFileLFA(int dHandle, int *pdLFARet);
int GetFileSize(int dHandle, int *pdSizeRet);
int GetIRQVector(int IRQnum, int *pVectorRet);
int GetTimerTick(int *pTickRet);
int InByte(int dPort);
int InDWord(int dPort);
int InitDevDr(int dDevNum, char *pDCBs, int nDevices, int dfReplace);
int InWord(int dPort);
int ISendMsg(int dExch, int dMsgHi, int dMsgLo);
int KillAlarm(int dAlarmExch);
int MaskIRQ(int dIRQnum);
int MicroDelay(int dn15us);
int NewTask(int JobNum, int CodeSeg, int Priority, int fDebug, int Exch,
            unsigned int ESP, unsigned int EIP);
int OpenFile(char *pFilename, int dcbFilename, int Mode, int Type, int *pdHandleRet);
int OutByte(char Byte, int wPort);
int OutDWord(int DWord, int wPort);
int OutWord(int Word, int wPort);
int PutVidChars(int ddCol, int ddLine, char *pChars, int sChars, int ddAttrib);
int ReadBytes(int dHandle, char *pDataRet, int nBytes, int *pdnBytesRet);
char ReadCMOS(int Address);
int ReadKBD(int *pdKeyCodeRet, int fWait);
int RegisterSvc(char *pSvcName, int dExch);
int RenameFile(char *pCrntName, int cbCrntName, char *pNewName, int cbNewName);
int Request(char *pSvcName, int wSvcCode, int dRespExch, int *pRqHndlRet, int dnpSend,
            char *pData1, int dcbData1, char *pData2, int dcbData2, int dData0,
            int dData1, int dData2);
int Respond(int dRqHndl, int dStatRet);
int SendMsg(int dExch, int dMsgHi, int dMsgLo);
int SetFileLFA(int dHandle, int dNewLFA);
int SetFileSize(int dHandle, int dSize);
int SetIRQVector(int IRQnum, int *pVectorRet);
int SetJobName(char *pname, int dcbName);
int SetPriority(int bPriority);
int Sleep(int dnTicks);
int SpawnTask(char *pEntry, int dPriority, int fDebug, char *pStack, int fOSCode);
int Tone(int dHz, int dTicks10ms);
int UnMaskIRQ(int dIRQnum);
int WaitMsg(int dExchg, char *pqMsgRet);
int WriteBytes(int dHandle, char *pData, int nBytes, int *pdnBytesRet);

#endif
