#ifndef __PREEMPTIVE_H__
#define __PREEMPTIVE_H__

#define MAXTHREADS 4  /* not including the scheduler */
/* the scheduler does not take up a thread of its own */
__idata __at (0x20) char ThreadSP[MAXTHREADS];
__idata __at (0x24) char Bitmap[MAXTHREADS];
__idata __at (0x28) char ID;
__idata __at (0x29) char SaveCurrentSP;
__idata __at (0x2A) char SelectThread;
__idata __at (0x2B) char index;
__idata __at (0x2C) unsigned char time;
__idata __at (0x2D) char counter;
__idata __at (0x2E) char thread;
__idata __at (0x2F) char flag;

__idata __at (0x30) unsigned char log[10];
__idata __at (0x3A) char plot[2];
__idata __at (0x3B) char mutex;
__idata __at (0x3D) char print;

__idata __at (0x4B) unsigned char current;
__idata __at (0x4C) unsigned char temp1;
__idata __at (0x4D) unsigned char temp2;
__idata __at (0x4E) char t;

__idata __at (0x5B) char j;
__idata __at (0x5C) char record_B;

__idata __at (0x6B) unsigned char Delay_Time[MAXTHREADS];



#define SemaphoreCreate(s, n) s=n;
#define SemaphoreWait(s)\
{\
s--;\
while (s<0){}\
}
#define SemaphoreSignal(s)\
{\
s++;\
}

typedef char ThreadID;
typedef void (*FunctionPtr)(void);

ThreadID ThreadCreate(FunctionPtr);
void ThreadYield(void);
void ThreadExit(void);

#endif
