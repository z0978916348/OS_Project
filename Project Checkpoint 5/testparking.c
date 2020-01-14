#include <8051.h>
#include "preemptive.h"

unsigned char now( void );
void delay(unsigned char p);

void Car1(void) {
    log[0] = now();

    SemaphoreWait( mutex );
    if ( !plot[0] ) {
        plot[0] = 1;
        __asm
            mov	r0,#(_log + 0x0000)
            mov	a,@r0
            mov r7,a
            mov	a,#0x7F
            anl	a,r7
            mov	@r0,a
        __endasm;
    } else {
        plot[1] = 1;
        __asm
            mov	r0,#(_log + 0x0000)
            mov	a,@r0
            mov r7,a
            mov	a,#0x80
            orl	a,r7
            mov	@r0,a
        __endasm;
    }
    SemaphoreSignal( mutex );

    SemaphoreSignal( print );

    delay(1);
    log[1] = now();

    SemaphoreWait(mutex);
    if ( (plot[0]-1)==0 ) {
        plot[0] = 0;
        __asm
            mov	r0,#(_log + 0x0001)
            mov	a,@r0
            mov r7,a
            mov	a,#0x7F
            anl	a,r7
            mov	@r0,a
        __endasm;
    } else {
        plot[1] = 0;
        __asm
            mov	r0,#(_log + 0x0001)
            mov	a,@r0
            mov r7,a
            mov	a,#0x80
            orl	a,r7
            mov	@r0,a
        __endasm;
    }
    SemaphoreSignal( mutex );

    SemaphoreSignal( print );
}

void Car2(void) {
    log[2] = now();

    SemaphoreWait( mutex );
    if ( !plot[0] ) {
        plot[0] = 2;
        __asm
            mov	r0,#(_log + 0x0002)
            mov	a,@r0
            mov r7,a
            mov	a,#0x7F
            anl	a,r7
            mov	@r0,a
        __endasm;
    } else {
        plot[1] = 2;
        __asm
            mov	r0,#(_log + 0x0002)
            mov	a,@r0
            mov r7,a
            mov	a,#0x80
            orl	a,r7
            mov	@r0,a
        __endasm;
    }
    SemaphoreSignal( mutex );

    SemaphoreSignal( print );
    
    delay(2);
    log[3] = now();

    SemaphoreWait( mutex );
    if ( (plot[0]-2)==0 ) {
        plot[0] = 0;
        __asm
            mov	r0,#(_log + 0x0003)
            mov	a,@r0
            mov r7,a
            mov	a,#0x7F
            anl	a,r7
            mov	@r0,a
        __endasm;
    } else {
        plot[1] = 0;
        __asm
            mov	r0,#(_log + 0x0003)
            mov	a,@r0
            mov r7,a
            mov	a,#0x80
            orl	a,r7
            mov	@r0,a
        __endasm;
    }
    SemaphoreSignal( mutex );

    SemaphoreSignal( print );
}

void Car3(void) {
    log[4] = now();

    SemaphoreWait( mutex );
    if ( !plot[0] ) {
        plot[0] = 3;
        __asm
            mov	r0,#(_log + 0x0004)
            mov	a,@r0
            mov r7,a
            mov	a,#0x7F
            anl	a,r7
            mov	@r0,a
        __endasm;
    } else {
        plot[1] = 3;
        __asm
            mov	r0,#(_log + 0x0004)
            mov	a,@r0
            mov r7,a
            mov	a,#0x80
            orl	a,r7
            mov	@r0,a
        __endasm;
    }
    SemaphoreSignal( mutex );

    SemaphoreSignal( print );
    
    delay(1);
    log[5] = now();

    SemaphoreWait( mutex );
    if ( (plot[0]-3)==0 ) {
        plot[0] = 0;
        __asm
            mov	r0,#(_log + 0x0005)
            mov	a,@r0
            mov r7,a
            mov	a,#0x7F
            anl	a,r7
            mov	@r0,a
        __endasm;
    } else {
        plot[1] = 0;
        __asm
            mov	r0,#(_log + 0x0005)
            mov	a,@r0
            mov r7,a
            mov	a,#0x80
            orl	a,r7
            mov	@r0,a
        __endasm;
    }
    SemaphoreSignal( mutex );

    SemaphoreSignal( print );
}

void Car4(void) {
    log[6] = now();

    SemaphoreWait( mutex );
    if ( !plot[0] ) {
        plot[0] = 4;
        __asm
            mov	r0,#(_log + 0x0006)
            mov	a,@r0
            mov r7,a
            mov	a,#0x7F
            anl	a,r7
            mov	@r0,a
        __endasm;
    } else {
        plot[1] = 4;
        __asm
            mov	r0,#(_log + 0x0006)
            mov	a,@r0
            mov r7,a
            mov	a,#0x80
            orl	a,r7
            mov	@r0,a
        __endasm;
    }
    SemaphoreSignal( mutex );

    SemaphoreSignal( print );
    
    delay(3);
    log[7] = now();

    SemaphoreWait( mutex );
    if ( (plot[0]-4)==0 ) {
        plot[0] = 0;
        __asm
            mov	r0,#(_log + 0x0007)
            mov	a,@r0
            mov r7,a
            mov	a,#0x7F
            anl	a,r7
            mov	@r0,a
        __endasm;
    } else {
        plot[1] = 0;
        __asm
            mov	r0,#(_log + 0x0007)
            mov	a,@r0
            mov r7,a
            mov	a,#0x80
            orl	a,r7
            mov	@r0,a
        __endasm;
    }
    SemaphoreSignal( mutex );

    SemaphoreSignal( print );
}

