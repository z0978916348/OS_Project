#include <8051.h>
#include "preemptive.h"

__idata __at (0x30) char Buffer;
__idata __at (0x31) char sharedVar;

void Producer(void) {
    sharedVar = 'A';
    while (1) {
        while( Buffer ) {}
        EA = 0;     // disable interrupts 
        Buffer = sharedVar;
        EA = 1;     // reenable interrupts 
        if( sharedVar=='Z' ) 
            sharedVar = 'A';
        else 
            sharedVar++;
    }
}

void Consumer(void) {
    TMOD |= 0x20;   // preserve the Bootstrap code's setting 
    TH1 = -6;
    SCON = 0x50;
    TR1 = 1;
    while (1) {
        while( !Buffer ) {}
        EA = 0;
	    SBUF = Buffer;
        Buffer = 0;
        EA = 1;
	    while (!TI) {}
        TI = 0;
    }
}

void main(void) {
    Buffer = 0;

    ThreadCreate( Producer );
    ThreadCreate( Consumer );
    ThreadExit();
}

void _sdcc_gsinit_startup(void) {
        __asm
                ljmp  _Bootstrap
        __endasm;
}
// SDCC to generate the proper code for ISR. So, include the following lines
void _mcs51_genRAMCLEAR(void) {}
void _mcs51_genXINIT(void) {}
void _mcs51_genXRAMCLEAR(void) {}
void timer0_ISR(void) __interrupt(1) {
    __asm
        ljmp _myTimer0Handler
    __endasm;
}

