;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Mar 24 2016) (Linux)
; This file was generated Thu Jan  2 09:06:16 2020
;--------------------------------------------------------
	.module testparking
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _timer0_ISR
	.globl __mcs51_genXRAMCLEAR
	.globl __mcs51_genXINIT
	.globl __mcs51_genRAMCLEAR
	.globl __sdcc_gsinit_startup
	.globl _main
	.globl _Printer
	.globl _Car5
	.globl _Car4
	.globl _Car3
	.globl _Car2
	.globl _Car1
	.globl _delay
	.globl _now
	.globl _ThreadCreate
	.globl _CY
	.globl _AC
	.globl _F0
	.globl _RS1
	.globl _RS0
	.globl _OV
	.globl _F1
	.globl _P
	.globl _PS
	.globl _PT1
	.globl _PX1
	.globl _PT0
	.globl _PX0
	.globl _RD
	.globl _WR
	.globl _T1
	.globl _T0
	.globl _INT1
	.globl _INT0
	.globl _TXD
	.globl _RXD
	.globl _P3_7
	.globl _P3_6
	.globl _P3_5
	.globl _P3_4
	.globl _P3_3
	.globl _P3_2
	.globl _P3_1
	.globl _P3_0
	.globl _EA
	.globl _ES
	.globl _ET1
	.globl _EX1
	.globl _ET0
	.globl _EX0
	.globl _P2_7
	.globl _P2_6
	.globl _P2_5
	.globl _P2_4
	.globl _P2_3
	.globl _P2_2
	.globl _P2_1
	.globl _P2_0
	.globl _SM0
	.globl _SM1
	.globl _SM2
	.globl _REN
	.globl _TB8
	.globl _RB8
	.globl _TI
	.globl _RI
	.globl _P1_7
	.globl _P1_6
	.globl _P1_5
	.globl _P1_4
	.globl _P1_3
	.globl _P1_2
	.globl _P1_1
	.globl _P1_0
	.globl _TF1
	.globl _TR1
	.globl _TF0
	.globl _TR0
	.globl _IE1
	.globl _IT1
	.globl _IE0
	.globl _IT0
	.globl _P0_7
	.globl _P0_6
	.globl _P0_5
	.globl _P0_4
	.globl _P0_3
	.globl _P0_2
	.globl _P0_1
	.globl _P0_0
	.globl _B
	.globl _ACC
	.globl _PSW
	.globl _IP
	.globl _P3
	.globl _IE
	.globl _P2
	.globl _SBUF
	.globl _SCON
	.globl _P1
	.globl _TH1
	.globl _TH0
	.globl _TL1
	.globl _TL0
	.globl _TMOD
	.globl _TCON
	.globl _PCON
	.globl _DPH
	.globl _DPL
	.globl _SP
	.globl _P0
	.globl _Delay_Time
	.globl _record_B
	.globl _j
	.globl _t
	.globl _temp2
	.globl _temp1
	.globl _current
	.globl _print
	.globl _mutex
	.globl _plot
	.globl _log
	.globl _flag
	.globl _thread
	.globl _counter
	.globl _time
	.globl _index
	.globl _SelectThread
	.globl _SaveCurrentSP
	.globl _ID
	.globl _Bitmap
	.globl _ThreadSP
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_P0	=	0x0080
_SP	=	0x0081
_DPL	=	0x0082
_DPH	=	0x0083
_PCON	=	0x0087
_TCON	=	0x0088
_TMOD	=	0x0089
_TL0	=	0x008a
_TL1	=	0x008b
_TH0	=	0x008c
_TH1	=	0x008d
_P1	=	0x0090
_SCON	=	0x0098
_SBUF	=	0x0099
_P2	=	0x00a0
_IE	=	0x00a8
_P3	=	0x00b0
_IP	=	0x00b8
_PSW	=	0x00d0
_ACC	=	0x00e0
_B	=	0x00f0
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_P0_0	=	0x0080
_P0_1	=	0x0081
_P0_2	=	0x0082
_P0_3	=	0x0083
_P0_4	=	0x0084
_P0_5	=	0x0085
_P0_6	=	0x0086
_P0_7	=	0x0087
_IT0	=	0x0088
_IE0	=	0x0089
_IT1	=	0x008a
_IE1	=	0x008b
_TR0	=	0x008c
_TF0	=	0x008d
_TR1	=	0x008e
_TF1	=	0x008f
_P1_0	=	0x0090
_P1_1	=	0x0091
_P1_2	=	0x0092
_P1_3	=	0x0093
_P1_4	=	0x0094
_P1_5	=	0x0095
_P1_6	=	0x0096
_P1_7	=	0x0097
_RI	=	0x0098
_TI	=	0x0099
_RB8	=	0x009a
_TB8	=	0x009b
_REN	=	0x009c
_SM2	=	0x009d
_SM1	=	0x009e
_SM0	=	0x009f
_P2_0	=	0x00a0
_P2_1	=	0x00a1
_P2_2	=	0x00a2
_P2_3	=	0x00a3
_P2_4	=	0x00a4
_P2_5	=	0x00a5
_P2_6	=	0x00a6
_P2_7	=	0x00a7
_EX0	=	0x00a8
_ET0	=	0x00a9
_EX1	=	0x00aa
_ET1	=	0x00ab
_ES	=	0x00ac
_EA	=	0x00af
_P3_0	=	0x00b0
_P3_1	=	0x00b1
_P3_2	=	0x00b2
_P3_3	=	0x00b3
_P3_4	=	0x00b4
_P3_5	=	0x00b5
_P3_6	=	0x00b6
_P3_7	=	0x00b7
_RXD	=	0x00b0
_TXD	=	0x00b1
_INT0	=	0x00b2
_INT1	=	0x00b3
_T0	=	0x00b4
_T1	=	0x00b5
_WR	=	0x00b6
_RD	=	0x00b7
_PX0	=	0x00b8
_PT0	=	0x00b9
_PX1	=	0x00ba
_PT1	=	0x00bb
_PS	=	0x00bc
_P	=	0x00d0
_F1	=	0x00d1
_OV	=	0x00d2
_RS0	=	0x00d3
_RS1	=	0x00d4
_F0	=	0x00d5
_AC	=	0x00d6
_CY	=	0x00d7
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
;--------------------------------------------------------
; Stack segment in internal ram 
;--------------------------------------------------------
	.area	SSEG
