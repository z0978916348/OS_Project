#include <8051.h>
#include "cooperative.h"

__data __at (0x30) char Buffer;
__data __at (0x31) char sharedVar;


void Producer(void) {
    sharedVar = 'A';
    while (1) {
         if(Buffer!=0) ThreadYield();
         Buffer = sharedVar;
         if(sharedVar=='Z') sharedVar = 'A';
         else sharedVar++;
    }
}

void Consumer(void) {
    TMOD = 0x20;  // means the timer operation completes with maximum clock
    TH1 = -6;       //  To get baud rates compatible with the PC, we must load TH1 with the values
    SCON = 0x50;  // 8-bit 1 stop REN which allows the 8051 to receive data on the RxD pin of the 8051   
    TR1 = 1;        // TR1 is set to 1 to start Timer 1
    while (1) {
        if(Buffer==0) ThreadYield();
        SBUF = Buffer;   // SBUF holds the byte of data when it is received by the 8051 ‘s RxD line
        Buffer = 0;      // reset
        while (!TI) { }     
        TI = 0;   // Serial Port Transmit
    }
}

void main(void) {
    Buffer = 0;
    ThreadCreate(Producer);
    ThreadCreate(Consumer);
    ThreadExit();
}

void _sdcc_gsinit_startup(void) {
        __asm
                ljmp  _Bootstrap
        __endasm;
}

void _mcs51_genRAMCLEAR(void) {}
void _mcs51_genXINIT(void) {}
void _mcs51_genXRAMCLEAR(void) {}
