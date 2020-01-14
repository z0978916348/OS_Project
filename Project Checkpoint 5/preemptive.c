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

unsigned char now( void ) { 
    return time; 
}

void delay(unsigned char p) {
    Delay_Time[ID] = now() + p;
    Bitmap[ID] = -2;
    ThreadYield();
}

void thread_manager(void){
    while(1){
        EA = 0;
        record_B = SelectThread = 0;
        for(index=1; index<MAXTHREADS; index++) 
            if( record_B < Bitmap[index] ) {
                record_B = Bitmap[index];
                SelectThread = index;
            }
        if( SelectThread==0 ) flag = 1;
        EA = 1;
        while( flag ) {}
        EA = 0;
        if( SelectThread ){
            ID = SelectThread;
            RESTORESTATE;
            EA = 1;
            return;
        }
        EA = 1;
    }
}

void myTimer0Handler(void){
    SAVESTATE;

    flag = 0;

    counter = (counter==4) ? 0 : counter+1;
    if(!counter) time++;

    for(index=1; index<MAXTHREADS; index++){
        if( Bitmap[index]>0 ){
            if( index==ID ) Bitmap[index]=1;
            else Bitmap[index]++;
        }
        else if( Bitmap[index]==-2 && Delay_Time[index]==time ) Bitmap[index] = 10;
    }
    ID = 0; //manager_ID
    RESTORESTATE;
    __asm
    reti
    __endasm;
}

void Bootstrap(void) {
    Bitmap[0] = Bitmap[1] = Bitmap[2] = Bitmap[3] = 0;
    
    time = 1, counter = 0;

    TMOD = 0;
    IE = 0x82;
    TR0 = 1;

    SemaphoreCreate(thread, 4);

    ThreadCreate( thread_manager );
    ID = ThreadCreate( main );
    RESTORESTATE;
}

ThreadID ThreadCreate(FunctionPtr fp) {
    SemaphoreWait( thread );
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
    SemaphoreSignal( thread );
    EA = 0;// disable interrupts 
    Bitmap[ID] = 0;
    __asm
        clr RS1
        clr RS0
    __endasm;
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