__start__stack:
	.ds	1

;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	.area ISEG    (DATA)
_ThreadSP	=	0x0020
_Bitmap	=	0x0024
_ID	=	0x0028
_SaveCurrentSP	=	0x0029
_SelectThread	=	0x002a
_index	=	0x002b
_time	=	0x002c
_counter	=	0x002d
_thread	=	0x002e
_flag	=	0x002f
_log	=	0x0030
_plot	=	0x003a
_mutex	=	0x003b
_print	=	0x003d
_current	=	0x004b
_temp1	=	0x004c
_temp2	=	0x004d
_t	=	0x004e
_j	=	0x005b
_record_B	=	0x005c
_Delay_Time	=	0x006b
;--------------------------------------------------------
; absolute internal ram data
;--------------------------------------------------------
	.area IABS    (ABS,DATA)
	.area IABS    (ABS,DATA)
;--------------------------------------------------------
; bit data
;--------------------------------------------------------
	.area BSEG    (BIT)
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
	.area HOME    (CODE)
	.area GSINIT0 (CODE)
	.area GSINIT1 (CODE)
	.area GSINIT2 (CODE)
	.area GSINIT3 (CODE)
	.area GSINIT4 (CODE)
	.area GSINIT5 (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area CSEG    (CODE)
;--------------------------------------------------------
; interrupt vector 
;--------------------------------------------------------
	.area HOME    (CODE)
__interrupt_vect:
	ljmp	__sdcc_gsinit_startup
	reti
	.ds	7
	ljmp	_timer0_ISR
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
	.globl __sdcc_gsinit_startup
	.globl __sdcc_program_startup
	.globl __start__stack
	.globl __mcs51_genXINIT
	.globl __mcs51_genXRAMCLEAR
	.globl __mcs51_genRAMCLEAR
	.area GSFINAL (CODE)
	ljmp	__sdcc_program_startup
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
__sdcc_program_startup:
	ljmp	_main
;	return from main will return to caller
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'Car1'
;------------------------------------------------------------
;	testparking.c:7: void Car1(void) {
;	-----------------------------------------
;	 function Car1
;	-----------------------------------------
_Car1:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	testparking.c:8: log[0] = now();
	lcall	_now
	mov	a,dpl
	mov	r0,#_log
	mov	@r0,a
;	testparking.c:10: SemaphoreWait( mutex );
	mov	r0,#_mutex
	dec	@r0
00101$:
	mov	r0,#_mutex
	mov	a,@r0
	jb	acc.7,00101$
;	testparking.c:11: if ( !plot[0] ) {
	mov	r0,#_plot
	mov	a,@r0
	jnz	00105$
;	testparking.c:12: plot[0] = 1;
	mov	r0,#_plot
	mov	@r0,#0x01
;	testparking.c:20: __endasm;
	mov r0,#(_log + 0x0000)
	mov a,@r0
	mov r7,a
	mov a,#0x7F
	anl a,r7
	mov @r0,a
	sjmp	00106$
00105$:
;	testparking.c:22: plot[1] = 1;
	mov	r0,#(_plot + 0x0001)
	mov	@r0,#0x01
;	testparking.c:30: __endasm;
	mov r0,#(_log + 0x0000)
	mov a,@r0
	mov r7,a
	mov a,#0x80
	orl a,r7
	mov @r0,a
00106$:
;	testparking.c:32: SemaphoreSignal( mutex );
	mov	r0,#_mutex
	inc	@r0
;	testparking.c:34: SemaphoreSignal( print );
	mov	r0,#_print
	inc	@r0
;	testparking.c:36: delay(1);
	mov	dpl,#0x01
	lcall	_delay
;	testparking.c:37: log[1] = now();
	lcall	_now
	mov	a,dpl
	mov	r0,#(_log + 0x0001)
	mov	@r0,a
;	testparking.c:39: SemaphoreWait(mutex);
	mov	r0,#_mutex
	dec	@r0
00107$:
	mov	r0,#_mutex
	mov	a,@r0
	jb	acc.7,00107$
;	testparking.c:40: if ( (plot[0]-1)==0 ) {
	mov	r0,#_plot
	mov	a,@r0
	mov	r7,a
	rlc	a
	subb	a,acc
	mov	r6,a
	dec	r7
	cjne	r7,#0xFF,00136$
	dec	r6
00136$:
	mov	a,r7
	orl	a,r6
;	testparking.c:41: plot[0] = 0;
	jnz	00111$
	mov	r0,#_plot
	mov	@r0,a
;	testparking.c:49: __endasm;
	mov r0,#(_log + 0x0001)
	mov a,@r0
	mov r7,a
	mov a,#0x7F
	anl a,r7
	mov @r0,a
	sjmp	00112$
00111$:
;	testparking.c:51: plot[1] = 0;
	mov	r0,#(_plot + 0x0001)
	mov	@r0,#0x00
;	testparking.c:59: __endasm;
	mov r0,#(_log + 0x0001)
	mov a,@r0
	mov r7,a
	mov a,#0x80
	orl a,r7
	mov @r0,a
00112$:
;	testparking.c:61: SemaphoreSignal( mutex );
	mov	r0,#_mutex
	inc	@r0
;	testparking.c:63: SemaphoreSignal( print );
	mov	r0,#_print
	inc	@r0
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Car2'
;------------------------------------------------------------
;	testparking.c:66: void Car2(void) {
;	-----------------------------------------
;	 function Car2
;	-----------------------------------------
_Car2:
;	testparking.c:67: log[2] = now();
	lcall	_now
	mov	a,dpl
	mov	r0,#(_log + 0x0002)
	mov	@r0,a
;	testparking.c:69: SemaphoreWait( mutex );
	mov	r0,#_mutex
	dec	@r0
00101$:
	mov	r0,#_mutex
	mov	a,@r0
	jb	acc.7,00101$
;	testparking.c:70: if ( !plot[0] ) {
	mov	r0,#_plot
	mov	a,@r0
	jnz	00105$
;	testparking.c:71: plot[0] = 2;
	mov	r0,#_plot
	mov	@r0,#0x02
;	testparking.c:79: __endasm;
	mov r0,#(_log + 0x0002)
	mov a,@r0
	mov r7,a
	mov a,#0x7F
	anl a,r7
	mov @r0,a
	sjmp	00106$
00105$:
;	testparking.c:81: plot[1] = 2;
	mov	r0,#(_plot + 0x0001)
	mov	@r0,#0x02
;	testparking.c:89: __endasm;
	mov r0,#(_log + 0x0002)
	mov a,@r0
	mov r7,a
	mov a,#0x80
	orl a,r7
	mov @r0,a
00106$:
;	testparking.c:91: SemaphoreSignal( mutex );
	mov	r0,#_mutex
	inc	@r0
;	testparking.c:93: SemaphoreSignal( print );
	mov	r0,#_print
	inc	@r0
;	testparking.c:95: delay(2);
	mov	dpl,#0x02
	lcall	_delay
;	testparking.c:96: log[3] = now();
	lcall	_now
	mov	a,dpl
	mov	r0,#(_log + 0x0003)
	mov	@r0,a
;	testparking.c:98: SemaphoreWait( mutex );
	mov	r0,#_mutex
	dec	@r0
00107$:
	mov	r0,#_mutex
	mov	a,@r0
	jb	acc.7,00107$
;	testparking.c:99: if ( (plot[0]-2)==0 ) {
	mov	r0,#_plot
	mov	a,@r0
	mov	r7,a
	rlc	a
	subb	a,acc
	mov	r6,a
	mov	a,r7
	add	a,#0xFE
	mov	r7,a
	mov	a,r6
	addc	a,#0xFF
	mov	r6,a
	orl	a,r7
;	testparking.c:100: plot[0] = 0;
	jnz	00111$
	mov	r0,#_plot
	mov	@r0,a
;	testparking.c:108: __endasm;
	mov r0,#(_log + 0x0003)
	mov a,@r0
	mov r7,a
	mov a,#0x7F
	anl a,r7
	mov @r0,a
	sjmp	00112$
00111$:
;	testparking.c:110: plot[1] = 0;
	mov	r0,#(_plot + 0x0001)
	mov	@r0,#0x00
;	testparking.c:118: __endasm;
	mov r0,#(_log + 0x0003)
	mov a,@r0
	mov r7,a
	mov a,#0x80
	orl a,r7
	mov @r0,a
00112$:
;	testparking.c:120: SemaphoreSignal( mutex );
	mov	r0,#_mutex
	inc	@r0
;	testparking.c:122: SemaphoreSignal( print );
	mov	r0,#_print
	inc	@r0
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Car3'
;------------------------------------------------------------
;	testparking.c:125: void Car3(void) {
;	-----------------------------------------
;	 function Car3
;	-----------------------------------------
_Car3:
;	testparking.c:126: log[4] = now();
	lcall	_now
	mov	a,dpl
	mov	r0,#(_log + 0x0004)
	mov	@r0,a
;	testparking.c:128: SemaphoreWait( mutex );
	mov	r0,#_mutex
	dec	@r0
00101$:
	mov	r0,#_mutex
	mov	a,@r0
	jb	acc.7,00101$
;	testparking.c:129: if ( !plot[0] ) {
	mov	r0,#_plot
	mov	a,@r0
	jnz	00105$
;	testparking.c:130: plot[0] = 3;
	mov	r0,#_plot
	mov	@r0,#0x03
;	testparking.c:138: __endasm;
	mov r0,#(_log + 0x0004)
	mov a,@r0
	mov r7,a
	mov a,#0x7F
	anl a,r7
	mov @r0,a
	sjmp	00106$
00105$:
;	testparking.c:140: plot[1] = 3;
	mov	r0,#(_plot + 0x0001)
	mov	@r0,#0x03
;	testparking.c:148: __endasm;
	mov r0,#(_log + 0x0004)
	mov a,@r0
	mov r7,a
	mov a,#0x80
	orl a,r7
	mov @r0,a
00106$:
;	testparking.c:150: SemaphoreSignal( mutex );
	mov	r0,#_mutex
	inc	@r0
;	testparking.c:152: SemaphoreSignal( print );
	mov	r0,#_print
	inc	@r0
;	testparking.c:154: delay(1);
	mov	dpl,#0x01
	lcall	_delay
;	testparking.c:155: log[5] = now();
	lcall	_now
	mov	a,dpl
	mov	r0,#(_log + 0x0005)
	mov	@r0,a
;	testparking.c:157: SemaphoreWait( mutex );
	mov	r0,#_mutex
	dec	@r0
00107$:
	mov	r0,#_mutex
	mov	a,@r0
	jb	acc.7,00107$
;	testparking.c:158: if ( (plot[0]-3)==0 ) {
	mov	r0,#_plot
	mov	a,@r0
	mov	r7,a
	rlc	a
	subb	a,acc
	mov	r6,a
	mov	a,r7
	add	a,#0xFD
	mov	r7,a
	mov	a,r6
	addc	a,#0xFF
	mov	r6,a
	orl	a,r7
;	testparking.c:159: plot[0] = 0;
	jnz	00111$
	mov	r0,#_plot
	mov	@r0,a
;	testparking.c:167: __endasm;
	mov r0,#(_log + 0x0005)
	mov a,@r0
	mov r7,a
	mov a,#0x7F
	anl a,r7
	mov @r0,a
	sjmp	00112$
00111$:
;	testparking.c:169: plot[1] = 0;
	mov	r0,#(_plot + 0x0001)
	mov	@r0,#0x00
;	testparking.c:177: __endasm;
	mov r0,#(_log + 0x0005)
	mov a,@r0
	mov r7,a
	mov a,#0x80
	orl a,r7
	mov @r0,a
00112$:
;	testparking.c:179: SemaphoreSignal( mutex );
	mov	r0,#_mutex
	inc	@r0
;	testparking.c:181: SemaphoreSignal( print );
	mov	r0,#_print
	inc	@r0
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Car4'
;------------------------------------------------------------
;	testparking.c:184: void Car4(void) {
;	-----------------------------------------
;	 function Car4
;	-----------------------------------------
_Car4:
;	testparking.c:185: log[6] = now();
	lcall	_now
	mov	a,dpl
	mov	r0,#(_log + 0x0006)
	mov	@r0,a
;	testparking.c:187: SemaphoreWait( mutex );
	mov	r0,#_mutex
	dec	@r0
00101$:
	mov	r0,#_mutex
	mov	a,@r0
	jb	acc.7,00101$
;	testparking.c:188: if ( !plot[0] ) {
	mov	r0,#_plot
	mov	a,@r0
	jnz	00105$
;	testparking.c:189: plot[0] = 4;
	mov	r0,#_plot
	mov	@r0,#0x04
;	testparking.c:197: __endasm;
	mov r0,#(_log + 0x0006)
	mov a,@r0
	mov r7,a
	mov a,#0x7F
	anl a,r7
	mov @r0,a
	sjmp	00106$
00105$:
;	testparking.c:199: plot[1] = 4;
	mov	r0,#(_plot + 0x0001)
	mov	@r0,#0x04
;	testparking.c:207: __endasm;
	mov r0,#(_log + 0x0006)
	mov a,@r0
	mov r7,a
	mov a,#0x80
	orl a,r7
	mov @r0,a
00106$:
;	testparking.c:209: SemaphoreSignal( mutex );
	mov	r0,#_mutex
	inc	@r0
;	testparking.c:211: SemaphoreSignal( print );
	mov	r0,#_print
	inc	@r0
;	testparking.c:213: delay(3);
	mov	dpl,#0x03
	lcall	_delay
;	testparking.c:214: log[7] = now();
	lcall	_now
	mov	a,dpl
	mov	r0,#(_log + 0x0007)
	mov	@r0,a
;	testparking.c:216: SemaphoreWait( mutex );
	mov	r0,#_mutex
	dec	@r0
00107$:
	mov	r0,#_mutex
	mov	a,@r0
	jb	acc.7,00107$
;	testparking.c:217: if ( (plot[0]-4)==0 ) {
	mov	r0,#_plot
	mov	a,@r0
	mov	r7,a
	rlc	a
	subb	a,acc
	mov	r6,a
	mov	a,r7
	add	a,#0xFC
	mov	r7,a
	mov	a,r6
	addc	a,#0xFF
	mov	r6,a
	orl	a,r7
;	testparking.c:218: plot[0] = 0;
	jnz	00111$
	mov	r0,#_plot
	mov	@r0,a
;	testparking.c:226: __endasm;
	mov r0,#(_log + 0x0007)
	mov a,@r0
	mov r7,a
	mov a,#0x7F
	anl a,r7
	mov @r0,a
	sjmp	00112$
00111$:
;	testparking.c:228: plot[1] = 0;
	mov	r0,#(_plot + 0x0001)
	mov	@r0,#0x00
;	testparking.c:236: __endasm;
	mov r0,#(_log + 0x0007)
	mov a,@r0
	mov r7,a
	mov a,#0x80
	orl a,r7
	mov @r0,a
00112$:
;	testparking.c:238: SemaphoreSignal( mutex );
	mov	r0,#_mutex
	inc	@r0
;	testparking.c:240: SemaphoreSignal( print );
	mov	r0,#_print
	inc	@r0
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Car5'
;------------------------------------------------------------
;	testparking.c:243: void Car5(void) {
;	-----------------------------------------
;	 function Car5
;	-----------------------------------------
_Car5:
;	testparking.c:244: log[8] = now();
	lcall	_now
	mov	a,dpl
	mov	r0,#(_log + 0x0008)
	mov	@r0,a
;	testparking.c:246: SemaphoreWait( mutex );
	mov	r0,#_mutex
	dec	@r0
00101$:
	mov	r0,#_mutex
	mov	a,@r0
	jb	acc.7,00101$
;	testparking.c:247: if ( !plot[0] ) {
	mov	r0,#_plot
	mov	a,@r0
	jnz	00105$
;	testparking.c:248: plot[0] = 5;
	mov	r0,#_plot
	mov	@r0,#0x05
;	testparking.c:256: __endasm;
	mov r0,#(_log + 0x0008)
	mov a,@r0
	mov r7,a
	mov a,#0x7F
	anl a,r7
	mov @r0,a
	sjmp	00106$
00105$:
;	testparking.c:258: plot[1] = 5;
	mov	r0,#(_plot + 0x0001)
	mov	@r0,#0x05
;	testparking.c:266: __endasm;
	mov r0,#(_log + 0x0008)
	mov a,@r0
	mov r7,a
	mov a,#0x80
	orl a,r7
	mov @r0,a
00106$:
;	testparking.c:268: SemaphoreSignal( mutex );
	mov	r0,#_mutex
	inc	@r0
;	testparking.c:270: SemaphoreSignal( print );
	mov	r0,#_print
	inc	@r0
;	testparking.c:272: delay(2);
	mov	dpl,#0x02
	lcall	_delay
;	testparking.c:273: log[9] = now();
	lcall	_now
	mov	a,dpl
	mov	r0,#(_log + 0x0009)
	mov	@r0,a
;	testparking.c:275: SemaphoreWait( mutex );
	mov	r0,#_mutex
	dec	@r0
00107$:
	mov	r0,#_mutex
	mov	a,@r0
	jb	acc.7,00107$
;	testparking.c:276: if ( (plot[0]-5)==0 ) {
	mov	r0,#_plot
	mov	a,@r0
	mov	r7,a
	rlc	a
	subb	a,acc
	mov	r6,a
	mov	a,r7
	add	a,#0xFB
	mov	r7,a
	mov	a,r6
	addc	a,#0xFF
	mov	r6,a
	orl	a,r7
;	testparking.c:277: plot[0] = 0;
	jnz	00111$
	mov	r0,#_plot
	mov	@r0,a
;	testparking.c:285: __endasm;
	mov r0,#(_log + 0x0009)
	mov a,@r0
	mov r7,a
	mov a,#0x7F
	anl a,r7
	mov @r0,a
	sjmp	00112$
00111$:
;	testparking.c:287: plot[1] = 0;
	mov	r0,#(_plot + 0x0001)
	mov	@r0,#0x00
;	testparking.c:295: __endasm;
	mov r0,#(_log + 0x0009)
	mov a,@r0
	mov r7,a
	mov a,#0x80
	orl a,r7
	mov @r0,a
00112$:
;	testparking.c:297: SemaphoreSignal( mutex );
	mov	r0,#_mutex
	inc	@r0
;	testparking.c:299: SemaphoreSignal( print );
	mov	r0,#_print
	inc	@r0
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Printer'
;------------------------------------------------------------
;	testparking.c:302: void Printer(void) {
;	-----------------------------------------
;	 function Printer
;	-----------------------------------------
_Printer:
;	testparking.c:303: TMOD |= 0x20;
	orl	_TMOD,#0x20
;	testparking.c:304: TH1 = -6;
	mov	_TH1,#0xFA
;	testparking.c:305: SCON = 0x50;
	mov	_SCON,#0x50
;	testparking.c:306: TR1 = 1;
	setb	_TR1
;	testparking.c:308: SemaphoreWait( print );
	mov	r0,#_print
	dec	@r0
00101$:
	mov	r0,#_print
	mov	a,@r0
	jb	acc.7,00101$
;	testparking.c:309: SemaphoreWait( print );
	mov	r0,#_print
	dec	@r0
00104$:
	mov	r0,#_print
	mov	a,@r0
	jb	acc.7,00104$
;	testparking.c:310: SemaphoreWait( print );
	mov	r0,#_print
	dec	@r0
00107$:
	mov	r0,#_print
	mov	a,@r0
	jb	acc.7,00107$
;	testparking.c:311: SemaphoreWait( print );
	mov	r0,#_print
	dec	@r0
00110$:
	mov	r0,#_print
	mov	a,@r0
	jb	acc.7,00110$
;	testparking.c:312: SemaphoreWait( print );
	mov	r0,#_print
	dec	@r0
00113$:
	mov	r0,#_print
	mov	a,@r0
	jb	acc.7,00113$
;	testparking.c:313: SemaphoreWait( print );
	mov	r0,#_print
	dec	@r0
00116$:
	mov	r0,#_print
	mov	a,@r0
	jb	acc.7,00116$
;	testparking.c:314: SemaphoreWait( print );
	mov	r0,#_print
	dec	@r0
00119$:
	mov	r0,#_print
	mov	a,@r0
	jb	acc.7,00119$
;	testparking.c:315: SemaphoreWait( print );
	mov	r0,#_print
	dec	@r0
00122$:
	mov	r0,#_print
	mov	a,@r0
	jb	acc.7,00122$
;	testparking.c:316: SemaphoreWait( print );
	mov	r0,#_print
	dec	@r0
00125$:
	mov	r0,#_print
	mov	a,@r0
	jb	acc.7,00125$
;	testparking.c:317: SemaphoreWait( print );
	mov	r0,#_print
	dec	@r0
00128$:
	mov	r0,#_print
	mov	a,@r0
	jb	acc.7,00128$
;	testparking.c:319: t = 0;
	mov	r0,#_t
	mov	@r0,#0x00
;	testparking.c:320: current = 1;
	mov	r0,#_current
	mov	@r0,#0x01
;	testparking.c:321: while( t<10 ){
00218$:
	mov	r0,#_t
	clr	c
	mov	a,@r0
	xrl	a,#0x80
	subb	a,#0x8a
	jc	00476$
	ret
00476$:
;	testparking.c:322: for(j=0; j<10; j++){
	mov	r0,#_j
	mov	@r0,#0x00
00222$:
	mov	r0,#_j
	clr	c
	mov	a,@r0
	xrl	a,#0x80
	subb	a,#0x8a
	jc	00477$
	ljmp	00217$
00477$:
;	testparking.c:323: temp1 = log[j];
	mov	r0,#_j
	mov	a,@r0
	add	a,#_log
	mov	r1,a
	mov	r0,#_temp1
	mov	a,@r1
	mov	@r0,a
;	testparking.c:324: temp2 = ( temp1 & 0x7F );
	mov	r0,#_temp1
	mov	r1,#_temp2
	mov	a,#0x7F
	anl	a,@r0
	mov	@r1,a
;	testparking.c:325: if( temp2==current ){
	mov	r0,#_temp2
	mov	r1,#_current
	mov	b,@r0
	mov	a,@r1
	cjne	a,b,00478$
	sjmp	00479$
00478$:
	ljmp	00223$
00479$:
;	testparking.c:326: SBUF = 'c';
	mov	_SBUF,#0x63
;	testparking.c:327: while (!TI) { }
00131$:
;	testparking.c:328: TI = 0;
	jbc	_TI,00480$
	sjmp	00131$
00480$:
;	testparking.c:329: SBUF = 'a';
	mov	_SBUF,#0x61
;	testparking.c:330: while (!TI) { }
00134$:
;	testparking.c:331: TI = 0;
	jbc	_TI,00481$
	sjmp	00134$
00481$:
;	testparking.c:332: SBUF = 'r';
	mov	_SBUF,#0x72
;	testparking.c:333: while (!TI) { }
00137$:
;	testparking.c:334: TI = 0;
	jbc	_TI,00482$
	sjmp	00137$
00482$:
;	testparking.c:335: SBUF = '1' + j/2;
	mov	r0,#_j
	clr	F0
	mov	b,#0x02
	mov	a,@r0
	jnb	acc.7,00483$
	cpl	F0
	cpl	a
	inc	a
00483$:
	div	ab
	jnb	F0,00484$
	cpl	a
	inc	a
00484$:
	add	a,#0x31
	mov	_SBUF,a
;	testparking.c:336: while (!TI) { }
00140$:
;	testparking.c:337: TI = 0;
	jbc	_TI,00485$
	sjmp	00140$
00485$:
;	testparking.c:338: SBUF = ' ';
	mov	_SBUF,#0x20
;	testparking.c:339: while (!TI) { }
00143$:
;	testparking.c:340: TI = 0;
	jbc	_TI,00486$
	sjmp	00143$
00486$:
;	testparking.c:341: if(j%2){
	mov	r0,#_j
	mov	a,@r0
	mov	c,acc.7
	anl	a,#0x01
	jz	00487$
	jnc	00487$
	orl	a,#0xfe
00487$:
	jz	00162$
;	testparking.c:342: SBUF = 'o';
	mov	_SBUF,#0x6F
;	testparking.c:343: while (!TI) { }
00146$:
;	testparking.c:344: TI = 0;
	jbc	_TI,00489$
	sjmp	00146$
00489$:
;	testparking.c:345: SBUF = 'u';
	mov	_SBUF,#0x75
;	testparking.c:346: while (!TI) { }
00149$:
;	testparking.c:347: TI = 0;
	jbc	_TI,00490$
	sjmp	00149$
00490$:
;	testparking.c:348: SBUF = 't';
	mov	_SBUF,#0x74
;	testparking.c:349: while (!TI) { }
00152$:
;	testparking.c:350: TI = 0;
	jbc	_TI,00491$
	sjmp	00152$
00491$:
	sjmp	00163$
00162$:
;	testparking.c:353: SBUF = 'i';
	mov	_SBUF,#0x69
;	testparking.c:354: while (!TI) { }
00155$:
;	testparking.c:355: TI = 0;
	jbc	_TI,00492$
	sjmp	00155$
00492$:
;	testparking.c:356: SBUF = 'n';
	mov	_SBUF,#0x6E
;	testparking.c:357: while (!TI) { }
00158$:
;	testparking.c:358: TI = 0;
	jbc	_TI,00493$
	sjmp	00158$
00493$:
00163$:
;	testparking.c:360: SBUF = ' ';
	mov	_SBUF,#0x20
;	testparking.c:361: while (!TI) { }
00164$:
;	testparking.c:362: TI = 0;
	jbc	_TI,00494$
	sjmp	00164$
00494$:
;	testparking.c:363: SBUF = 'p';
	mov	_SBUF,#0x70
;	testparking.c:364: while (!TI) { }
00167$:
;	testparking.c:365: TI = 0;
	jbc	_TI,00495$
	sjmp	00167$
00495$:
;	testparking.c:366: SBUF = 'l';
	mov	_SBUF,#0x6C
;	testparking.c:367: while (!TI) { }
00170$:
;	testparking.c:368: TI = 0;
	jbc	_TI,00496$
	sjmp	00170$
00496$:
;	testparking.c:369: SBUF = 'o';
	mov	_SBUF,#0x6F
;	testparking.c:370: while (!TI) { }
00173$:
;	testparking.c:371: TI = 0;
	jbc	_TI,00497$
	sjmp	00173$
00497$:
;	testparking.c:372: SBUF = 't';
	mov	_SBUF,#0x74
;	testparking.c:373: while (!TI) { }
00176$:
;	testparking.c:374: TI = 0;
	jbc	_TI,00498$
	sjmp	00176$
00498$:
;	testparking.c:375: SBUF = '1' + ( temp1 / 0x80 );
	mov	r0,#_temp1
	mov	a,@r0
	rl	a
	anl	a,#0x01
	mov	r7,a
	add	a,#0x31
	mov	_SBUF,a
;	testparking.c:376: while (!TI) { }
00179$:
;	testparking.c:377: TI = 0;
	jbc	_TI,00499$
	sjmp	00179$
00499$:
;	testparking.c:378: SBUF = ' ';
	mov	_SBUF,#0x20
;	testparking.c:379: while (!TI) { }
00182$:
;	testparking.c:380: TI = 0;
	jbc	_TI,00500$
	sjmp	00182$
00500$:
;	testparking.c:381: SBUF = 'a';
	mov	_SBUF,#0x61
;	testparking.c:382: while (!TI) { }
00185$:
;	testparking.c:383: TI = 0;
	jbc	_TI,00501$
	sjmp	00185$
00501$:
;	testparking.c:384: SBUF = 't';
	mov	_SBUF,#0x74
;	testparking.c:385: while (!TI) { }
00188$:
;	testparking.c:386: TI = 0;
	jbc	_TI,00502$
	sjmp	00188$
00502$:
;	testparking.c:387: SBUF = ' ';
	mov	_SBUF,#0x20
;	testparking.c:388: while (!TI) { }
00191$:
;	testparking.c:389: TI = 0;
	jbc	_TI,00503$
	sjmp	00191$
00503$:
;	testparking.c:390: SBUF = 't';
	mov	_SBUF,#0x74
;	testparking.c:391: while (!TI) { }
00194$:
;	testparking.c:392: TI = 0;
	jbc	_TI,00504$
	sjmp	00194$
00504$:
;	testparking.c:393: SBUF = 'i';
	mov	_SBUF,#0x69
;	testparking.c:394: while (!TI) { }
00197$:
;	testparking.c:395: TI = 0;
	jbc	_TI,00505$
	sjmp	00197$
00505$:
;	testparking.c:396: SBUF = 'm';
	mov	_SBUF,#0x6D
;	testparking.c:397: while (!TI) { }
00200$:
;	testparking.c:398: TI = 0;
	jbc	_TI,00506$
	sjmp	00200$
00506$:
;	testparking.c:399: SBUF = 'e';
	mov	_SBUF,#0x65
;	testparking.c:400: while (!TI) { }
00203$:
;	testparking.c:401: TI = 0;
	jbc	_TI,00507$
	sjmp	00203$
00507$:
;	testparking.c:402: SBUF = ' ';
	mov	_SBUF,#0x20
;	testparking.c:403: while (!TI) { }
00206$:
;	testparking.c:404: TI = 0;
	jbc	_TI,00508$
	sjmp	00206$
00508$:
;	testparking.c:405: SBUF = '0' + ( temp1 & 0x7F );
	mov	r0,#_temp1
	mov	a,#0x7F
	anl	a,@r0
	mov	r7,a
	add	a,#0x30
	mov	_SBUF,a
;	testparking.c:406: while (!TI) { }
00209$:
;	testparking.c:407: TI = 0;
	jbc	_TI,00509$
	sjmp	00209$
00509$:
;	testparking.c:408: SBUF = '\n';
	mov	_SBUF,#0x0A
;	testparking.c:409: while (!TI) { }
00212$:
;	testparking.c:410: TI = 0;
	jbc	_TI,00510$
	sjmp	00212$
00510$:
;	testparking.c:411: t++;
	mov	r0,#_t
	inc	@r0
00223$:
;	testparking.c:322: for(j=0; j<10; j++){
	mov	r0,#_j
	inc	@r0
	ljmp	00222$
00217$:
;	testparking.c:414: current++;
	mov	r0,#_current
	inc	@r0
	ljmp	00218$
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;	testparking.c:420: void main(void) {
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
;	testparking.c:422: plot[0] = plot[1] = 0;
	mov	r0,#(_plot + 0x0001)
	mov	@r0,#0x00
	mov	r0,#_plot
	mov	@r0,#0x00
;	testparking.c:424: SemaphoreCreate(mutex, 1);
	mov	r0,#_mutex
	mov	@r0,#0x01
;	testparking.c:425: SemaphoreCreate(print, 0);
	mov	r0,#_print
	mov	@r0,#0x00
;	testparking.c:427: ThreadCreate(Car1);
	mov	dptr,#_Car1
	lcall	_ThreadCreate
;	testparking.c:428: ThreadCreate(Car2);
	mov	dptr,#_Car2
	lcall	_ThreadCreate
;	testparking.c:429: ThreadCreate(Car3);
	mov	dptr,#_Car3
	lcall	_ThreadCreate
;	testparking.c:430: ThreadCreate(Car4);
	mov	dptr,#_Car4
	lcall	_ThreadCreate
;	testparking.c:431: ThreadCreate(Car5);
	mov	dptr,#_Car5
	lcall	_ThreadCreate
;	testparking.c:432: ThreadCreate(Printer);
	mov	dptr,#_Printer
	ljmp	_ThreadCreate
;------------------------------------------------------------
;Allocation info for local variables in function '_sdcc_gsinit_startup'
;------------------------------------------------------------
;	testparking.c:435: void _sdcc_gsinit_startup(void) {
;	-----------------------------------------
;	 function _sdcc_gsinit_startup
;	-----------------------------------------
__sdcc_gsinit_startup:
;	testparking.c:438: __endasm;
	ljmp _Bootstrap
	ret
;------------------------------------------------------------
;Allocation info for local variables in function '_mcs51_genRAMCLEAR'
;------------------------------------------------------------
;	testparking.c:441: void _mcs51_genRAMCLEAR(void) {}
;	-----------------------------------------
;	 function _mcs51_genRAMCLEAR
;	-----------------------------------------
__mcs51_genRAMCLEAR:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function '_mcs51_genXINIT'
;------------------------------------------------------------
;	testparking.c:442: void _mcs51_genXINIT(void) {}
;	-----------------------------------------
;	 function _mcs51_genXINIT
;	-----------------------------------------
__mcs51_genXINIT:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function '_mcs51_genXRAMCLEAR'
;------------------------------------------------------------
;	testparking.c:443: void _mcs51_genXRAMCLEAR(void) {}
;	-----------------------------------------
;	 function _mcs51_genXRAMCLEAR
;	-----------------------------------------
__mcs51_genXRAMCLEAR:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'timer0_ISR'
;------------------------------------------------------------
;	testparking.c:444: void timer0_ISR(void) __interrupt(1) {
;	-----------------------------------------
;	 function timer0_ISR
;	-----------------------------------------
_timer0_ISR:
;	testparking.c:447: __endasm;
	ljmp _myTimer0Handler
	reti
;	eliminated unneeded mov psw,# (no regs used in bank)
;	eliminated unneeded push/pop psw
;	eliminated unneeded push/pop dpl
;	eliminated unneeded push/pop dph
;	eliminated unneeded push/pop b
;	eliminated unneeded push/pop acc
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
