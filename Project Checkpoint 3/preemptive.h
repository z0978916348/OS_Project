#ifndef __PREEMPTIVE_H__
#define __PREEMPTIVE_H__

#define MAXTHREADS 4  /* not including the scheduler */
/* the scheduler does not take up a thread of its own */
__idata __at (0x20) char ThreadSP[MAXTHREADS];
__idata __at (0x24) char Bitmap[MAXTHREADS];
__idata __at (0x28) char ID;
__idata __at (0x29) char manager_ID;
__idata __at (0x2A) char SaveCurrentSP;
__idata __at (0x2B) char SelectThread;
__idata __at (0x2C) char index;

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
