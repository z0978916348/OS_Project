;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Mar 24 2016) (Linux)
; This file was generated Thu Jan  2 09:06:16 2020
;--------------------------------------------------------
	.module preemptive
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _Bootstrap
	.globl _myTimer0Handler
	.globl _thread_manager
	.globl _delay
	.globl _now
	.globl _main
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
	.globl _ThreadCreate
	.globl _ThreadYield
	.globl _ThreadExit
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
	.area	OSEG    (OVR,DATA)
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
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'now'
;------------------------------------------------------------
;	preemptive.c:30: unsigned char now( void ) { 
;	-----------------------------------------
;	 function now
;	-----------------------------------------
_now:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	preemptive.c:31: return time; 
	mov	r0,#_time
	mov	dpl,@r0
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'delay'
;------------------------------------------------------------
;p                         Allocated to registers r7 
;------------------------------------------------------------
;	preemptive.c:34: void delay(unsigned char p) {
;	-----------------------------------------
;	 function delay
;	-----------------------------------------
_delay:
	mov	r7,dpl
;	preemptive.c:35: Delay_Time[ID] = now() + p;
	mov	r0,#_ID
	mov	a,@r0
	add	a,#_Delay_Time
	mov	r1,a
	push	ar7
	push	ar1
	lcall	_now
	mov	a,dpl
	pop	ar1
	pop	ar7
	add	a,r7
	mov	@r1,a
;	preemptive.c:36: Bitmap[ID] = -2;
	mov	r0,#_ID
	mov	a,@r0
	add	a,#_Bitmap
	mov	r0,a
	mov	@r0,#0xFE
;	preemptive.c:37: ThreadYield();
	ljmp	_ThreadYield
;------------------------------------------------------------
;Allocation info for local variables in function 'thread_manager'
;------------------------------------------------------------
;	preemptive.c:40: void thread_manager(void){
;	-----------------------------------------
;	 function thread_manager
;	-----------------------------------------
_thread_manager:
;	preemptive.c:41: while(1){
00112$:
;	preemptive.c:42: EA = 0;
	clr	_EA
;	preemptive.c:43: record_B = SelectThread = 0;
	mov	r0,#_SelectThread
	mov	@r0,#0x00
	mov	r0,#_record_B
	mov	@r0,#0x00
;	preemptive.c:44: for(index=1; index<MAXTHREADS; index++) 
	mov	r0,#_index
	mov	@r0,#0x01
00115$:
	mov	r0,#_index
	clr	c
	mov	a,@r0
	xrl	a,#0x80
	subb	a,#0x84
	jnc	00103$
;	preemptive.c:45: if( record_B < Bitmap[index] ) {
	mov	r0,#_index
	mov	a,@r0
	add	a,#_Bitmap
	mov	r1,a
	mov	ar7,@r1
	mov	r0,#_record_B
	clr	c
	mov	a,@r0
	xrl	a,#0x80
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	jnc	00116$
;	preemptive.c:46: record_B = Bitmap[index];
	mov	r0,#_index
	mov	a,@r0
	add	a,#_Bitmap
	mov	r1,a
	mov	r0,#_record_B
	mov	a,@r1
	mov	@r0,a
;	preemptive.c:47: SelectThread = index;
	mov	r0,#_index
	mov	r1,#_SelectThread
	mov	a,@r0
	mov	@r1,a
00116$:
;	preemptive.c:44: for(index=1; index<MAXTHREADS; index++) 
	mov	r0,#_index
	inc	@r0
	sjmp	00115$
00103$:
;	preemptive.c:49: if( SelectThread==0 ) flag = 1;
	mov	r0,#_SelectThread
	mov	a,@r0
	jnz	00105$
	mov	r0,#_flag
	mov	@r0,#0x01
00105$:
;	preemptive.c:50: EA = 1;
	setb	_EA
;	preemptive.c:51: while( flag ) {}
00106$:
	mov	r0,#_flag
	mov	a,@r0
	jnz	00106$
;	preemptive.c:52: EA = 0;
	clr	_EA
;	preemptive.c:53: if( SelectThread ){
	mov	r0,#_SelectThread
	mov	a,@r0
	jz	00110$
;	preemptive.c:54: ID = SelectThread;
	mov	r0,#_SelectThread
	mov	r1,#_ID
	mov	a,@r0
	mov	@r1,a
;	preemptive.c:55: RESTORESTATE;
	mov	r0,#_ID
	mov	a,@r0
	add	a,#_ThreadSP
	mov	r1,a
	mov	_SP,@r1
	pop PSW 
	pop DPH 
	pop DPL 
	pop B 
	pop ACC 
;	preemptive.c:56: EA = 1;
	setb	_EA
;	preemptive.c:57: return;
	ret
00110$:
;	preemptive.c:59: EA = 1;
	setb	_EA
	sjmp	00112$
;------------------------------------------------------------
;Allocation info for local variables in function 'myTimer0Handler'
;------------------------------------------------------------
;	preemptive.c:63: void myTimer0Handler(void){
;	-----------------------------------------
;	 function myTimer0Handler
;	-----------------------------------------
_myTimer0Handler:
;	preemptive.c:64: SAVESTATE;
	push ACC 
	push B 
	push DPL 
	push DPH 
	push PSW 
	clr RS1 
	clr RS0 
	mov	r0,#_ID
	mov	a,@r0
	add	a,#_ThreadSP
	mov	r0,a
	mov	@r0,_SP
;	preemptive.c:66: flag = 0;
	mov	r0,#_flag
	mov	@r0,#0x00
;	preemptive.c:68: counter = (counter==4) ? 0 : counter+1;
	mov	r0,#_counter
	cjne	@r0,#0x04,00118$
	mov	r7,#0x00
	sjmp	00119$
00118$:
	mov	r0,#_counter
	mov	a,@r0
	inc	a
	mov	r7,a
00119$:
	mov	r0,#_counter
	mov	@r0,ar7
;	preemptive.c:69: if(!counter) time++;
	mov	r0,#_counter
	mov	a,@r0
	jnz	00102$
	mov	r0,#_time
	inc	@r0
00102$:
;	preemptive.c:71: for(index=1; index<MAXTHREADS; index++){
	mov	r0,#_index
	mov	@r0,#0x01
00114$:
	mov	r0,#_index
	clr	c
	mov	a,@r0
	xrl	a,#0x80
	subb	a,#0x84
	jnc	00112$
;	preemptive.c:72: if( Bitmap[index]>0 ){
	mov	r0,#_index
	mov	a,@r0
	add	a,#_Bitmap
	mov	r1,a
	mov	ar7,@r1
	clr	c
	mov	a,#(0x00 ^ 0x80)
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	jnc	00110$
;	preemptive.c:73: if( index==ID ) Bitmap[index]=1;
	mov	r0,#_index
	mov	r1,#_ID
	mov	b,@r0
	mov	a,@r1
	cjne	a,b,00104$
	mov	r0,#_index
	mov	a,@r0
	add	a,#_Bitmap
	mov	r0,a
	mov	@r0,#0x01
	sjmp	00115$
00104$:
;	preemptive.c:74: else Bitmap[index]++;
	mov	r0,#_index
	mov	a,@r0
	add	a,#_Bitmap
	mov	r1,a
	mov	a,@r1
	mov	r7,a
	inc	a
	mov	@r1,a
	sjmp	00115$
00110$:
;	preemptive.c:76: else if( Bitmap[index]==-2 && Delay_Time[index]==time ) Bitmap[index] = 10;
	mov	r0,#_index
	mov	a,@r0
	add	a,#_Bitmap
	mov	r1,a
	mov	ar7,@r1
	cjne	r7,#0xFE,00115$
	mov	r0,#_index
	mov	a,@r0
	add	a,#_Delay_Time
	mov	r1,a
	mov	ar7,@r1
	mov	r0,#_time
	mov	a,@r0
	cjne	a,ar7,00115$
	mov	r0,#_index
	mov	a,@r0
	add	a,#_Bitmap
	mov	r0,a
	mov	@r0,#0x0A
00115$:
;	preemptive.c:71: for(index=1; index<MAXTHREADS; index++){
	mov	r0,#_index
	inc	@r0
	sjmp	00114$
00112$:
;	preemptive.c:78: ID = 0; //manager_ID
	mov	r0,#_ID
	mov	@r0,#0x00
;	preemptive.c:79: RESTORESTATE;
	mov	r0,#_ID
	mov	a,@r0
	add	a,#_ThreadSP
	mov	r1,a
	mov	_SP,@r1
	pop PSW 
	pop DPH 
	pop DPL 
	pop B 
	pop ACC 
;	preemptive.c:82: __endasm;
	reti
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Bootstrap'
;------------------------------------------------------------
;	preemptive.c:85: void Bootstrap(void) {
;	-----------------------------------------
;	 function Bootstrap
;	-----------------------------------------
_Bootstrap:
;	preemptive.c:86: Bitmap[0] = Bitmap[1] = Bitmap[2] = Bitmap[3] = 0;
	mov	r0,#(_Bitmap + 0x0003)
	mov	@r0,#0x00
	mov	r0,#(_Bitmap + 0x0002)
	mov	@r0,#0x00
	mov	r0,#(_Bitmap + 0x0001)
	mov	@r0,#0x00
	mov	r0,#_Bitmap
	mov	@r0,#0x00
;	preemptive.c:88: time = 1, counter = 0;
	mov	r0,#_time
	mov	@r0,#0x01
	mov	r0,#_counter
	mov	@r0,#0x00
;	preemptive.c:90: TMOD = 0;
	mov	_TMOD,#0x00
;	preemptive.c:91: IE = 0x82;
	mov	_IE,#0x82
;	preemptive.c:92: TR0 = 1;
	setb	_TR0
;	preemptive.c:94: SemaphoreCreate(thread, 4);
	mov	r0,#_thread
	mov	@r0,#0x04
;	preemptive.c:96: ThreadCreate( thread_manager );
	mov	dptr,#_thread_manager
	lcall	_ThreadCreate
;	preemptive.c:97: ID = ThreadCreate( main );
	mov	dptr,#_main
	lcall	_ThreadCreate
	mov	a,dpl
	mov	r0,#_ID
	mov	@r0,a
;	preemptive.c:98: RESTORESTATE;
	mov	r0,#_ID
	mov	a,@r0
	add	a,#_ThreadSP
	mov	r1,a
	mov	_SP,@r1
	pop PSW 
	pop DPH 
	pop DPL 
	pop B 
	pop ACC 
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'ThreadCreate'
;------------------------------------------------------------
;fp                        Allocated to registers 
;------------------------------------------------------------
;	preemptive.c:101: ThreadID ThreadCreate(FunctionPtr fp) {
;	-----------------------------------------
;	 function ThreadCreate
;	-----------------------------------------
_ThreadCreate:
;	preemptive.c:102: SemaphoreWait( thread );
	mov	r0,#_thread
	dec	@r0
00101$:
	mov	r0,#_thread
	mov	a,@r0
	jb	acc.7,00101$
;	preemptive.c:103: EA = 0;// disable interrupts 
	clr	_EA
;	preemptive.c:104: for(index=0; index<MAXTHREADS; index++) 
	mov	r0,#_index
	mov	@r0,#0x00
00110$:
	mov	r0,#_index
	clr	c
	mov	a,@r0
	xrl	a,#0x80
	subb	a,#0x84
	jnc	00106$
;	preemptive.c:105: if( !Bitmap[index] ) 
	mov	r0,#_index
	mov	a,@r0
	add	a,#_Bitmap
	mov	r1,a
	mov	a,@r1
	jz	00106$
;	preemptive.c:104: for(index=0; index<MAXTHREADS; index++) 
	mov	r0,#_index
	inc	@r0
	sjmp	00110$
00106$:
;	preemptive.c:107: if( index==MAXTHREADS ) 
	mov	r0,#_index
	cjne	@r0,#0x04,00108$
;	preemptive.c:108: return -1;
	mov	dpl,#0xFF
	ret
00108$:
;	preemptive.c:110: Bitmap[index] = 1;
	mov	r0,#_index
	mov	a,@r0
	add	a,#_Bitmap
	mov	r0,a
	mov	@r0,#0x01
;	preemptive.c:111: SaveCurrentSP = SP;
	mov	r0,#_SaveCurrentSP
	mov	@r0,_SP
;	preemptive.c:112: SP = 0x3F + index*0x10;
	mov	r0,#_index
	mov	a,@r0
	swap	a
	anl	a,#0xF0
	mov	r7,a
	add	a,#0x3F
	mov	_SP,a
;	preemptive.c:127: __endasm;
	mov a,DPL
	mov b,DPH
	mov dptr,#_ThreadExit
	push DPL
	push DPH
	push a
	push b
	mov a,#0x00
	push a
	push a
	push a
	push a
;	preemptive.c:128: SelectThread = index<<3;
	mov	r0,#_index
	mov	r1,#_SelectThread
	mov	a,@r0
	swap	a
	rr	a
	anl	a,#0xF8
	mov	@r1,a
;	preemptive.c:131: __endasm;
	push _SelectThread
;	preemptive.c:133: ThreadSP[index] = SP;
	mov	r0,#_index
	mov	a,@r0
	add	a,#_ThreadSP
	mov	r0,a
	mov	@r0,_SP
;	preemptive.c:134: SP = SaveCurrentSP;
	mov	r0,#_SaveCurrentSP
	mov	_SP,@r0
;	preemptive.c:135: EA = 1;// reenable interrupts 
	setb	_EA
;	preemptive.c:136: return index;
	mov	r0,#_index
	mov	dpl,@r0
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'ThreadYield'
;------------------------------------------------------------
;	preemptive.c:139: void ThreadYield(void) {
;	-----------------------------------------
;	 function ThreadYield
;	-----------------------------------------
_ThreadYield:
;	preemptive.c:140: EA = 0;// disable interrupts 
	clr	_EA
;	preemptive.c:141: SAVESTATE;
	push ACC 
	push B 
	push DPL 
	push DPH 
	push PSW 
	clr RS1 
	clr RS0 
	mov	r0,#_ID
	mov	a,@r0
	add	a,#_ThreadSP
	mov	r0,a
	mov	@r0,_SP
;	preemptive.c:142: do {
00106$:
;	preemptive.c:143: if( ID==MAXTHREADS-1 )
	mov	r0,#_ID
	cjne	@r0,#0x03,00102$
;	preemptive.c:144: ID = 0;
	mov	r0,#_ID
	mov	@r0,#0x00
	sjmp	00103$
00102$:
;	preemptive.c:146: ID++;
	mov	r0,#_ID
	inc	@r0
00103$:
;	preemptive.c:147: if( Bitmap[ID]>0 ) 
	mov	r0,#_ID
	mov	a,@r0
	add	a,#_Bitmap
	mov	r1,a
	mov	ar7,@r1
	clr	c
	mov	a,#(0x00 ^ 0x80)
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	jnc	00106$
;	preemptive.c:150: RESTORESTATE;
	mov	r0,#_ID
	mov	a,@r0
	add	a,#_ThreadSP
	mov	r1,a
	mov	_SP,@r1
	pop PSW 
	pop DPH 
	pop DPL 
	pop B 
	pop ACC 
;	preemptive.c:151: EA = 1;// reenable interrupts 
	setb	_EA
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'ThreadExit'
;------------------------------------------------------------
;	preemptive.c:154: void ThreadExit(void) {
;	-----------------------------------------
;	 function ThreadExit
;	-----------------------------------------
_ThreadExit:
;	preemptive.c:155: SemaphoreSignal( thread );
	mov	r0,#_thread
	inc	@r0
;	preemptive.c:156: EA = 0;// disable interrupts 
	clr	_EA
;	preemptive.c:157: Bitmap[ID] = 0;
	mov	r0,#_ID
	mov	a,@r0
	add	a,#_Bitmap
	mov	r0,a
	mov	@r0,#0x00
;	preemptive.c:161: __endasm;
	clr RS1
	clr RS0
;	preemptive.c:162: do {
00106$:
;	preemptive.c:163: if( ID==MAXTHREADS-1 ) 
	mov	r0,#_ID
	cjne	@r0,#0x03,00102$
;	preemptive.c:164: ID = 0;
	mov	r0,#_ID
	mov	@r0,#0x00
	sjmp	00103$
00102$:
;	preemptive.c:166: ID++;
	mov	r0,#_ID
	inc	@r0
00103$:
;	preemptive.c:167: if( Bitmap[ID]>0 ) 
	mov	r0,#_ID
	mov	a,@r0
	add	a,#_Bitmap
	mov	r1,a
	mov	ar7,@r1
	clr	c
	mov	a,#(0x00 ^ 0x80)
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	jnc	00106$
;	preemptive.c:170: RESTORESTATE;
	mov	r0,#_ID
	mov	a,@r0
	add	a,#_ThreadSP
	mov	r1,a
	mov	_SP,@r1
	pop PSW 
	pop DPH 
	pop DPL 
	pop B 
	pop ACC 
;	preemptive.c:171: EA = 1;// reenable interrupts 
	setb	_EA
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