void Car5(void) {
    log[8] = now();

    SemaphoreWait( mutex );
    if ( !plot[0] ) {
        plot[0] = 5;
        __asm
            mov	r0,#(_log + 0x0008)
            mov	a,@r0
            mov r7,a
            mov	a,#0x7F
            anl	a,r7
            mov	@r0,a
        __endasm;
    } else {
        plot[1] = 5;
        __asm
            mov	r0,#(_log + 0x0008)
            mov	a,@r0
            mov r7,a
            mov	a,#0x80
            orl	a,r7
            mov	@r0,a
        __endasm;
    }
    SemaphoreSignal( mutex );

    SemaphoreSignal( print );
    
    delay(2);
    log[9] = now();

    SemaphoreWait( mutex );
    if ( (plot[0]-5)==0 ) {
        plot[0] = 0;
        __asm
            mov	r0,#(_log + 0x0009)
            mov	a,@r0
            mov r7,a
            mov	a,#0x7F
            anl	a,r7
            mov	@r0,a
        __endasm;
    } else {
        plot[1] = 0;
        __asm
            mov	r0,#(_log + 0x0009)
            mov	a,@r0
            mov r7,a
            mov	a,#0x80
            orl	a,r7
            mov	@r0,a
        __endasm;
    }
    SemaphoreSignal( mutex );

    SemaphoreSignal( print );
}

void Printer(void) {
    TMOD |= 0x20;
    TH1 = -6;
    SCON = 0x50;
    TR1 = 1;

    SemaphoreWait( print );
    SemaphoreWait( print );
    SemaphoreWait( print );
    SemaphoreWait( print );
    SemaphoreWait( print );
    SemaphoreWait( print );
    SemaphoreWait( print );
    SemaphoreWait( print );
    SemaphoreWait( print );
    SemaphoreWait( print );

    t = 0;
    current = 1;
    while( t<10 ){
        for(j=0; j<10; j++){
            temp1 = log[j];
            temp2 = ( temp1 & 0x7F );
            if( temp2==current ){
                SBUF = 'c';
                while (!TI) { }
                TI = 0;
                SBUF = 'a';
                while (!TI) { }
                TI = 0;
                SBUF = 'r';
                while (!TI) { }
                TI = 0;
                SBUF = '1' + j/2;
                while (!TI) { }
                TI = 0;
                SBUF = ' ';
                while (!TI) { }
                TI = 0;
                if(j%2){
                    SBUF = 'o';
                    while (!TI) { }
                    TI = 0;
                    SBUF = 'u';
                    while (!TI) { }
                    TI = 0;
                    SBUF = 't';
                    while (!TI) { }
                    TI = 0;
                }
                else{
                    SBUF = 'i';
                    while (!TI) { }
                    TI = 0;
                    SBUF = 'n';
                    while (!TI) { }
                    TI = 0;
                }
                SBUF = ' ';
                while (!TI) { }
                TI = 0;
                SBUF = 'p';
                while (!TI) { }
                TI = 0;
                SBUF = 'l';
                while (!TI) { }
                TI = 0;
                SBUF = 'o';
                while (!TI) { }
                TI = 0;
                SBUF = 't';
                while (!TI) { }
                TI = 0;
                SBUF = '1' + ( temp1 / 0x80 );
                while (!TI) { }
                TI = 0;
                SBUF = ' ';
                while (!TI) { }
                TI = 0;
                SBUF = 'a';
                while (!TI) { }
                TI = 0;
                SBUF = 't';
                while (!TI) { }
                TI = 0;
                SBUF = ' ';
                while (!TI) { }
                TI = 0;
                SBUF = 't';
                while (!TI) { }
                TI = 0;
                SBUF = 'i';
                while (!TI) { }
                TI = 0;
                SBUF = 'm';
                while (!TI) { }
                TI = 0;
                SBUF = 'e';
                while (!TI) { }
                TI = 0;
                SBUF = ' ';
                while (!TI) { }
                TI = 0;
                SBUF = '0' + ( temp1 & 0x7F );
                while (!TI) { }
                TI = 0;
                SBUF = '\n';
                while (!TI) { }
                TI = 0;
                t++;
            }
        }
        current++;
    }

    
}

void main(void) {

    plot[0] = plot[1] = 0;

    SemaphoreCreate(mutex, 1);
    SemaphoreCreate(print, 0);

    ThreadCreate(Car1);
    ThreadCreate(Car2);
    ThreadCreate(Car3);
    ThreadCreate(Car4);
    ThreadCreate(Car5);
    ThreadCreate(Printer);
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

