#include <8051.h>
#include "preemptive.h"

__idata __at (0x30) char Buffer[3];
__idata __at (0x33) char sharedVar;
__idata __at (0x34) char sharedNum;
__idata __at (0x35) char mutex;
__idata __at (0x36) char full;
__idata __at (0x37) char empty;
__idata __at (0x3B) char Bhead;
__idata __at (0x3C) char Btail;
__idata __at (0x3D) char change;
__idata __at (0x3D) char flag;
void Producer1(void) {
    sharedVar = 'A';
    while (1) {
        while( change==0 ) {}
        change++;
        SemaphoreWait(empty);
        SemaphoreWait(mutex);
        Buffer[Bhead] = sharedVar;
        SemaphoreSignal(mutex);
        SemaphoreSignal(full);
        if( Bhead==2 ) 
            Bhead=0;
        else 
            Bhead++;
        if( sharedVar=='Z' ) 
            sharedVar = 'A';
        else 
            sharedVar++;
    }
}
void Producer2(void) {
    sharedNum ='0';
    while (1) {
        while( change!=0 ){}
        change--;
        SemaphoreWait(empty);
        SemaphoreWait(mutex);
        Buffer[Bhead] = sharedNum;
        SemaphoreSignal(mutex);
        SemaphoreSignal(full);
        if( Bhead==2 ) 
            Bhead=0;
        else 
            Bhead++;
        if( sharedNum=='9' ) 
            sharedNum ='0';
        else 
            sharedNum++;
    }
}
void Consumer(void) {
    TMOD |= 0x20;
    TH1 = -6;
    SCON = 0x50;
    TR1 = 1;
    while (1) {
        SemaphoreWait(full);
        SemaphoreWait(mutex);
        SBUF = Buffer[Btail];
        SemaphoreSignal(mutex);
        SemaphoreSignal(empty);
        if( Btail==2 ) 
            Btail=0;
        else 
            Btail++;
        while (!TI) {}
        TI = 0;
    }
}

void main(void) {
    Buffer[0] = Buffer[1] = Buffer[2] = 0;
    Bhead = Btail = 0;
    change = 0;
    SemaphoreCreate(mutex, 1);
    SemaphoreCreate(full, 0);
    SemaphoreCreate(empty, 3);
    ThreadCreate( Producer1 );
    ThreadCreate( Producer2 );
    Consumer();
}

void _sdcc_gsinit_startup(void) {
        __asm
                ljmp  _Bootstrap
        __endasm;
}

void _mcs51_genRAMCLEAR(void) {}
void _mcs51_genXINIT(void) {}
void _mcs51_genXRAMCLEAR(void) {}
void timer0_ISR(void) __interrupt(1) {
    __asm
        ljmp _myTimer0Handler
    __endasm;
}

