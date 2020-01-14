#include <8051.h>
#include "cooperative.h"

__data __at (0x34) char ThreadSP[MAXTHREADS];
__data __at (0x38) char Bitmap[MAXTHREADS];
__data __at (0x3C) char ID;
__data __at (0x3D) char SaveCurrentSP;
__data __at (0x3E) char SelectThread; 
__data __at (0x3F) char index;

#define SAVESTATE \
{ __asm \
push ACC \
push B \
push DPL \
push DPH \
push PSW \
clr RS0 \
clr RS1 \
__endasm; \
ThreadSP[ID] = SP;\
}

#define RESTORESTATE \
{ SP = ThreadSP[ID];\
__asm \
pop PSW \
pop DPH \
pop DPL \
pop B \
pop ACC \
__endasm; \
}

extern void main(void);

void Bootstrap(void) {
    Bitmap[0] = Bitmap[1] = Bitmap[2] = Bitmap[3] = 0;
    ID = ThreadCreate( main );
    RESTORESTATE;
}

ThreadID ThreadCreate(FunctionPtr fp) {
    for(index=0; index<MAXTHREADS; index++) 
        if( !Bitmap[index] ) 
            break;
    if( index==MAXTHREADS ) 
        return -1;

    Bitmap[index] = 1;
    SaveCurrentSP = SP;
    SP = 0x3F + index*0x10;

    __asm
    push DPL
    push DPH
    mov a,#0x00
    push a
    push a
    push a
    push a
    __endasm;
    SelectThread = index<<3;
    __asm
    push _SelectThread
    __endasm;

    ThreadSP[index] = SP;
    SP = SaveCurrentSP;
    return index;
}

void ThreadYield(void) {
    SAVESTATE;
    do {
        ID = ( ID==MAXTHREADS-1 ) ? 0 : ID+1;
        if( Bitmap[ID]>0 ) 
            break;
    } while (1);
    RESTORESTATE;
}

void ThreadExit(void) {
    Bitmap[ID] = 0;
    do {
        ID = ( ID==MAXTHREADS-1 ) ? 0 : ID+1;
        if( Bitmap[ID]>0 ) 
            break;
    } while (1);
    RESTORESTATE;
}
