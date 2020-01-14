#include <8051.h>
#include "preemptive.h"

#define SAVESTATE \
{ __asm \
push ACC \
push B \
push DPL \
push DPH \
push PSW \
clr RS1 \
clr RS0 \
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

void thread_manager(void){
    do {
        if( ID==MAXTHREADS-1 ) 
            ID = 0;
        else 
            ID++;
        if( Bitmap[ID]>0 ) 
            break;
    } while (1);
    RESTORESTATE;
    // it is invoked as an interrupt service routine
    __asm
    reti
    __endasm;
}

void myTimer0Handler(void){
    SAVESTATE;
    SaveCurrentSP = ID;
    ID = manager_ID;
    RESTORESTATE;
    ID = SaveCurrentSP;
}

void Bootstrap(void) {
    Bitmap[0] = Bitmap[1] = Bitmap[2] = Bitmap[3] = 0;

    TMOD = 0;
    IE = 0x82;
    TR0 = 1;

    manager_ID = ThreadCreate( thread_manager );
    ID = ThreadCreate( main );
    RESTORESTATE;
}

ThreadID ThreadCreate(FunctionPtr fp) {
    EA = 0;// disable interrupts 
    for(index=0; index<MAXTHREADS; index++) 
        if( !Bitmap[index] ) 
            break;
    if( index==MAXTHREADS ) 
        return -1;

    Bitmap[index] = 1;
    SaveCurrentSP = SP;
    SP = 0x3F + index*0x10;

    __asm
    mov a,DPL
    mov b,DPH
    mov	dptr,#_ThreadExit
    push DPL
    push DPH
    push a
    push b
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
    EA = 1;// reenable interrupts 
    return index;
}

void ThreadYield(void) {
    EA = 0;// disable interrupts 
    SAVESTATE;
    do {
        if( ID==MAXTHREADS-1 )
            ID = 0;
        else 
            ID++;
        if( Bitmap[ID]>0 ) 
            break;
    } while (1);
    RESTORESTATE;
    EA = 1;// reenable interrupts 
}

void ThreadExit(void) {
    EA = 0;// disable interrupts 
    Bitmap[ID] = 0;
    do {
        if( ID==MAXTHREADS-1 ) 
            ID = 0;
        else 
            ID++;
        if( Bitmap[ID]>0 ) 
            break;
    } while (1);
    RESTORESTATE;
    EA = 1;// reenable interrupts 
}
