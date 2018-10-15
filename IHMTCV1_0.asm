
_main:
	LDI        R27, 255
	OUT        SPL+0, R27
	LDI        R27, 0
	OUT        SPL+1, R27
	IN         R28, SPL+0
	IN         R29, SPL+1
	SUBI       R28, 144
	SBCI       R29, 0
	OUT        SPL+0, R28
	OUT        SPL+1, R29
	ADIW       R28, 1

;IHMTCV1_0.c,48 :: 		void main() {
;IHMTCV1_0.c,52 :: 		DDRD = DDRD & (~(0<<2)); // BOTÃO PARA CORRER O MENU
	PUSH       R2
	PUSH       R3
	PUSH       R4
	PUSH       R5
	PUSH       R6
	IN         R16, DDRD+0
	ANDI       R16, 255
	OUT        DDRD+0, R16
;IHMTCV1_0.c,53 :: 		DDRD = DDRD & (~(0<<3)); // BOTÃO PARA SELECIONAR A OPÇÃO
	ANDI       R16, 255
	OUT        DDRD+0, R16
;IHMTCV1_0.c,56 :: 		DDRD = DDRD & (~(1<<0)); // Sensor de porta
	ANDI       R16, 254
	OUT        DDRD+0, R16
;IHMTCV1_0.c,60 :: 		DDRA = DDRA | (1 <<1); //RD/RW Didplay
	IN         R16, DDRA+0
	ORI        R16, 2
	OUT        DDRA+0, R16
;IHMTCV1_0.c,61 :: 		PORTA = PORTA |(0<<1); //RW Display
;IHMTCV1_0.c,64 :: 		DDRA = DDRA | (1 <<3);  //BACK display
	ORI        R16, 8
	OUT        DDRA+0, R16
;IHMTCV1_0.c,65 :: 		PORTA = PORTA |(1<<3); //BACk inicializado acesso;
	IN         R27, PORTA+0
	SBR        R27, 8
	OUT        PORTA+0, R27
;IHMTCV1_0.c,68 :: 		DDRG = DDRG & (~(1<<0));  // leitura dos cabos
	LDS        R16, DDRG+0
	ANDI       R16, 254
	STS        DDRG+0, R16
;IHMTCV1_0.c,71 :: 		DDRE = 0xFF;  // PORT E setado como saída.
	LDI        R27, 255
	OUT        DDRE+0, R27
;IHMTCV1_0.c,72 :: 		DDRB = 0xFF;  // PORT B setado como saida
	LDI        R27, 255
	OUT        DDRB+0, R27
;IHMTCV1_0.c,75 :: 		DDRC = DDRC | (1<<0);
	IN         R16, DDRC+0
	ORI        R16, 1
	OUT        DDRC+0, R16
;IHMTCV1_0.c,76 :: 		DDRC = DDRC & (~(1<<1));
	ANDI       R16, 253
	OUT        DDRC+0, R16
;IHMTCV1_0.c,77 :: 		DDRC = DDRC & (~(1<<2));
	ANDI       R16, 251
	OUT        DDRC+0, R16
;IHMTCV1_0.c,78 :: 		DDRC = DDRC & (~(1<<3));
	ANDI       R16, 247
	OUT        DDRC+0, R16
;IHMTCV1_0.c,79 :: 		DDRC = DDRC & (~(1<<4));
	ANDI       R16, 239
	OUT        DDRC+0, R16
;IHMTCV1_0.c,80 :: 		DDRC = DDRC & (~(1<<5));
	ANDI       R16, 223
	OUT        DDRC+0, R16
;IHMTCV1_0.c,81 :: 		DDRC = DDRC & (~(1<<6));
	ANDI       R16, 191
	OUT        DDRC+0, R16
;IHMTCV1_0.c,82 :: 		DDRC = DDRC & (~(1<<7));
	ANDI       R16, 127
	OUT        DDRC+0, R16
;IHMTCV1_0.c,85 :: 		DDRF = DDRF  | (1<<0);
	LDS        R16, DDRF+0
	ORI        R16, 1
	STS        DDRF+0, R16
;IHMTCV1_0.c,86 :: 		DDRF = DDRF  & (~(1<<1));
	ANDI       R16, 253
	STS        DDRF+0, R16
;IHMTCV1_0.c,87 :: 		DDRF = DDRF  & (~(1<<2));
	ANDI       R16, 251
	STS        DDRF+0, R16
;IHMTCV1_0.c,88 :: 		DDRF = DDRF  & (~(1<<3));
	ANDI       R16, 247
	STS        DDRF+0, R16
;IHMTCV1_0.c,89 :: 		DDRF = DDRF  | (1<<4);    // SAÍDA
	ORI        R16, 16
	STS        DDRF+0, R16
;IHMTCV1_0.c,90 :: 		DDRF = DDRF  & (~(1<<5));
	ANDI       R16, 223
	STS        DDRF+0, R16
;IHMTCV1_0.c,91 :: 		DDRF = DDRF  & (~(1<<6));
	ANDI       R16, 191
	STS        DDRF+0, R16
;IHMTCV1_0.c,92 :: 		DDRF = DDRF  & (~(1<<7));
	ANDI       R16, 127
	STS        DDRF+0, R16
;IHMTCV1_0.c,95 :: 		Lcd_Init();
	CALL       _Lcd_Init+0
;IHMTCV1_0.c,96 :: 		Lcd_Cmd(_LCD_CLEAR);
	LDI        R27, 1
	MOV        R2, R27
	CALL       _Lcd_Cmd+0
;IHMTCV1_0.c,97 :: 		Lcd_Cmd(_LCD_CURSOR_OFF);
	LDI        R27, 12
	MOV        R2, R27
	CALL       _Lcd_Cmd+0
;IHMTCV1_0.c,98 :: 		Lcd_Out(1,1,"LUPA TECNOLOGIA");
	LDI        R27, #lo_addr(?lstr1_IHMTCV1_0+0)
	MOV        R4, R27
	LDI        R27, hi_addr(?lstr1_IHMTCV1_0+0)
	MOV        R5, R27
	LDI        R27, 1
	MOV        R3, R27
	LDI        R27, 1
	MOV        R2, R27
	CALL       _Lcd_Out+0
;IHMTCV1_0.c,99 :: 		lcd_Out(2,1,"Inicializando...");
	LDI        R27, #lo_addr(?lstr2_IHMTCV1_0+0)
	MOV        R4, R27
	LDI        R27, hi_addr(?lstr2_IHMTCV1_0+0)
	MOV        R5, R27
	LDI        R27, 1
	MOV        R3, R27
	LDI        R27, 2
	MOV        R2, R27
	CALL       _Lcd_Out+0
;IHMTCV1_0.c,100 :: 		Delay_ms (2200);
	LDI        R18, 157
	LDI        R17, 64
	LDI        R16, 150
L_main0:
	DEC        R16
	BRNE       L_main0
	DEC        R17
	BRNE       L_main0
	DEC        R18
	BRNE       L_main0
	NOP
	NOP
;IHMTCV1_0.c,101 :: 		lcd_Out(2, 1,"Testador V1.1.7");
	LDI        R27, #lo_addr(?lstr3_IHMTCV1_0+0)
	MOV        R4, R27
	LDI        R27, hi_addr(?lstr3_IHMTCV1_0+0)
	MOV        R5, R27
	LDI        R27, 1
	MOV        R3, R27
	LDI        R27, 2
	MOV        R2, R27
	CALL       _Lcd_Out+0
;IHMTCV1_0.c,102 :: 		Delay_ms (2500);
	LDI        R18, 178
	LDI        R17, 143
	LDI        R16, 20
L_main2:
	DEC        R16
	BRNE       L_main2
	DEC        R17
	BRNE       L_main2
	DEC        R18
	BRNE       L_main2
;IHMTCV1_0.c,103 :: 		Lcd_Cmd(_LCD_CLEAR);
	LDI        R27, 1
	MOV        R2, R27
	CALL       _Lcd_Cmd+0
;IHMTCV1_0.c,104 :: 		lcd_Out(1, 1,"Selecionar Teste");
	LDI        R27, #lo_addr(?lstr4_IHMTCV1_0+0)
	MOV        R4, R27
	LDI        R27, hi_addr(?lstr4_IHMTCV1_0+0)
	MOV        R5, R27
	LDI        R27, 1
	MOV        R3, R27
	LDI        R27, 1
	MOV        R2, R27
	CALL       _Lcd_Out+0
;IHMTCV1_0.c,105 :: 		lcd_Out(2, 1,"Pressione MOD");
	LDI        R27, #lo_addr(?lstr5_IHMTCV1_0+0)
	MOV        R4, R27
	LDI        R27, hi_addr(?lstr5_IHMTCV1_0+0)
	MOV        R5, R27
	LDI        R27, 1
	MOV        R3, R27
	LDI        R27, 2
	MOV        R2, R27
	CALL       _Lcd_Out+0
;IHMTCV1_0.c,107 :: 		do{
L_main4:
;IHMTCV1_0.c,108 :: 		sair--;
	LDS        R16, _sair+0
	LDS        R17, _sair+1
	SUBI       R16, 1
	SBCI       R17, 0
	STS        _sair+0, R16
	STS        _sair+1, R17
;IHMTCV1_0.c,110 :: 		if(Button (&PIND, 2, 0, 0)){
	CLR        R6
	CLR        R5
	LDI        R27, 2
	MOV        R4, R27
	LDI        R27, #lo_addr(PIND+0)
	MOV        R2, R27
	LDI        R27, hi_addr(PIND+0)
	MOV        R3, R27
	CALL       _Button+0
	TST        R16
	BRNE       L__main283
	JMP        L_main7
L__main283:
;IHMTCV1_0.c,111 :: 		menu++;
	LDS        R16, _menu+0
	LDS        R17, _menu+1
	SUBI       R16, 255
	SBCI       R17, 255
	STS        _menu+0, R16
	STS        _menu+1, R17
;IHMTCV1_0.c,113 :: 		switch (menu){
	JMP        L_main8
;IHMTCV1_0.c,115 :: 		case 1:
L_main10:
;IHMTCV1_0.c,116 :: 		Lcd_Cmd(_LCD_CLEAR);
	LDI        R27, 1
	MOV        R2, R27
	CALL       _Lcd_Cmd+0
;IHMTCV1_0.c,117 :: 		lcd_Out(1, 1,"Executar Teste");
	LDI        R27, #lo_addr(?lstr6_IHMTCV1_0+0)
	MOV        R4, R27
	LDI        R27, hi_addr(?lstr6_IHMTCV1_0+0)
	MOV        R5, R27
	LDI        R27, 1
	MOV        R3, R27
	LDI        R27, 1
	MOV        R2, R27
	CALL       _Lcd_Out+0
;IHMTCV1_0.c,118 :: 		lcd_Out(2, 1,"COMPLETO - COPEL");
	LDI        R27, #lo_addr(?lstr7_IHMTCV1_0+0)
	MOV        R4, R27
	LDI        R27, hi_addr(?lstr7_IHMTCV1_0+0)
	MOV        R5, R27
	LDI        R27, 1
	MOV        R3, R27
	LDI        R27, 2
	MOV        R2, R27
	CALL       _Lcd_Out+0
;IHMTCV1_0.c,119 :: 		Delay_ms(200);
	LDI        R18, 15
	LDI        R17, 53
	LDI        R16, 82
L_main11:
	DEC        R16
	BRNE       L_main11
	DEC        R17
	BRNE       L_main11
	DEC        R18
	BRNE       L_main11
;IHMTCV1_0.c,120 :: 		break;
	JMP        L_main9
;IHMTCV1_0.c,121 :: 		case 2:
L_main13:
;IHMTCV1_0.c,123 :: 		Lcd_Cmd(_LCD_CLEAR);
	LDI        R27, 1
	MOV        R2, R27
	CALL       _Lcd_Cmd+0
;IHMTCV1_0.c,124 :: 		lcd_Out(1, 1,"Executar Teste");
	LDI        R27, #lo_addr(?lstr8_IHMTCV1_0+0)
	MOV        R4, R27
	LDI        R27, hi_addr(?lstr8_IHMTCV1_0+0)
	MOV        R5, R27
	LDI        R27, 1
	MOV        R3, R27
	LDI        R27, 1
	MOV        R2, R27
	CALL       _Lcd_Out+0
;IHMTCV1_0.c,125 :: 		lcd_Out(2, 1,"IHM - DFIPM");
	LDI        R27, #lo_addr(?lstr9_IHMTCV1_0+0)
	MOV        R4, R27
	LDI        R27, hi_addr(?lstr9_IHMTCV1_0+0)
	MOV        R5, R27
	LDI        R27, 1
	MOV        R3, R27
	LDI        R27, 2
	MOV        R2, R27
	CALL       _Lcd_Out+0
;IHMTCV1_0.c,126 :: 		Delay_ms(200);
	LDI        R18, 15
	LDI        R17, 53
	LDI        R16, 82
L_main14:
	DEC        R16
	BRNE       L_main14
	DEC        R17
	BRNE       L_main14
	DEC        R18
	BRNE       L_main14
;IHMTCV1_0.c,127 :: 		break;
	JMP        L_main9
;IHMTCV1_0.c,128 :: 		case 3:
L_main16:
;IHMTCV1_0.c,129 :: 		Lcd_Cmd(_LCD_CLEAR);
	LDI        R27, 1
	MOV        R2, R27
	CALL       _Lcd_Cmd+0
;IHMTCV1_0.c,130 :: 		lcd_Out(1, 1,"Executar Teste");
	LDI        R27, #lo_addr(?lstr10_IHMTCV1_0+0)
	MOV        R4, R27
	LDI        R27, hi_addr(?lstr10_IHMTCV1_0+0)
	MOV        R5, R27
	LDI        R27, 1
	MOV        R3, R27
	LDI        R27, 1
	MOV        R2, R27
	CALL       _Lcd_Out+0
;IHMTCV1_0.c,131 :: 		lcd_Out(2, 1,"MODULO I/0");
	LDI        R27, #lo_addr(?lstr11_IHMTCV1_0+0)
	MOV        R4, R27
	LDI        R27, hi_addr(?lstr11_IHMTCV1_0+0)
	MOV        R5, R27
	LDI        R27, 1
	MOV        R3, R27
	LDI        R27, 2
	MOV        R2, R27
	CALL       _Lcd_Out+0
;IHMTCV1_0.c,132 :: 		Delay_ms(200);
	LDI        R18, 15
	LDI        R17, 53
	LDI        R16, 82
L_main17:
	DEC        R16
	BRNE       L_main17
	DEC        R17
	BRNE       L_main17
	DEC        R18
	BRNE       L_main17
;IHMTCV1_0.c,133 :: 		break;
	JMP        L_main9
;IHMTCV1_0.c,134 :: 		default:
L_main19:
;IHMTCV1_0.c,135 :: 		if(menu  == 4 ){
	LDS        R16, _menu+0
	LDS        R17, _menu+1
	CPI        R17, 0
	BRNE       L__main284
	CPI        R16, 4
L__main284:
	BREQ       L__main285
	JMP        L_main20
L__main285:
;IHMTCV1_0.c,136 :: 		menu = 0;
	LDI        R27, 0
	STS        _menu+0, R27
	STS        _menu+1, R27
;IHMTCV1_0.c,137 :: 		}
L_main20:
;IHMTCV1_0.c,138 :: 		}
	JMP        L_main9
L_main8:
	LDS        R16, _menu+0
	LDS        R17, _menu+1
	CPI        R17, 0
	BRNE       L__main286
	CPI        R16, 1
L__main286:
	BRNE       L__main287
	JMP        L_main10
L__main287:
	LDS        R16, _menu+0
	LDS        R17, _menu+1
	CPI        R17, 0
	BRNE       L__main288
	CPI        R16, 2
L__main288:
	BRNE       L__main289
	JMP        L_main13
L__main289:
	LDS        R16, _menu+0
	LDS        R17, _menu+1
	CPI        R17, 0
	BRNE       L__main290
	CPI        R16, 3
L__main290:
	BRNE       L__main291
	JMP        L_main16
L__main291:
	JMP        L_main19
L_main9:
;IHMTCV1_0.c,139 :: 		}
L_main7:
;IHMTCV1_0.c,141 :: 		if(Button (&PIND, 3, 0, 0) && menu == 1){
	CLR        R6
	CLR        R5
	LDI        R27, 3
	MOV        R4, R27
	LDI        R27, #lo_addr(PIND+0)
	MOV        R2, R27
	LDI        R27, hi_addr(PIND+0)
	MOV        R3, R27
	CALL       _Button+0
	TST        R16
	BRNE       L__main292
	JMP        L__main277
L__main292:
	LDS        R16, _menu+0
	LDS        R17, _menu+1
	CPI        R17, 0
	BRNE       L__main293
	CPI        R16, 1
L__main293:
	BREQ       L__main294
	JMP        L__main276
L__main294:
L__main275:
;IHMTCV1_0.c,142 :: 		Lcd_Cmd(_LCD_CLEAR);
	LDI        R27, 1
	MOV        R2, R27
	CALL       _Lcd_Cmd+0
;IHMTCV1_0.c,143 :: 		lcd_Out(1, 5,"Pressione");
	LDI        R27, #lo_addr(?lstr12_IHMTCV1_0+0)
	MOV        R4, R27
	LDI        R27, hi_addr(?lstr12_IHMTCV1_0+0)
	MOV        R5, R27
	LDI        R27, 5
	MOV        R3, R27
	LDI        R27, 1
	MOV        R2, R27
	CALL       _Lcd_Out+0
;IHMTCV1_0.c,144 :: 		lcd_Out(2, 5,"Executar!");
	LDI        R27, #lo_addr(?lstr13_IHMTCV1_0+0)
	MOV        R4, R27
	LDI        R27, hi_addr(?lstr13_IHMTCV1_0+0)
	MOV        R5, R27
	LDI        R27, 5
	MOV        R3, R27
	LDI        R27, 2
	MOV        R2, R27
	CALL       _Lcd_Out+0
;IHMTCV1_0.c,146 :: 		while (sair){
L_main24:
	LDS        R16, _sair+0
	LDS        R17, _sair+1
	MOV        R27, R16
	OR         R27, R17
	BRNE       L__main295
	JMP        L_main25
L__main295:
;IHMTCV1_0.c,147 :: 		int count = 1;
; count start address is: 17 (R17)
	LDI        R17, 1
	LDI        R18, 0
;IHMTCV1_0.c,150 :: 		int contador = 0;
;IHMTCV1_0.c,151 :: 		int teste = 0;
; teste start address is: 20 (R20)
	LDI        R20, 0
	LDI        R21, 0
;IHMTCV1_0.c,153 :: 		buttonEstate = PIND & (1<<0);
	IN         R16, PIND+0
	ANDI       R16, 1
; buttonEstate start address is: 22 (R22)
	MOV        R22, R16
	LDI        R23, 0
;IHMTCV1_0.c,155 :: 		if(buttonEstate == 0){
	CPI        R23, 0
	BRNE       L__main296
	CPI        R22, 0
L__main296:
	BREQ       L__main297
	JMP        L_main26
L__main297:
; buttonEstate end address is: 22 (R22)
;IHMTCV1_0.c,157 :: 		Lcd_Cmd(_LCD_CLEAR);
	PUSH       R18
	PUSH       R17
	LDI        R27, 1
	MOV        R2, R27
	CALL       _Lcd_Cmd+0
;IHMTCV1_0.c,158 :: 		Lcd_Out(1,1,"Executando Teste");
	LDI        R27, #lo_addr(?lstr14_IHMTCV1_0+0)
	MOV        R4, R27
	LDI        R27, hi_addr(?lstr14_IHMTCV1_0+0)
	MOV        R5, R27
	LDI        R27, 1
	MOV        R3, R27
	LDI        R27, 1
	MOV        R2, R27
	CALL       _Lcd_Out+0
;IHMTCV1_0.c,159 :: 		Lcd_Out(2,1,"Aguarde...");
	LDI        R27, #lo_addr(?lstr15_IHMTCV1_0+0)
	MOV        R4, R27
	LDI        R27, hi_addr(?lstr15_IHMTCV1_0+0)
	MOV        R5, R27
	LDI        R27, 1
	MOV        R3, R27
	LDI        R27, 2
	MOV        R2, R27
	CALL       _Lcd_Out+0
	POP        R17
	POP        R18
;IHMTCV1_0.c,161 :: 		switch (count){
	JMP        L_main27
; count end address is: 17 (R17)
;IHMTCV1_0.c,163 :: 		case 1:
L_main29:
;IHMTCV1_0.c,164 :: 		PORTB = 0b00010101;
	LDI        R27, 21
	OUT        PORTB+0, R27
;IHMTCV1_0.c,165 :: 		PORTE = 0b01001000;
	LDI        R27, 72
	OUT        PORTE+0, R27
;IHMTCV1_0.c,166 :: 		Delay_ms(tempo);
	LDI        R18, 8
	LDI        R17, 27
	LDI        R16, 40
L_main30:
	DEC        R16
	BRNE       L_main30
	DEC        R17
	BRNE       L_main30
	DEC        R18
	BRNE       L_main30
;IHMTCV1_0.c,167 :: 		PINO[1] = PING & (1<<0);
	MOVW       R16, R28
	MOVW       R18, R16
	SUBI       R18, 254
	SBCI       R19, 255
	LDS        R16, PING+0
	ANDI       R16, 1
	MOVW       R30, R18
	ST         Z+, R16
	LDI        R27, 0
	ST         Z+, R27
;IHMTCV1_0.c,170 :: 		case 2:
L_main32:
;IHMTCV1_0.c,171 :: 		PORTE = 0b01001001;
	LDI        R27, 73
	OUT        PORTE+0, R27
;IHMTCV1_0.c,172 :: 		Delay_ms(tempo);
	LDI        R18, 8
	LDI        R17, 27
	LDI        R16, 40
L_main33:
	DEC        R16
	BRNE       L_main33
	DEC        R17
	BRNE       L_main33
	DEC        R18
	BRNE       L_main33
;IHMTCV1_0.c,173 :: 		PINO[2] = PING & (1<<0);
	MOVW       R16, R28
	MOVW       R18, R16
	SUBI       R18, 252
	SBCI       R19, 255
	LDS        R16, PING+0
	ANDI       R16, 1
	MOVW       R30, R18
	ST         Z+, R16
	LDI        R27, 0
	ST         Z+, R27
;IHMTCV1_0.c,177 :: 		case 3:
L_main35:
;IHMTCV1_0.c,178 :: 		PORTE = 0b01001010;
	LDI        R27, 74
	OUT        PORTE+0, R27
;IHMTCV1_0.c,179 :: 		Delay_ms(tempo);
	LDI        R18, 8
	LDI        R17, 27
	LDI        R16, 40
L_main36:
	DEC        R16
	BRNE       L_main36
	DEC        R17
	BRNE       L_main36
	DEC        R18
	BRNE       L_main36
;IHMTCV1_0.c,180 :: 		PINO[3] = PING & (1<<0);
	MOVW       R16, R28
	MOVW       R18, R16
	SUBI       R18, 250
	SBCI       R19, 255
	LDS        R16, PING+0
	ANDI       R16, 1
	MOVW       R30, R18
	ST         Z+, R16
	LDI        R27, 0
	ST         Z+, R27
;IHMTCV1_0.c,184 :: 		case 4:
L_main38:
;IHMTCV1_0.c,185 :: 		PORTE = 0b01001011;
	LDI        R27, 75
	OUT        PORTE+0, R27
;IHMTCV1_0.c,186 :: 		Delay_ms(tempo);
	LDI        R18, 8
	LDI        R17, 27
	LDI        R16, 40
L_main39:
	DEC        R16
	BRNE       L_main39
	DEC        R17
	BRNE       L_main39
	DEC        R18
	BRNE       L_main39
;IHMTCV1_0.c,187 :: 		PINO[4] = PING & (1<<0);
	MOVW       R16, R28
	MOVW       R18, R16
	SUBI       R18, 248
	SBCI       R19, 255
	LDS        R16, PING+0
	ANDI       R16, 1
	MOVW       R30, R18
	ST         Z+, R16
	LDI        R27, 0
	ST         Z+, R27
;IHMTCV1_0.c,190 :: 		case 5:
L_main41:
;IHMTCV1_0.c,191 :: 		PORTE = 0b01001100;
	LDI        R27, 76
	OUT        PORTE+0, R27
;IHMTCV1_0.c,192 :: 		Delay_ms(tempo);
	LDI        R18, 8
	LDI        R17, 27
	LDI        R16, 40
L_main42:
	DEC        R16
	BRNE       L_main42
	DEC        R17
	BRNE       L_main42
	DEC        R18
	BRNE       L_main42
;IHMTCV1_0.c,193 :: 		PINO[5] = PING & (1<<0);
	MOVW       R16, R28
	MOVW       R18, R16
	SUBI       R18, 246
	SBCI       R19, 255
	LDS        R16, PING+0
	ANDI       R16, 1
	MOVW       R30, R18
	ST         Z+, R16
	LDI        R27, 0
	ST         Z+, R27
;IHMTCV1_0.c,196 :: 		case 6:
L_main44:
;IHMTCV1_0.c,197 :: 		PORTE = 0b01001101;
	LDI        R27, 77
	OUT        PORTE+0, R27
;IHMTCV1_0.c,198 :: 		Delay_ms(tempo);
	LDI        R18, 8
	LDI        R17, 27
	LDI        R16, 40
L_main45:
	DEC        R16
	BRNE       L_main45
	DEC        R17
	BRNE       L_main45
	DEC        R18
	BRNE       L_main45
;IHMTCV1_0.c,199 :: 		PINO[6] = PING & (1<<0);
	MOVW       R16, R28
	MOVW       R18, R16
	SUBI       R18, 244
	SBCI       R19, 255
	LDS        R16, PING+0
	ANDI       R16, 1
	MOVW       R30, R18
	ST         Z+, R16
	LDI        R27, 0
	ST         Z+, R27
;IHMTCV1_0.c,202 :: 		case 7:
L_main47:
;IHMTCV1_0.c,203 :: 		PORTE = 0b01001110;
	LDI        R27, 78
	OUT        PORTE+0, R27
;IHMTCV1_0.c,204 :: 		Delay_ms(tempo);
	LDI        R18, 8
	LDI        R17, 27
	LDI        R16, 40
L_main48:
	DEC        R16
	BRNE       L_main48
	DEC        R17
	BRNE       L_main48
	DEC        R18
	BRNE       L_main48
;IHMTCV1_0.c,205 :: 		PINO[7] = PING & (1<<0);
	MOVW       R16, R28
	MOVW       R18, R16
	SUBI       R18, 242
	SBCI       R19, 255
	LDS        R16, PING+0
	ANDI       R16, 1
	MOVW       R30, R18
	ST         Z+, R16
	LDI        R27, 0
	ST         Z+, R27
;IHMTCV1_0.c,209 :: 		case 8:
L_main50:
;IHMTCV1_0.c,210 :: 		PORTE = 0b01001111;
	LDI        R27, 79
	OUT        PORTE+0, R27
;IHMTCV1_0.c,211 :: 		Delay_ms(tempo);
	LDI        R18, 8
	LDI        R17, 27
	LDI        R16, 40
L_main51:
	DEC        R16
	BRNE       L_main51
	DEC        R17
	BRNE       L_main51
	DEC        R18
	BRNE       L_main51
;IHMTCV1_0.c,212 :: 		PINO[8] = PING & (1<<0);
	MOVW       R16, R28
	MOVW       R18, R16
	SUBI       R18, 240
	SBCI       R19, 255
	LDS        R16, PING+0
	ANDI       R16, 1
	MOVW       R30, R18
	ST         Z+, R16
	LDI        R27, 0
	ST         Z+, R27
;IHMTCV1_0.c,216 :: 		case 9:
L_main53:
;IHMTCV1_0.c,217 :: 		PORTE = 0b00110000;
	LDI        R27, 48
	OUT        PORTE+0, R27
;IHMTCV1_0.c,218 :: 		Delay_ms(tempo);
	LDI        R18, 8
	LDI        R17, 27
	LDI        R16, 40
L_main54:
	DEC        R16
	BRNE       L_main54
	DEC        R17
	BRNE       L_main54
	DEC        R18
	BRNE       L_main54
;IHMTCV1_0.c,219 :: 		PINO[9] = PING & (1<<0);
	MOVW       R16, R28
	MOVW       R18, R16
	SUBI       R18, 238
	SBCI       R19, 255
	LDS        R16, PING+0
	ANDI       R16, 1
	MOVW       R30, R18
	ST         Z+, R16
	LDI        R27, 0
	ST         Z+, R27
;IHMTCV1_0.c,222 :: 		case 10:
L_main56:
;IHMTCV1_0.c,223 :: 		PORTE = 0b00110001;
	LDI        R27, 49
	OUT        PORTE+0, R27
;IHMTCV1_0.c,224 :: 		Delay_ms(tempo);
	LDI        R18, 8
	LDI        R17, 27
	LDI        R16, 40
L_main57:
	DEC        R16
	BRNE       L_main57
	DEC        R17
	BRNE       L_main57
	DEC        R18
	BRNE       L_main57
;IHMTCV1_0.c,225 :: 		PINO[10] = PING & (1<<0);
	MOVW       R16, R28
	MOVW       R18, R16
	SUBI       R18, 236
	SBCI       R19, 255
	LDS        R16, PING+0
	ANDI       R16, 1
	MOVW       R30, R18
	ST         Z+, R16
	LDI        R27, 0
	ST         Z+, R27
;IHMTCV1_0.c,228 :: 		case 11:
L_main59:
;IHMTCV1_0.c,229 :: 		PORTE = 0b00110010;
	LDI        R27, 50
	OUT        PORTE+0, R27
;IHMTCV1_0.c,230 :: 		Delay_ms(tempo);
	LDI        R18, 8
	LDI        R17, 27
	LDI        R16, 40
L_main60:
	DEC        R16
	BRNE       L_main60
	DEC        R17
	BRNE       L_main60
	DEC        R18
	BRNE       L_main60
;IHMTCV1_0.c,231 :: 		PINO[11] = PING & (1<<0);
	MOVW       R16, R28
	MOVW       R18, R16
	SUBI       R18, 234
	SBCI       R19, 255
	LDS        R16, PING+0
	ANDI       R16, 1
	MOVW       R30, R18
	ST         Z+, R16
	LDI        R27, 0
	ST         Z+, R27
;IHMTCV1_0.c,234 :: 		case 12:
L_main62:
;IHMTCV1_0.c,235 :: 		PORTE = 0b00110011;
	LDI        R27, 51
	OUT        PORTE+0, R27
;IHMTCV1_0.c,236 :: 		Delay_ms(tempo);
	LDI        R18, 8
	LDI        R17, 27
	LDI        R16, 40
L_main63:
	DEC        R16
	BRNE       L_main63
	DEC        R17
	BRNE       L_main63
	DEC        R18
	BRNE       L_main63
;IHMTCV1_0.c,237 :: 		PINO[12] = PING & (1<<0);
	MOVW       R16, R28
	MOVW       R18, R16
	SUBI       R18, 232
	SBCI       R19, 255
	LDS        R16, PING+0
	ANDI       R16, 1
	MOVW       R30, R18
	ST         Z+, R16
	LDI        R27, 0
	ST         Z+, R27
;IHMTCV1_0.c,240 :: 		case 13:
L_main65:
;IHMTCV1_0.c,241 :: 		PORTE = 0b00110100;
	LDI        R27, 52
	OUT        PORTE+0, R27
;IHMTCV1_0.c,242 :: 		Delay_ms(tempo);
	LDI        R18, 8
	LDI        R17, 27
	LDI        R16, 40
L_main66:
	DEC        R16
	BRNE       L_main66
	DEC        R17
	BRNE       L_main66
	DEC        R18
	BRNE       L_main66
;IHMTCV1_0.c,243 :: 		PINO[13] = PING & (1<<0);
	MOVW       R16, R28
	MOVW       R18, R16
	SUBI       R18, 230
	SBCI       R19, 255
	LDS        R16, PING+0
	ANDI       R16, 1
	MOVW       R30, R18
	ST         Z+, R16
	LDI        R27, 0
	ST         Z+, R27
;IHMTCV1_0.c,246 :: 		case 14:
L_main68:
;IHMTCV1_0.c,247 :: 		PORTE = 0b00110101;
	LDI        R27, 53
	OUT        PORTE+0, R27
;IHMTCV1_0.c,248 :: 		Delay_ms(tempo);
	LDI        R18, 8
	LDI        R17, 27
	LDI        R16, 40
L_main69:
	DEC        R16
	BRNE       L_main69
	DEC        R17
	BRNE       L_main69
	DEC        R18
	BRNE       L_main69
;IHMTCV1_0.c,249 :: 		PINO[14] = PING & (1<<0);
	MOVW       R16, R28
	MOVW       R18, R16
	SUBI       R18, 228
	SBCI       R19, 255
	LDS        R16, PING+0
	ANDI       R16, 1
	MOVW       R30, R18
	ST         Z+, R16
	LDI        R27, 0
	ST         Z+, R27
;IHMTCV1_0.c,252 :: 		case 15:
L_main71:
;IHMTCV1_0.c,253 :: 		PORTE = 0b00110110;
	LDI        R27, 54
	OUT        PORTE+0, R27
;IHMTCV1_0.c,254 :: 		Delay_ms(tempo);
	LDI        R18, 8
	LDI        R17, 27
	LDI        R16, 40
L_main72:
	DEC        R16
	BRNE       L_main72
	DEC        R17
	BRNE       L_main72
	DEC        R18
	BRNE       L_main72
;IHMTCV1_0.c,255 :: 		PINO[15] = PING & (1<<0);
	MOVW       R16, R28
	MOVW       R18, R16
	SUBI       R18, 226
	SBCI       R19, 255
	LDS        R16, PING+0
	ANDI       R16, 1
	MOVW       R30, R18
	ST         Z+, R16
	LDI        R27, 0
	ST         Z+, R27
;IHMTCV1_0.c,258 :: 		case 16:
L_main74:
;IHMTCV1_0.c,259 :: 		PORTE = 0b00110111;
	LDI        R27, 55
	OUT        PORTE+0, R27
;IHMTCV1_0.c,260 :: 		Delay_ms(tempo);
	LDI        R18, 8
	LDI        R17, 27
	LDI        R16, 40
L_main75:
	DEC        R16
	BRNE       L_main75
	DEC        R17
	BRNE       L_main75
	DEC        R18
	BRNE       L_main75
;IHMTCV1_0.c,261 :: 		PINO[16] = PING & (1<<0);
	MOVW       R16, R28
	MOVW       R18, R16
	SUBI       R18, 224
	SBCI       R19, 255
	LDS        R16, PING+0
	ANDI       R16, 1
	MOVW       R30, R18
	ST         Z+, R16
	LDI        R27, 0
	ST         Z+, R27
;IHMTCV1_0.c,264 :: 		case 17:
L_main77:
;IHMTCV1_0.c,265 :: 		PORTE = 0b11010000;
	LDI        R27, 208
	OUT        PORTE+0, R27
;IHMTCV1_0.c,266 :: 		PORTB = 0b00010100;
	LDI        R27, 20
	OUT        PORTB+0, R27
;IHMTCV1_0.c,267 :: 		Delay_ms(tempo);
	LDI        R18, 8
	LDI        R17, 27
	LDI        R16, 40
L_main78:
	DEC        R16
	BRNE       L_main78
	DEC        R17
	BRNE       L_main78
	DEC        R18
	BRNE       L_main78
;IHMTCV1_0.c,268 :: 		PINO[17] = PING & (1<<0);
	MOVW       R16, R28
	MOVW       R18, R16
	SUBI       R18, 222
	SBCI       R19, 255
	LDS        R16, PING+0
	ANDI       R16, 1
	MOVW       R30, R18
	ST         Z+, R16
	LDI        R27, 0
	ST         Z+, R27
;IHMTCV1_0.c,272 :: 		case 18:
L_main80:
;IHMTCV1_0.c,273 :: 		PORTE = 0b11010001;
	LDI        R27, 209
	OUT        PORTE+0, R27
;IHMTCV1_0.c,274 :: 		PORTB = 0b00010100;
	LDI        R27, 20
	OUT        PORTB+0, R27
;IHMTCV1_0.c,275 :: 		Delay_ms(tempo);
	LDI        R18, 8
	LDI        R17, 27
	LDI        R16, 40
L_main81:
	DEC        R16
	BRNE       L_main81
	DEC        R17
	BRNE       L_main81
	DEC        R18
	BRNE       L_main81
;IHMTCV1_0.c,276 :: 		PINO[18] = PING & (1<<0);
	MOVW       R16, R28
	MOVW       R18, R16
	SUBI       R18, 220
	SBCI       R19, 255
	LDS        R16, PING+0
	ANDI       R16, 1
	MOVW       R30, R18
	ST         Z+, R16
	LDI        R27, 0
	ST         Z+, R27
;IHMTCV1_0.c,279 :: 		case 19:
L_main83:
;IHMTCV1_0.c,280 :: 		PORTE = 0b11010010;
	LDI        R27, 210
	OUT        PORTE+0, R27
;IHMTCV1_0.c,281 :: 		PORTB = 0b00010100;
	LDI        R27, 20
	OUT        PORTB+0, R27
;IHMTCV1_0.c,282 :: 		Delay_ms(tempo);
	LDI        R18, 8
	LDI        R17, 27
	LDI        R16, 40
L_main84:
	DEC        R16
	BRNE       L_main84
	DEC        R17
	BRNE       L_main84
	DEC        R18
	BRNE       L_main84
;IHMTCV1_0.c,283 :: 		PINO[19] = PING & (1<<0);
	MOVW       R16, R28
	MOVW       R18, R16
	SUBI       R18, 218
	SBCI       R19, 255
	LDS        R16, PING+0
	ANDI       R16, 1
	MOVW       R30, R18
	ST         Z+, R16
	LDI        R27, 0
	ST         Z+, R27
;IHMTCV1_0.c,286 :: 		case 20:
L_main86:
;IHMTCV1_0.c,287 :: 		PORTE = 0b11010011;
	LDI        R27, 211
	OUT        PORTE+0, R27
;IHMTCV1_0.c,288 :: 		PORTB = 0b00010100;
	LDI        R27, 20
	OUT        PORTB+0, R27
;IHMTCV1_0.c,289 :: 		Delay_ms(tempo);
	LDI        R18, 8
	LDI        R17, 27
	LDI        R16, 40
L_main87:
	DEC        R16
	BRNE       L_main87
	DEC        R17
	BRNE       L_main87
	DEC        R18
	BRNE       L_main87
;IHMTCV1_0.c,290 :: 		PINO[20] = PING & (1<<0);
	MOVW       R16, R28
	MOVW       R18, R16
	SUBI       R18, 216
	SBCI       R19, 255
	LDS        R16, PING+0
	ANDI       R16, 1
	MOVW       R30, R18
	ST         Z+, R16
	LDI        R27, 0
	ST         Z+, R27
;IHMTCV1_0.c,293 :: 		case 21:
L_main89:
;IHMTCV1_0.c,294 :: 		PORTE = 0b11010100;
	LDI        R27, 212
	OUT        PORTE+0, R27
;IHMTCV1_0.c,295 :: 		PORTB = 0b00010100;
	LDI        R27, 20
	OUT        PORTB+0, R27
;IHMTCV1_0.c,296 :: 		Delay_ms(tempo);
	LDI        R18, 8
	LDI        R17, 27
	LDI        R16, 40
L_main90:
	DEC        R16
	BRNE       L_main90
	DEC        R17
	BRNE       L_main90
	DEC        R18
	BRNE       L_main90
;IHMTCV1_0.c,297 :: 		PINO[21] = PING & (1<<0);
	MOVW       R16, R28
	MOVW       R18, R16
	SUBI       R18, 214
	SBCI       R19, 255
	LDS        R16, PING+0
	ANDI       R16, 1
	MOVW       R30, R18
	ST         Z+, R16
	LDI        R27, 0
	ST         Z+, R27
;IHMTCV1_0.c,300 :: 		case 22:
L_main92:
;IHMTCV1_0.c,301 :: 		PORTE = 0b11010101;
	LDI        R27, 213
	OUT        PORTE+0, R27
;IHMTCV1_0.c,302 :: 		PORTB = 0b00010100;
	LDI        R27, 20
	OUT        PORTB+0, R27
;IHMTCV1_0.c,303 :: 		Delay_ms(tempo);
	LDI        R18, 8
	LDI        R17, 27
	LDI        R16, 40
L_main93:
	DEC        R16
	BRNE       L_main93
	DEC        R17
	BRNE       L_main93
	DEC        R18
	BRNE       L_main93
;IHMTCV1_0.c,304 :: 		PINO[22] = PING & (1<<0);
	MOVW       R16, R28
	MOVW       R18, R16
	SUBI       R18, 212
	SBCI       R19, 255
	LDS        R16, PING+0
	ANDI       R16, 1
	MOVW       R30, R18
	ST         Z+, R16
	LDI        R27, 0
	ST         Z+, R27
;IHMTCV1_0.c,307 :: 		case 23:
L_main95:
;IHMTCV1_0.c,308 :: 		PORTE = 0b11010110;
	LDI        R27, 214
	OUT        PORTE+0, R27
;IHMTCV1_0.c,309 :: 		PORTB = 0b00010100;
	LDI        R27, 20
	OUT        PORTB+0, R27
;IHMTCV1_0.c,310 :: 		Delay_ms(tempo);
	LDI        R18, 8
	LDI        R17, 27
	LDI        R16, 40
L_main96:
	DEC        R16
	BRNE       L_main96
	DEC        R17
	BRNE       L_main96
	DEC        R18
	BRNE       L_main96
;IHMTCV1_0.c,311 :: 		PINO[23] = PING & (1<<0);
	MOVW       R16, R28
	MOVW       R18, R16
	SUBI       R18, 210
	SBCI       R19, 255
	LDS        R16, PING+0
	ANDI       R16, 1
	MOVW       R30, R18
	ST         Z+, R16
	LDI        R27, 0
	ST         Z+, R27
;IHMTCV1_0.c,314 :: 		case 24:
L_main98:
;IHMTCV1_0.c,315 :: 		PORTE = 0b11010111;
	LDI        R27, 215
	OUT        PORTE+0, R27
;IHMTCV1_0.c,316 :: 		PORTB = 0b00010100;
	LDI        R27, 20
	OUT        PORTB+0, R27
;IHMTCV1_0.c,317 :: 		Delay_ms(tempo);
	LDI        R18, 8
	LDI        R17, 27
	LDI        R16, 40
L_main99:
	DEC        R16
	BRNE       L_main99
	DEC        R17
	BRNE       L_main99
	DEC        R18
	BRNE       L_main99
;IHMTCV1_0.c,318 :: 		PINO[24] = PING & (1<<0);
	MOVW       R16, R28
	MOVW       R18, R16
	SUBI       R18, 208
	SBCI       R19, 255
	LDS        R16, PING+0
	ANDI       R16, 1
	MOVW       R30, R18
	ST         Z+, R16
	LDI        R27, 0
	ST         Z+, R27
;IHMTCV1_0.c,321 :: 		case 25:
L_main101:
;IHMTCV1_0.c,322 :: 		PORTE = 0b01010000;
	LDI        R27, 80
	OUT        PORTE+0, R27
;IHMTCV1_0.c,323 :: 		PORTB = 0b00010011;
	LDI        R27, 19
	OUT        PORTB+0, R27
;IHMTCV1_0.c,324 :: 		Delay_ms(tempo);
	LDI        R18, 8
	LDI        R17, 27
	LDI        R16, 40
L_main102:
	DEC        R16
	BRNE       L_main102
	DEC        R17
	BRNE       L_main102
	DEC        R18
	BRNE       L_main102
;IHMTCV1_0.c,325 :: 		PINO[25] = PING & (1<<0);
	MOVW       R16, R28
	MOVW       R18, R16
	SUBI       R18, 206
	SBCI       R19, 255
	LDS        R16, PING+0
	ANDI       R16, 1
	MOVW       R30, R18
	ST         Z+, R16
	LDI        R27, 0
	ST         Z+, R27
;IHMTCV1_0.c,328 :: 		case 26:
L_main104:
;IHMTCV1_0.c,329 :: 		PORTE = 0b01010001;
	LDI        R27, 81
	OUT        PORTE+0, R27
;IHMTCV1_0.c,330 :: 		PORTB = 0b00010011;
	LDI        R27, 19
	OUT        PORTB+0, R27
;IHMTCV1_0.c,331 :: 		Delay_ms(tempo);
	LDI        R18, 8
	LDI        R17, 27
	LDI        R16, 40
L_main105:
	DEC        R16
	BRNE       L_main105
	DEC        R17
	BRNE       L_main105
	DEC        R18
	BRNE       L_main105
;IHMTCV1_0.c,332 :: 		PINO[26] = PING & (1<<0);
	MOVW       R16, R28
	MOVW       R18, R16
	SUBI       R18, 204
	SBCI       R19, 255
	LDS        R16, PING+0
	ANDI       R16, 1
	MOVW       R30, R18
	ST         Z+, R16
	LDI        R27, 0
	ST         Z+, R27
;IHMTCV1_0.c,335 :: 		case 27:
L_main107:
;IHMTCV1_0.c,336 :: 		PORTE = 0b01010010;
	LDI        R27, 82
	OUT        PORTE+0, R27
;IHMTCV1_0.c,337 :: 		PORTB = 0b00010011;
	LDI        R27, 19
	OUT        PORTB+0, R27
;IHMTCV1_0.c,338 :: 		Delay_ms(tempo);
	LDI        R18, 8
	LDI        R17, 27
	LDI        R16, 40
L_main108:
	DEC        R16
	BRNE       L_main108
	DEC        R17
	BRNE       L_main108
	DEC        R18
	BRNE       L_main108
;IHMTCV1_0.c,339 :: 		PINO[27] = PING & (1<<0);
	MOVW       R16, R28
	MOVW       R18, R16
	SUBI       R18, 202
	SBCI       R19, 255
	LDS        R16, PING+0
	ANDI       R16, 1
	MOVW       R30, R18
	ST         Z+, R16
	LDI        R27, 0
	ST         Z+, R27
;IHMTCV1_0.c,342 :: 		case 28:
L_main110:
;IHMTCV1_0.c,343 :: 		PORTE = 0b01010011;
	LDI        R27, 83
	OUT        PORTE+0, R27
;IHMTCV1_0.c,344 :: 		PORTB = 0b00010011;
	LDI        R27, 19
	OUT        PORTB+0, R27
;IHMTCV1_0.c,345 :: 		Delay_ms(tempo);
	LDI        R18, 8
	LDI        R17, 27
	LDI        R16, 40
L_main111:
	DEC        R16
	BRNE       L_main111
	DEC        R17
	BRNE       L_main111
	DEC        R18
	BRNE       L_main111
;IHMTCV1_0.c,346 :: 		PINO[28] = PING & (1<<0);
	MOVW       R16, R28
	MOVW       R18, R16
	SUBI       R18, 200
	SBCI       R19, 255
	LDS        R16, PING+0
	ANDI       R16, 1
	MOVW       R30, R18
	ST         Z+, R16
	LDI        R27, 0
	ST         Z+, R27
;IHMTCV1_0.c,349 :: 		case 29:
L_main113:
;IHMTCV1_0.c,350 :: 		PORTE = 0b01010100;
	LDI        R27, 84
	OUT        PORTE+0, R27
;IHMTCV1_0.c,351 :: 		PORTB = 0b00010011;
	LDI        R27, 19
	OUT        PORTB+0, R27
;IHMTCV1_0.c,352 :: 		Delay_ms(tempo);
	LDI        R18, 8
	LDI        R17, 27
	LDI        R16, 40
L_main114:
	DEC        R16
	BRNE       L_main114
	DEC        R17
	BRNE       L_main114
	DEC        R18
	BRNE       L_main114
;IHMTCV1_0.c,353 :: 		PINO[29] = PING & (1<<0);
	MOVW       R16, R28
	MOVW       R18, R16
	SUBI       R18, 198
	SBCI       R19, 255
	LDS        R16, PING+0
	ANDI       R16, 1
	MOVW       R30, R18
	ST         Z+, R16
	LDI        R27, 0
	ST         Z+, R27
;IHMTCV1_0.c,356 :: 		case 30:
L_main116:
;IHMTCV1_0.c,357 :: 		PORTE = 0b01010101;
	LDI        R27, 85
	OUT        PORTE+0, R27
;IHMTCV1_0.c,358 :: 		PORTB = 0b00010011;
	LDI        R27, 19
	OUT        PORTB+0, R27
;IHMTCV1_0.c,359 :: 		Delay_ms(tempo);
	LDI        R18, 8
	LDI        R17, 27
	LDI        R16, 40
L_main117:
	DEC        R16
	BRNE       L_main117
	DEC        R17
	BRNE       L_main117
	DEC        R18
	BRNE       L_main117
;IHMTCV1_0.c,360 :: 		PINO[30] = PING & (1<<0);
	MOVW       R16, R28
	MOVW       R18, R16
	SUBI       R18, 196
	SBCI       R19, 255
	LDS        R16, PING+0
	ANDI       R16, 1
	MOVW       R30, R18
	ST         Z+, R16
	LDI        R27, 0
	ST         Z+, R27
;IHMTCV1_0.c,363 :: 		case 31:
L_main119:
;IHMTCV1_0.c,364 :: 		PORTE = 0b01010110;
	LDI        R27, 86
	OUT        PORTE+0, R27
;IHMTCV1_0.c,365 :: 		PORTB = 0b00010011;
	LDI        R27, 19
	OUT        PORTB+0, R27
;IHMTCV1_0.c,366 :: 		Delay_ms(tempo);
	LDI        R18, 8
	LDI        R17, 27
	LDI        R16, 40
L_main120:
	DEC        R16
	BRNE       L_main120
	DEC        R17
	BRNE       L_main120
	DEC        R18
	BRNE       L_main120
;IHMTCV1_0.c,367 :: 		PINO[31] = PING & (1<<0);
	MOVW       R16, R28
	MOVW       R18, R16
	SUBI       R18, 194
	SBCI       R19, 255
	LDS        R16, PING+0
	ANDI       R16, 1
	MOVW       R30, R18
	ST         Z+, R16
	LDI        R27, 0
	ST         Z+, R27
;IHMTCV1_0.c,370 :: 		case 32:
L_main122:
;IHMTCV1_0.c,371 :: 		PORTE = 0b01010111;
	LDI        R27, 87
	OUT        PORTE+0, R27
;IHMTCV1_0.c,372 :: 		PORTB = 0b00010011;
	LDI        R27, 19
	OUT        PORTB+0, R27
;IHMTCV1_0.c,373 :: 		Delay_ms(tempo);
	LDI        R18, 8
	LDI        R17, 27
	LDI        R16, 40
L_main123:
	DEC        R16
	BRNE       L_main123
	DEC        R17
	BRNE       L_main123
	DEC        R18
	BRNE       L_main123
;IHMTCV1_0.c,374 :: 		PINO[32] = PING & (1<<0);
	MOVW       R16, R28
	MOVW       R18, R16
	SUBI       R18, 192
	SBCI       R19, 255
	LDS        R16, PING+0
	ANDI       R16, 1
	MOVW       R30, R18
	ST         Z+, R16
	LDI        R27, 0
	ST         Z+, R27
;IHMTCV1_0.c,377 :: 		case 33:
L_main125:
;IHMTCV1_0.c,378 :: 		PORTE = 0b01010000;
	LDI        R27, 80
	OUT        PORTE+0, R27
;IHMTCV1_0.c,379 :: 		PORTB = 0b00001101;
	LDI        R27, 13
	OUT        PORTB+0, R27
;IHMTCV1_0.c,380 :: 		Delay_ms(tempo);
	LDI        R18, 8
	LDI        R17, 27
	LDI        R16, 40
L_main126:
	DEC        R16
	BRNE       L_main126
	DEC        R17
	BRNE       L_main126
	DEC        R18
	BRNE       L_main126
;IHMTCV1_0.c,381 :: 		PINO[33] = PING & (1<<0);
	MOVW       R16, R28
	MOVW       R18, R16
	SUBI       R18, 190
	SBCI       R19, 255
	LDS        R16, PING+0
	ANDI       R16, 1
	MOVW       R30, R18
	ST         Z+, R16
	LDI        R27, 0
	ST         Z+, R27
;IHMTCV1_0.c,384 :: 		case 34:
L_main128:
;IHMTCV1_0.c,385 :: 		PORTE = 0b01010001;
	LDI        R27, 81
	OUT        PORTE+0, R27
;IHMTCV1_0.c,386 :: 		PORTB = 0b00001101;
	LDI        R27, 13
	OUT        PORTB+0, R27
;IHMTCV1_0.c,387 :: 		Delay_ms(tempo);
	LDI        R18, 8
	LDI        R17, 27
	LDI        R16, 40
L_main129:
	DEC        R16
	BRNE       L_main129
	DEC        R17
	BRNE       L_main129
	DEC        R18
	BRNE       L_main129
;IHMTCV1_0.c,388 :: 		PINO[34] = PING & (1<<0);
	MOVW       R16, R28
	MOVW       R18, R16
	SUBI       R18, 188
	SBCI       R19, 255
	LDS        R16, PING+0
	ANDI       R16, 1
	MOVW       R30, R18
	ST         Z+, R16
	LDI        R27, 0
	ST         Z+, R27
;IHMTCV1_0.c,391 :: 		case 35:
L_main131:
;IHMTCV1_0.c,392 :: 		PORTE = 0b01010010;
	LDI        R27, 82
	OUT        PORTE+0, R27
;IHMTCV1_0.c,393 :: 		PORTB = 0b00001101;
	LDI        R27, 13
	OUT        PORTB+0, R27
;IHMTCV1_0.c,394 :: 		Delay_ms(tempo);
	LDI        R18, 8
	LDI        R17, 27
	LDI        R16, 40
L_main132:
	DEC        R16
	BRNE       L_main132
	DEC        R17
	BRNE       L_main132
	DEC        R18
	BRNE       L_main132
;IHMTCV1_0.c,395 :: 		PINO[35] = PING & (1<<0);
	MOVW       R16, R28
	MOVW       R18, R16
	SUBI       R18, 186
	SBCI       R19, 255
	LDS        R16, PING+0
	ANDI       R16, 1
	MOVW       R30, R18
	ST         Z+, R16
	LDI        R27, 0
	ST         Z+, R27
;IHMTCV1_0.c,398 :: 		case 36:
L_main134:
;IHMTCV1_0.c,399 :: 		PORTE = 0b01010011;
	LDI        R27, 83
	OUT        PORTE+0, R27
;IHMTCV1_0.c,400 :: 		PORTB = 0b00001101;
	LDI        R27, 13
	OUT        PORTB+0, R27
;IHMTCV1_0.c,401 :: 		Delay_ms(tempo);
	LDI        R18, 8
	LDI        R17, 27
	LDI        R16, 40
L_main135:
	DEC        R16
	BRNE       L_main135
	DEC        R17
	BRNE       L_main135
	DEC        R18
	BRNE       L_main135
;IHMTCV1_0.c,402 :: 		PINO[36] = PING & (1<<0);
	MOVW       R16, R28
	MOVW       R18, R16
	SUBI       R18, 184
	SBCI       R19, 255
	LDS        R16, PING+0
	ANDI       R16, 1
	MOVW       R30, R18
	ST         Z+, R16
	LDI        R27, 0
	ST         Z+, R27
;IHMTCV1_0.c,405 :: 		case 37:
L_main137:
;IHMTCV1_0.c,406 :: 		PORTE = 0b01010100;
	LDI        R27, 84
	OUT        PORTE+0, R27
;IHMTCV1_0.c,407 :: 		PORTB = 0b00001101;
	LDI        R27, 13
	OUT        PORTB+0, R27
;IHMTCV1_0.c,408 :: 		Delay_ms(tempo);
	LDI        R18, 8
	LDI        R17, 27
	LDI        R16, 40
L_main138:
	DEC        R16
	BRNE       L_main138
	DEC        R17
	BRNE       L_main138
	DEC        R18
	BRNE       L_main138
;IHMTCV1_0.c,409 :: 		PINO[37] = PING & (1<<0);
	MOVW       R16, R28
	MOVW       R18, R16
	SUBI       R18, 182
	SBCI       R19, 255
	LDS        R16, PING+0
	ANDI       R16, 1
	MOVW       R30, R18
	ST         Z+, R16
	LDI        R27, 0
	ST         Z+, R27
;IHMTCV1_0.c,439 :: 		case 38:
L_main140:
;IHMTCV1_0.c,440 :: 		PORTF = PORTF |(1<<0);
	LDS        R16, PORTF+0
	ORI        R16, 1
	STS        PORTF+0, R16
;IHMTCV1_0.c,441 :: 		Delay_ms(tempo);
	LDI        R18, 8
	LDI        R17, 27
	LDI        R16, 40
L_main141:
	DEC        R16
	BRNE       L_main141
	DEC        R17
	BRNE       L_main141
	DEC        R18
	BRNE       L_main141
;IHMTCV1_0.c,442 :: 		PINO[38] = PINF &(1<<1);
	MOVW       R16, R28
	MOVW       R18, R16
	SUBI       R18, 180
	SBCI       R19, 255
	IN         R16, PINF+0
	ANDI       R16, 2
	MOVW       R30, R18
	ST         Z+, R16
	LDI        R27, 0
	ST         Z+, R27
;IHMTCV1_0.c,445 :: 		case 39:
L_main143:
;IHMTCV1_0.c,446 :: 		PORTF = PORTF |(1<<0);
	LDS        R16, PORTF+0
	ORI        R16, 1
	STS        PORTF+0, R16
;IHMTCV1_0.c,447 :: 		Delay_ms(tempo);
	LDI        R18, 8
	LDI        R17, 27
	LDI        R16, 40
L_main144:
	DEC        R16
	BRNE       L_main144
	DEC        R17
	BRNE       L_main144
	DEC        R18
	BRNE       L_main144
;IHMTCV1_0.c,448 :: 		PINO[39] = PINF &(1<<2);
	MOVW       R16, R28
	MOVW       R18, R16
	SUBI       R18, 178
	SBCI       R19, 255
	IN         R16, PINF+0
	ANDI       R16, 4
	MOVW       R30, R18
	ST         Z+, R16
	LDI        R27, 0
	ST         Z+, R27
;IHMTCV1_0.c,451 :: 		case 40:
L_main146:
;IHMTCV1_0.c,452 :: 		PORTF = PORTF |(1<<0);
	LDS        R16, PORTF+0
	ORI        R16, 1
	STS        PORTF+0, R16
;IHMTCV1_0.c,453 :: 		Delay_ms(tempo);
	LDI        R18, 8
	LDI        R17, 27
	LDI        R16, 40
L_main147:
	DEC        R16
	BRNE       L_main147
	DEC        R17
	BRNE       L_main147
	DEC        R18
	BRNE       L_main147
;IHMTCV1_0.c,454 :: 		PINO[40] = PINF &(1<<3);
	MOVW       R16, R28
	MOVW       R18, R16
	SUBI       R18, 176
	SBCI       R19, 255
	IN         R16, PINF+0
	ANDI       R16, 8
	MOVW       R30, R18
	ST         Z+, R16
	LDI        R27, 0
	ST         Z+, R27
;IHMTCV1_0.c,457 :: 		case 41:
L_main149:
;IHMTCV1_0.c,458 :: 		PORTC = PORTC |(1<<0);
	IN         R16, PORTC+0
	ORI        R16, 1
	OUT        PORTC+0, R16
;IHMTCV1_0.c,459 :: 		Delay_ms(tempo);
	LDI        R18, 8
	LDI        R17, 27
	LDI        R16, 40
L_main150:
	DEC        R16
	BRNE       L_main150
	DEC        R17
	BRNE       L_main150
	DEC        R18
	BRNE       L_main150
;IHMTCV1_0.c,460 :: 		PINO[41] = PINC &(1<<1);
	MOVW       R16, R28
	MOVW       R18, R16
	SUBI       R18, 174
	SBCI       R19, 255
	IN         R16, PINC+0
	ANDI       R16, 2
	MOVW       R30, R18
	ST         Z+, R16
	LDI        R27, 0
	ST         Z+, R27
;IHMTCV1_0.c,464 :: 		case 42:
L_main152:
;IHMTCV1_0.c,465 :: 		PORTC = PORTC |(1<<0);
	IN         R16, PORTC+0
	ORI        R16, 1
	OUT        PORTC+0, R16
;IHMTCV1_0.c,466 :: 		Delay_ms(tempo);
	LDI        R18, 8
	LDI        R17, 27
	LDI        R16, 40
L_main153:
	DEC        R16
	BRNE       L_main153
	DEC        R17
	BRNE       L_main153
	DEC        R18
	BRNE       L_main153
;IHMTCV1_0.c,467 :: 		PINO[42] = PINC & (1<<2);
	MOVW       R16, R28
	MOVW       R18, R16
	SUBI       R18, 172
	SBCI       R19, 255
	IN         R16, PINC+0
	ANDI       R16, 4
	MOVW       R30, R18
	ST         Z+, R16
	LDI        R27, 0
	ST         Z+, R27
;IHMTCV1_0.c,470 :: 		case 43:
L_main155:
;IHMTCV1_0.c,471 :: 		PORTC = PORTC |(1<<0);
	IN         R16, PORTC+0
	ORI        R16, 1
	OUT        PORTC+0, R16
;IHMTCV1_0.c,472 :: 		Delay_ms(tempo);
	LDI        R18, 8
	LDI        R17, 27
	LDI        R16, 40
L_main156:
	DEC        R16
	BRNE       L_main156
	DEC        R17
	BRNE       L_main156
	DEC        R18
	BRNE       L_main156
;IHMTCV1_0.c,473 :: 		PINO[43] = PINC & (1<<3);
	MOVW       R16, R28
	MOVW       R18, R16
	SUBI       R18, 170
	SBCI       R19, 255
	IN         R16, PINC+0
	ANDI       R16, 8
	MOVW       R30, R18
	ST         Z+, R16
	LDI        R27, 0
	ST         Z+, R27
;IHMTCV1_0.c,476 :: 		case 44:
L_main158:
;IHMTCV1_0.c,477 :: 		PORTC = PORTC |(1<<0);
	IN         R16, PORTC+0
	ORI        R16, 1
	OUT        PORTC+0, R16
;IHMTCV1_0.c,478 :: 		Delay_ms(tempo);
	LDI        R18, 8
	LDI        R17, 27
	LDI        R16, 40
L_main159:
	DEC        R16
	BRNE       L_main159
	DEC        R17
	BRNE       L_main159
	DEC        R18
	BRNE       L_main159
;IHMTCV1_0.c,479 :: 		PINO[44] = PINC & (1<<4);
	MOVW       R16, R28
	MOVW       R18, R16
	SUBI       R18, 168
	SBCI       R19, 255
	IN         R16, PINC+0
	ANDI       R16, 16
	MOVW       R30, R18
	ST         Z+, R16
	LDI        R27, 0
	ST         Z+, R27
;IHMTCV1_0.c,483 :: 		case 45:
L_main161:
;IHMTCV1_0.c,484 :: 		PORTC = PORTC |(1<<0);
	IN         R16, PORTC+0
	ORI        R16, 1
	OUT        PORTC+0, R16
;IHMTCV1_0.c,485 :: 		Delay_ms(tempo);
	LDI        R18, 8
	LDI        R17, 27
	LDI        R16, 40
L_main162:
	DEC        R16
	BRNE       L_main162
	DEC        R17
	BRNE       L_main162
	DEC        R18
	BRNE       L_main162
;IHMTCV1_0.c,486 :: 		PINO[45] = PINC & (1<<5);
	MOVW       R16, R28
	MOVW       R18, R16
	SUBI       R18, 166
	SBCI       R19, 255
	IN         R16, PINC+0
	ANDI       R16, 32
	MOVW       R30, R18
	ST         Z+, R16
	LDI        R27, 0
	ST         Z+, R27
;IHMTCV1_0.c,489 :: 		case 46:
L_main164:
;IHMTCV1_0.c,490 :: 		PORTC = PORTC |(1<<0);
	IN         R16, PORTC+0
	ORI        R16, 1
	OUT        PORTC+0, R16
;IHMTCV1_0.c,491 :: 		Delay_ms(tempo);
	LDI        R18, 8
	LDI        R17, 27
	LDI        R16, 40
L_main165:
	DEC        R16
	BRNE       L_main165
	DEC        R17
	BRNE       L_main165
	DEC        R18
	BRNE       L_main165
;IHMTCV1_0.c,492 :: 		PINO[46] = PINC & (1<<6);
	MOVW       R16, R28
	MOVW       R18, R16
	SUBI       R18, 164
	SBCI       R19, 255
	IN         R16, PINC+0
	ANDI       R16, 64
	MOVW       R30, R18
	ST         Z+, R16
	LDI        R27, 0
	ST         Z+, R27
;IHMTCV1_0.c,495 :: 		case 47:
L_main167:
;IHMTCV1_0.c,496 :: 		PORTF = PORTF |(1<<4);
	LDS        R16, PORTF+0
	ORI        R16, 16
	STS        PORTF+0, R16
;IHMTCV1_0.c,497 :: 		Delay_ms(tempo);
	LDI        R18, 8
	LDI        R17, 27
	LDI        R16, 40
L_main168:
	DEC        R16
	BRNE       L_main168
	DEC        R17
	BRNE       L_main168
	DEC        R18
	BRNE       L_main168
;IHMTCV1_0.c,498 :: 		PINO[47] = PINF &(1<<5);
	MOVW       R16, R28
	MOVW       R18, R16
	SUBI       R18, 162
	SBCI       R19, 255
	IN         R16, PINF+0
	ANDI       R16, 32
	MOVW       R30, R18
	ST         Z+, R16
	LDI        R27, 0
	ST         Z+, R27
;IHMTCV1_0.c,501 :: 		case 48:
L_main170:
;IHMTCV1_0.c,502 :: 		PORTF = PORTF |(1<<4);
	LDS        R16, PORTF+0
	ORI        R16, 16
	STS        PORTF+0, R16
;IHMTCV1_0.c,503 :: 		Delay_ms(tempo);
	LDI        R18, 8
	LDI        R17, 27
	LDI        R16, 40
L_main171:
	DEC        R16
	BRNE       L_main171
	DEC        R17
	BRNE       L_main171
	DEC        R18
	BRNE       L_main171
;IHMTCV1_0.c,504 :: 		PINO[48] = PINF &(1<<6);
	MOVW       R16, R28
	MOVW       R18, R16
	SUBI       R18, 160
	SBCI       R19, 255
	IN         R16, PINF+0
	ANDI       R16, 64
	MOVW       R30, R18
	ST         Z+, R16
	LDI        R27, 0
	ST         Z+, R27
;IHMTCV1_0.c,506 :: 		case 49:
L_main173:
;IHMTCV1_0.c,507 :: 		PORTF = PORTF |(1<<4);
	LDS        R16, PORTF+0
	ORI        R16, 16
	STS        PORTF+0, R16
;IHMTCV1_0.c,508 :: 		Delay_ms(tempo);
	LDI        R18, 8
	LDI        R17, 27
	LDI        R16, 40
L_main174:
	DEC        R16
	BRNE       L_main174
	DEC        R17
	BRNE       L_main174
	DEC        R18
	BRNE       L_main174
;IHMTCV1_0.c,509 :: 		PINO[49] = PINF &(1<<7);
	MOVW       R16, R28
	MOVW       R18, R16
	SUBI       R18, 158
	SBCI       R19, 255
	IN         R16, PINF+0
	ANDI       R16, 128
	MOVW       R30, R18
	ST         Z+, R16
	LDI        R27, 0
	ST         Z+, R27
;IHMTCV1_0.c,511 :: 		}
	JMP        L_main28
L_main27:
; count start address is: 17 (R17)
	CPI        R18, 0
	BRNE       L__main298
	CPI        R17, 1
L__main298:
	BRNE       L__main299
	JMP        L_main29
L__main299:
	CPI        R18, 0
	BRNE       L__main300
	CPI        R17, 2
L__main300:
	BRNE       L__main301
	JMP        L_main32
L__main301:
	CPI        R18, 0
	BRNE       L__main302
	CPI        R17, 3
L__main302:
	BRNE       L__main303
	JMP        L_main35
L__main303:
	CPI        R18, 0
	BRNE       L__main304
	CPI        R17, 4
L__main304:
	BRNE       L__main305
	JMP        L_main38
L__main305:
	CPI        R18, 0
	BRNE       L__main306
	CPI        R17, 5
L__main306:
	BRNE       L__main307
	JMP        L_main41
L__main307:
	CPI        R18, 0
	BRNE       L__main308
	CPI        R17, 6
L__main308:
	BRNE       L__main309
	JMP        L_main44
L__main309:
	CPI        R18, 0
	BRNE       L__main310
	CPI        R17, 7
L__main310:
	BRNE       L__main311
	JMP        L_main47
L__main311:
	CPI        R18, 0
	BRNE       L__main312
	CPI        R17, 8
L__main312:
	BRNE       L__main313
	JMP        L_main50
L__main313:
	CPI        R18, 0
	BRNE       L__main314
	CPI        R17, 9
L__main314:
	BRNE       L__main315
	JMP        L_main53
L__main315:
	CPI        R18, 0
	BRNE       L__main316
	CPI        R17, 10
L__main316:
	BRNE       L__main317
	JMP        L_main56
L__main317:
	CPI        R18, 0
	BRNE       L__main318
	CPI        R17, 11
L__main318:
	BRNE       L__main319
	JMP        L_main59
L__main319:
	CPI        R18, 0
	BRNE       L__main320
	CPI        R17, 12
L__main320:
	BRNE       L__main321
	JMP        L_main62
L__main321:
	CPI        R18, 0
	BRNE       L__main322
	CPI        R17, 13
L__main322:
	BRNE       L__main323
	JMP        L_main65
L__main323:
	CPI        R18, 0
	BRNE       L__main324
	CPI        R17, 14
L__main324:
	BRNE       L__main325
	JMP        L_main68
L__main325:
	CPI        R18, 0
	BRNE       L__main326
	CPI        R17, 15
L__main326:
	BRNE       L__main327
	JMP        L_main71
L__main327:
	CPI        R18, 0
	BRNE       L__main328
	CPI        R17, 16
L__main328:
	BRNE       L__main329
	JMP        L_main74
L__main329:
	CPI        R18, 0
	BRNE       L__main330
	CPI        R17, 17
L__main330:
	BRNE       L__main331
	JMP        L_main77
L__main331:
	CPI        R18, 0
	BRNE       L__main332
	CPI        R17, 18
L__main332:
	BRNE       L__main333
	JMP        L_main80
L__main333:
	CPI        R18, 0
	BRNE       L__main334
	CPI        R17, 19
L__main334:
	BRNE       L__main335
	JMP        L_main83
L__main335:
	CPI        R18, 0
	BRNE       L__main336
	CPI        R17, 20
L__main336:
	BRNE       L__main337
	JMP        L_main86
L__main337:
	CPI        R18, 0
	BRNE       L__main338
	CPI        R17, 21
L__main338:
	BRNE       L__main339
	JMP        L_main89
L__main339:
	CPI        R18, 0
	BRNE       L__main340
	CPI        R17, 22
L__main340:
	BRNE       L__main341
	JMP        L_main92
L__main341:
	CPI        R18, 0
	BRNE       L__main342
	CPI        R17, 23
L__main342:
	BRNE       L__main343
	JMP        L_main95
L__main343:
	CPI        R18, 0
	BRNE       L__main344
	CPI        R17, 24
L__main344:
	BRNE       L__main345
	JMP        L_main98
L__main345:
	CPI        R18, 0
	BRNE       L__main346
	CPI        R17, 25
L__main346:
	BRNE       L__main347
	JMP        L_main101
L__main347:
	CPI        R18, 0
	BRNE       L__main348
	CPI        R17, 26
L__main348:
	BRNE       L__main349
	JMP        L_main104
L__main349:
	CPI        R18, 0
	BRNE       L__main350
	CPI        R17, 27
L__main350:
	BRNE       L__main351
	JMP        L_main107
L__main351:
	CPI        R18, 0
	BRNE       L__main352
	CPI        R17, 28
L__main352:
	BRNE       L__main353
	JMP        L_main110
L__main353:
	CPI        R18, 0
	BRNE       L__main354
	CPI        R17, 29
L__main354:
	BRNE       L__main355
	JMP        L_main113
L__main355:
	CPI        R18, 0
	BRNE       L__main356
	CPI        R17, 30
L__main356:
	BRNE       L__main357
	JMP        L_main116
L__main357:
	CPI        R18, 0
	BRNE       L__main358
	CPI        R17, 31
L__main358:
	BRNE       L__main359
	JMP        L_main119
L__main359:
	CPI        R18, 0
	BRNE       L__main360
	CPI        R17, 32
L__main360:
	BRNE       L__main361
	JMP        L_main122
L__main361:
	CPI        R18, 0
	BRNE       L__main362
	CPI        R17, 33
L__main362:
	BRNE       L__main363
	JMP        L_main125
L__main363:
	CPI        R18, 0
	BRNE       L__main364
	CPI        R17, 34
L__main364:
	BRNE       L__main365
	JMP        L_main128
L__main365:
	CPI        R18, 0
	BRNE       L__main366
	CPI        R17, 35
L__main366:
	BRNE       L__main367
	JMP        L_main131
L__main367:
	CPI        R18, 0
	BRNE       L__main368
	CPI        R17, 36
L__main368:
	BRNE       L__main369
	JMP        L_main134
L__main369:
	CPI        R18, 0
	BRNE       L__main370
	CPI        R17, 37
L__main370:
	BRNE       L__main371
	JMP        L_main137
L__main371:
	CPI        R18, 0
	BRNE       L__main372
	CPI        R17, 38
L__main372:
	BRNE       L__main373
	JMP        L_main140
L__main373:
	CPI        R18, 0
	BRNE       L__main374
	CPI        R17, 39
L__main374:
	BRNE       L__main375
	JMP        L_main143
L__main375:
	CPI        R18, 0
	BRNE       L__main376
	CPI        R17, 40
L__main376:
	BRNE       L__main377
	JMP        L_main146
L__main377:
	CPI        R18, 0
	BRNE       L__main378
	CPI        R17, 41
L__main378:
	BRNE       L__main379
	JMP        L_main149
L__main379:
	CPI        R18, 0
	BRNE       L__main380
	CPI        R17, 42
L__main380:
	BRNE       L__main381
	JMP        L_main152
L__main381:
	CPI        R18, 0
	BRNE       L__main382
	CPI        R17, 43
L__main382:
	BRNE       L__main383
	JMP        L_main155
L__main383:
	CPI        R18, 0
	BRNE       L__main384
	CPI        R17, 44
L__main384:
	BRNE       L__main385
	JMP        L_main158
L__main385:
	CPI        R18, 0
	BRNE       L__main386
	CPI        R17, 45
L__main386:
	BRNE       L__main387
	JMP        L_main161
L__main387:
	CPI        R18, 0
	BRNE       L__main388
	CPI        R17, 46
L__main388:
	BRNE       L__main389
	JMP        L_main164
L__main389:
	CPI        R18, 0
	BRNE       L__main390
	CPI        R17, 47
L__main390:
	BRNE       L__main391
	JMP        L_main167
L__main391:
	CPI        R18, 0
	BRNE       L__main392
	CPI        R17, 48
L__main392:
	BRNE       L__main393
	JMP        L_main170
L__main393:
	CPI        R18, 0
	BRNE       L__main394
	CPI        R17, 49
L__main394:
	BRNE       L__main395
	JMP        L_main173
L__main395:
; count end address is: 17 (R17)
L_main28:
;IHMTCV1_0.c,513 :: 		for (contador = 1; contador <= numVias; contador ++){
; contador start address is: 16 (R16)
	LDI        R16, 1
	LDI        R17, 0
; teste end address is: 20 (R20)
; contador end address is: 16 (R16)
	MOVW       R22, R20
	MOVW       R20, R16
L_main176:
; contador start address is: 20 (R20)
; teste start address is: 22 (R22)
	LDI        R16, 49
	LDI        R17, 0
	CP         R16, R20
	CPC        R17, R21
	BRGE       L__main396
	JMP        L_main177
L__main396:
;IHMTCV1_0.c,515 :: 		if(PINO[contador] != 0){
	MOVW       R18, R28
	MOVW       R16, R20
	LSL        R16
	ROL        R17
	ADD        R16, R18
	ADC        R17, R19
	MOVW       R30, R16
	LD         R16, Z+
	LD         R17, Z+
	CPI        R17, 0
	BRNE       L__main397
	CPI        R16, 0
L__main397:
	BRNE       L__main398
	JMP        L_main179
L__main398:
;IHMTCV1_0.c,517 :: 		teste ++;
	MOVW       R16, R22
	SUBI       R16, 255
	SBCI       R17, 255
	MOVW       R22, R16
;IHMTCV1_0.c,519 :: 		if(teste == numVias){
	CPI        R17, 0
	BRNE       L__main399
	CPI        R16, 49
L__main399:
	BREQ       L__main400
	JMP        L_main180
L__main400:
;IHMTCV1_0.c,521 :: 		Lcd_Cmd(_LCD_CLEAR);
	LDI        R27, 1
	MOV        R2, R27
	CALL       _Lcd_Cmd+0
;IHMTCV1_0.c,522 :: 		Lcd_Out(1,5,"Teste OK!");
	LDI        R27, #lo_addr(?lstr16_IHMTCV1_0+0)
	MOV        R4, R27
	LDI        R27, hi_addr(?lstr16_IHMTCV1_0+0)
	MOV        R5, R27
	LDI        R27, 5
	MOV        R3, R27
	LDI        R27, 1
	MOV        R2, R27
	CALL       _Lcd_Out+0
;IHMTCV1_0.c,524 :: 		}
L_main180:
;IHMTCV1_0.c,525 :: 		} else{
	JMP        L_main181
; teste end address is: 22 (R22)
L_main179:
;IHMTCV1_0.c,527 :: 		Lcd_Cmd(_LCD_CLEAR);
	LDI        R27, 1
	MOV        R2, R27
	CALL       _Lcd_Cmd+0
;IHMTCV1_0.c,528 :: 		Lcd_Out(1,1,"FALHA NO TESTE!");
	LDI        R27, #lo_addr(?lstr17_IHMTCV1_0+0)
	MOV        R4, R27
	LDI        R27, hi_addr(?lstr17_IHMTCV1_0+0)
	MOV        R5, R27
	LDI        R27, 1
	MOV        R3, R27
	LDI        R27, 1
	MOV        R2, R27
	CALL       _Lcd_Out+0
;IHMTCV1_0.c,529 :: 		Lcd_Out(2,1,"VIA");
	LDI        R27, #lo_addr(?lstr18_IHMTCV1_0+0)
	MOV        R4, R27
	LDI        R27, hi_addr(?lstr18_IHMTCV1_0+0)
	MOV        R5, R27
	LDI        R27, 1
	MOV        R3, R27
	LDI        R27, 2
	MOV        R2, R27
	CALL       _Lcd_Out+0
;IHMTCV1_0.c,530 :: 		erro = vetorDeErro[contador];
	MOVW       R18, R20
	LSL        R18
	ROL        R19
; contador end address is: 20 (R20)
	LDI        R16, #lo_addr(IHMTCV1_0_vetorDeErro+0)
	LDI        R17, hi_addr(IHMTCV1_0_vetorDeErro+0)
	ADD        R16, R18
	ADC        R17, R19
	MOVW       R30, R16
	LD         R16, Z+
	LD         R17, Z+
	STS        _erro+0, R16
	STS        _erro+1, R17
;IHMTCV1_0.c,531 :: 		IntToStr(erro, txt);
	LDI        R27, #lo_addr(_txt+0)
	MOV        R4, R27
	LDI        R27, hi_addr(_txt+0)
	MOV        R5, R27
	MOVW       R2, R16
	CALL       _IntToStr+0
;IHMTCV1_0.c,532 :: 		Lcd_Out(2,5,txt);
	LDI        R27, #lo_addr(_txt+0)
	MOV        R4, R27
	LDI        R27, hi_addr(_txt+0)
	MOV        R5, R27
	LDI        R27, 5
	MOV        R3, R27
	LDI        R27, 2
	MOV        R2, R27
	CALL       _Lcd_Out+0
;IHMTCV1_0.c,534 :: 		break;
	JMP        L_main177
;IHMTCV1_0.c,535 :: 		}
L_main181:
;IHMTCV1_0.c,513 :: 		for (contador = 1; contador <= numVias; contador ++){
; contador start address is: 20 (R20)
; teste start address is: 22 (R22)
	MOVW       R16, R20
	SUBI       R16, 255
	SBCI       R17, 255
	MOVW       R20, R16
;IHMTCV1_0.c,536 :: 		}
; teste end address is: 22 (R22)
; contador end address is: 20 (R20)
	JMP        L_main176
L_main177:
;IHMTCV1_0.c,538 :: 		}
L_main26:
;IHMTCV1_0.c,539 :: 		if(Button (&PIND, 2, 0, 0)){
	CLR        R6
	CLR        R5
	LDI        R27, 2
	MOV        R4, R27
	LDI        R27, #lo_addr(PIND+0)
	MOV        R2, R27
	LDI        R27, hi_addr(PIND+0)
	MOV        R3, R27
	CALL       _Button+0
	TST        R16
	BRNE       L__main401
	JMP        L_main182
L__main401:
;IHMTCV1_0.c,540 :: 		sair++;
	LDS        R16, _sair+0
	LDS        R17, _sair+1
	SUBI       R16, 255
	SBCI       R17, 255
	STS        _sair+0, R16
	STS        _sair+1, R17
;IHMTCV1_0.c,541 :: 		}
L_main182:
;IHMTCV1_0.c,543 :: 		}
	JMP        L_main24
L_main25:
;IHMTCV1_0.c,141 :: 		if(Button (&PIND, 3, 0, 0) && menu == 1){
L__main277:
L__main276:
;IHMTCV1_0.c,545 :: 		if(Button (&PIND, 3, 0, 0) && menu == 2) {
	CLR        R6
	CLR        R5
	LDI        R27, 3
	MOV        R4, R27
	LDI        R27, #lo_addr(PIND+0)
	MOV        R2, R27
	LDI        R27, hi_addr(PIND+0)
	MOV        R3, R27
	CALL       _Button+0
	TST        R16
	BRNE       L__main402
	JMP        L__main279
L__main402:
	LDS        R16, _menu+0
	LDS        R17, _menu+1
	CPI        R17, 0
	BRNE       L__main403
	CPI        R16, 2
L__main403:
	BREQ       L__main404
	JMP        L__main278
L__main404:
L__main274:
;IHMTCV1_0.c,546 :: 		Lcd_Cmd(_LCD_CLEAR);
	LDI        R27, 1
	MOV        R2, R27
	CALL       _Lcd_Cmd+0
;IHMTCV1_0.c,547 :: 		lcd_Out(1, 5,"Pressione");
	LDI        R27, #lo_addr(?lstr19_IHMTCV1_0+0)
	MOV        R4, R27
	LDI        R27, hi_addr(?lstr19_IHMTCV1_0+0)
	MOV        R5, R27
	LDI        R27, 5
	MOV        R3, R27
	LDI        R27, 1
	MOV        R2, R27
	CALL       _Lcd_Out+0
;IHMTCV1_0.c,548 :: 		lcd_Out(2, 5,"Executar!");
	LDI        R27, #lo_addr(?lstr20_IHMTCV1_0+0)
	MOV        R4, R27
	LDI        R27, hi_addr(?lstr20_IHMTCV1_0+0)
	MOV        R5, R27
	LDI        R27, 5
	MOV        R3, R27
	LDI        R27, 2
	MOV        R2, R27
	CALL       _Lcd_Out+0
;IHMTCV1_0.c,551 :: 		while (sair){
L_main186:
	LDS        R16, _sair+0
	LDS        R17, _sair+1
	MOV        R27, R16
	OR         R27, R17
	BRNE       L__main405
	JMP        L_main187
L__main405:
;IHMTCV1_0.c,552 :: 		int count = 1;
; count start address is: 17 (R17)
	LDI        R17, 1
	LDI        R18, 0
;IHMTCV1_0.c,555 :: 		int contador = 0;
;IHMTCV1_0.c,556 :: 		int teste = 0;
; teste start address is: 20 (R20)
	LDI        R20, 0
	LDI        R21, 0
;IHMTCV1_0.c,557 :: 		buttonEstate = PIND & (1<<0);
	IN         R16, PIND+0
	ANDI       R16, 1
; buttonEstate start address is: 22 (R22)
	MOV        R22, R16
	LDI        R23, 0
;IHMTCV1_0.c,559 :: 		if(buttonEstate == 0){
	CPI        R23, 0
	BRNE       L__main406
	CPI        R22, 0
L__main406:
	BREQ       L__main407
	JMP        L_main188
L__main407:
; buttonEstate end address is: 22 (R22)
;IHMTCV1_0.c,560 :: 		Lcd_Cmd(_LCD_CLEAR);
	PUSH       R18
	PUSH       R17
	LDI        R27, 1
	MOV        R2, R27
	CALL       _Lcd_Cmd+0
;IHMTCV1_0.c,561 :: 		Lcd_Out(1,1,"Executando Teste");
	LDI        R27, #lo_addr(?lstr21_IHMTCV1_0+0)
	MOV        R4, R27
	LDI        R27, hi_addr(?lstr21_IHMTCV1_0+0)
	MOV        R5, R27
	LDI        R27, 1
	MOV        R3, R27
	LDI        R27, 1
	MOV        R2, R27
	CALL       _Lcd_Out+0
;IHMTCV1_0.c,562 :: 		Lcd_Out(2,1,"Aguarde...");
	LDI        R27, #lo_addr(?lstr22_IHMTCV1_0+0)
	MOV        R4, R27
	LDI        R27, hi_addr(?lstr22_IHMTCV1_0+0)
	MOV        R5, R27
	LDI        R27, 1
	MOV        R3, R27
	LDI        R27, 2
	MOV        R2, R27
	CALL       _Lcd_Out+0
	POP        R17
	POP        R18
;IHMTCV1_0.c,564 :: 		switch (count){
	JMP        L_main189
; count end address is: 17 (R17)
;IHMTCV1_0.c,567 :: 		case 1:
L_main191:
;IHMTCV1_0.c,568 :: 		PORTE = 0b11010001;
	LDI        R27, 209
	OUT        PORTE+0, R27
;IHMTCV1_0.c,569 :: 		PORTB = 0b00010100;
	LDI        R27, 20
	OUT        PORTB+0, R27
;IHMTCV1_0.c,570 :: 		Delay_ms(tempo);
	LDI        R18, 8
	LDI        R17, 27
	LDI        R16, 40
L_main192:
	DEC        R16
	BRNE       L_main192
	DEC        R17
	BRNE       L_main192
	DEC        R18
	BRNE       L_main192
;IHMTCV1_0.c,571 :: 		PINO[1] = PING & (1<<0);
	MOVW       R16, R28
	SUBI       R16, 156
	SBCI       R17, 255
	MOVW       R18, R16
	SUBI       R18, 254
	SBCI       R19, 255
	LDS        R16, PING+0
	ANDI       R16, 1
	MOVW       R30, R18
	ST         Z+, R16
	LDI        R27, 0
	ST         Z+, R27
;IHMTCV1_0.c,574 :: 		case 2:
L_main194:
;IHMTCV1_0.c,575 :: 		PORTE = 0b11010010;
	LDI        R27, 210
	OUT        PORTE+0, R27
;IHMTCV1_0.c,576 :: 		PORTB = 0b00010100;
	LDI        R27, 20
	OUT        PORTB+0, R27
;IHMTCV1_0.c,577 :: 		Delay_ms(tempo);
	LDI        R18, 8
	LDI        R17, 27
	LDI        R16, 40
L_main195:
	DEC        R16
	BRNE       L_main195
	DEC        R17
	BRNE       L_main195
	DEC        R18
	BRNE       L_main195
;IHMTCV1_0.c,578 :: 		PINO[2] = PING & (1<<0);
	MOVW       R16, R28
	SUBI       R16, 156
	SBCI       R17, 255
	MOVW       R18, R16
	SUBI       R18, 252
	SBCI       R19, 255
	LDS        R16, PING+0
	ANDI       R16, 1
	MOVW       R30, R18
	ST         Z+, R16
	LDI        R27, 0
	ST         Z+, R27
;IHMTCV1_0.c,581 :: 		case 3:
L_main197:
;IHMTCV1_0.c,582 :: 		PORTE = 0b11010011;
	LDI        R27, 211
	OUT        PORTE+0, R27
;IHMTCV1_0.c,583 :: 		PORTB = 0b00010100;
	LDI        R27, 20
	OUT        PORTB+0, R27
;IHMTCV1_0.c,584 :: 		Delay_ms(tempo);
	LDI        R18, 8
	LDI        R17, 27
	LDI        R16, 40
L_main198:
	DEC        R16
	BRNE       L_main198
	DEC        R17
	BRNE       L_main198
	DEC        R18
	BRNE       L_main198
;IHMTCV1_0.c,585 :: 		PINO[3] = PING & (1<<0);
	MOVW       R16, R28
	SUBI       R16, 156
	SBCI       R17, 255
	MOVW       R18, R16
	SUBI       R18, 250
	SBCI       R19, 255
	LDS        R16, PING+0
	ANDI       R16, 1
	MOVW       R30, R18
	ST         Z+, R16
	LDI        R27, 0
	ST         Z+, R27
;IHMTCV1_0.c,588 :: 		case 4:
L_main200:
;IHMTCV1_0.c,589 :: 		PORTE = 0b11010100;
	LDI        R27, 212
	OUT        PORTE+0, R27
;IHMTCV1_0.c,590 :: 		PORTB = 0b00010100;
	LDI        R27, 20
	OUT        PORTB+0, R27
;IHMTCV1_0.c,591 :: 		Delay_ms(tempo);
	LDI        R18, 8
	LDI        R17, 27
	LDI        R16, 40
L_main201:
	DEC        R16
	BRNE       L_main201
	DEC        R17
	BRNE       L_main201
	DEC        R18
	BRNE       L_main201
;IHMTCV1_0.c,592 :: 		PINO[4] = PING & (1<<0);
	MOVW       R16, R28
	SUBI       R16, 156
	SBCI       R17, 255
	MOVW       R18, R16
	SUBI       R18, 248
	SBCI       R19, 255
	LDS        R16, PING+0
	ANDI       R16, 1
	MOVW       R30, R18
	ST         Z+, R16
	LDI        R27, 0
	ST         Z+, R27
;IHMTCV1_0.c,595 :: 		case 5:
L_main203:
;IHMTCV1_0.c,596 :: 		PORTE = 0b11010101;
	LDI        R27, 213
	OUT        PORTE+0, R27
;IHMTCV1_0.c,597 :: 		PORTB = 0b00010100;
	LDI        R27, 20
	OUT        PORTB+0, R27
;IHMTCV1_0.c,598 :: 		Delay_ms(tempo);
	LDI        R18, 8
	LDI        R17, 27
	LDI        R16, 40
L_main204:
	DEC        R16
	BRNE       L_main204
	DEC        R17
	BRNE       L_main204
	DEC        R18
	BRNE       L_main204
;IHMTCV1_0.c,599 :: 		PINO[5] = PING & (1<<0);
	MOVW       R16, R28
	SUBI       R16, 156
	SBCI       R17, 255
	MOVW       R18, R16
	SUBI       R18, 246
	SBCI       R19, 255
	LDS        R16, PING+0
	ANDI       R16, 1
	MOVW       R30, R18
	ST         Z+, R16
	LDI        R27, 0
	ST         Z+, R27
;IHMTCV1_0.c,602 :: 		case 6:
L_main206:
;IHMTCV1_0.c,603 :: 		PORTE = 0b11010110;
	LDI        R27, 214
	OUT        PORTE+0, R27
;IHMTCV1_0.c,604 :: 		PORTB = 0b00010100;
	LDI        R27, 20
	OUT        PORTB+0, R27
;IHMTCV1_0.c,605 :: 		Delay_ms(tempo);
	LDI        R18, 8
	LDI        R17, 27
	LDI        R16, 40
L_main207:
	DEC        R16
	BRNE       L_main207
	DEC        R17
	BRNE       L_main207
	DEC        R18
	BRNE       L_main207
;IHMTCV1_0.c,606 :: 		PINO[6] = PING & (1<<0);
	MOVW       R16, R28
	SUBI       R16, 156
	SBCI       R17, 255
	MOVW       R18, R16
	SUBI       R18, 244
	SBCI       R19, 255
	LDS        R16, PING+0
	ANDI       R16, 1
	MOVW       R30, R18
	ST         Z+, R16
	LDI        R27, 0
	ST         Z+, R27
;IHMTCV1_0.c,609 :: 		case 7:
L_main209:
;IHMTCV1_0.c,610 :: 		PORTE = 0b11010111;
	LDI        R27, 215
	OUT        PORTE+0, R27
;IHMTCV1_0.c,611 :: 		PORTB = 0b00010100;
	LDI        R27, 20
	OUT        PORTB+0, R27
;IHMTCV1_0.c,612 :: 		Delay_ms(tempo);
	LDI        R18, 8
	LDI        R17, 27
	LDI        R16, 40
L_main210:
	DEC        R16
	BRNE       L_main210
	DEC        R17
	BRNE       L_main210
	DEC        R18
	BRNE       L_main210
;IHMTCV1_0.c,613 :: 		PINO[7] = PING & (1<<0);
	MOVW       R16, R28
	SUBI       R16, 156
	SBCI       R17, 255
	MOVW       R18, R16
	SUBI       R18, 242
	SBCI       R19, 255
	LDS        R16, PING+0
	ANDI       R16, 1
	MOVW       R30, R18
	ST         Z+, R16
	LDI        R27, 0
	ST         Z+, R27
;IHMTCV1_0.c,616 :: 		case 8:
L_main212:
;IHMTCV1_0.c,617 :: 		PORTE = 0b01010000;
	LDI        R27, 80
	OUT        PORTE+0, R27
;IHMTCV1_0.c,618 :: 		PORTB = 0b00010011;
	LDI        R27, 19
	OUT        PORTB+0, R27
;IHMTCV1_0.c,619 :: 		Delay_ms(tempo);
	LDI        R18, 8
	LDI        R17, 27
	LDI        R16, 40
L_main213:
	DEC        R16
	BRNE       L_main213
	DEC        R17
	BRNE       L_main213
	DEC        R18
	BRNE       L_main213
;IHMTCV1_0.c,620 :: 		PINO[8] = PING & (1<<0);
	MOVW       R16, R28
	SUBI       R16, 156
	SBCI       R17, 255
	MOVW       R18, R16
	SUBI       R18, 240
	SBCI       R19, 255
	LDS        R16, PING+0
	ANDI       R16, 1
	MOVW       R30, R18
	ST         Z+, R16
	LDI        R27, 0
	ST         Z+, R27
;IHMTCV1_0.c,623 :: 		case 9:
L_main215:
;IHMTCV1_0.c,624 :: 		PORTE = 0b01010001;
	LDI        R27, 81
	OUT        PORTE+0, R27
;IHMTCV1_0.c,625 :: 		PORTB = 0b00010011;
	LDI        R27, 19
	OUT        PORTB+0, R27
;IHMTCV1_0.c,626 :: 		Delay_ms(tempo);
	LDI        R18, 8
	LDI        R17, 27
	LDI        R16, 40
L_main216:
	DEC        R16
	BRNE       L_main216
	DEC        R17
	BRNE       L_main216
	DEC        R18
	BRNE       L_main216
;IHMTCV1_0.c,627 :: 		PINO[9] = PING & (1<<0);
	MOVW       R16, R28
	SUBI       R16, 156
	SBCI       R17, 255
	MOVW       R18, R16
	SUBI       R18, 238
	SBCI       R19, 255
	LDS        R16, PING+0
	ANDI       R16, 1
	MOVW       R30, R18
	ST         Z+, R16
	LDI        R27, 0
	ST         Z+, R27
;IHMTCV1_0.c,630 :: 		case 10:
L_main218:
;IHMTCV1_0.c,631 :: 		PORTE = 0b01010010;
	LDI        R27, 82
	OUT        PORTE+0, R27
;IHMTCV1_0.c,632 :: 		PORTB = 0b00010011;
	LDI        R27, 19
	OUT        PORTB+0, R27
;IHMTCV1_0.c,633 :: 		Delay_ms(tempo);
	LDI        R18, 8
	LDI        R17, 27
	LDI        R16, 40
L_main219:
	DEC        R16
	BRNE       L_main219
	DEC        R17
	BRNE       L_main219
	DEC        R18
	BRNE       L_main219
;IHMTCV1_0.c,634 :: 		PINO[10] = PING & (1<<0);
	MOVW       R16, R28
	SUBI       R16, 156
	SBCI       R17, 255
	MOVW       R18, R16
	SUBI       R18, 236
	SBCI       R19, 255
	LDS        R16, PING+0
	ANDI       R16, 1
	MOVW       R30, R18
	ST         Z+, R16
	LDI        R27, 0
	ST         Z+, R27
;IHMTCV1_0.c,637 :: 		}
	JMP        L_main190
L_main189:
; count start address is: 17 (R17)
	CPI        R18, 0
	BRNE       L__main408
	CPI        R17, 1
L__main408:
	BRNE       L__main409
	JMP        L_main191
L__main409:
	CPI        R18, 0
	BRNE       L__main410
	CPI        R17, 2
L__main410:
	BRNE       L__main411
	JMP        L_main194
L__main411:
	CPI        R18, 0
	BRNE       L__main412
	CPI        R17, 3
L__main412:
	BRNE       L__main413
	JMP        L_main197
L__main413:
	CPI        R18, 0
	BRNE       L__main414
	CPI        R17, 4
L__main414:
	BRNE       L__main415
	JMP        L_main200
L__main415:
	CPI        R18, 0
	BRNE       L__main416
	CPI        R17, 5
L__main416:
	BRNE       L__main417
	JMP        L_main203
L__main417:
	CPI        R18, 0
	BRNE       L__main418
	CPI        R17, 6
L__main418:
	BRNE       L__main419
	JMP        L_main206
L__main419:
	CPI        R18, 0
	BRNE       L__main420
	CPI        R17, 7
L__main420:
	BRNE       L__main421
	JMP        L_main209
L__main421:
	CPI        R18, 0
	BRNE       L__main422
	CPI        R17, 8
L__main422:
	BRNE       L__main423
	JMP        L_main212
L__main423:
	CPI        R18, 0
	BRNE       L__main424
	CPI        R17, 9
L__main424:
	BRNE       L__main425
	JMP        L_main215
L__main425:
	CPI        R18, 0
	BRNE       L__main426
	CPI        R17, 10
L__main426:
	BRNE       L__main427
	JMP        L_main218
L__main427:
; count end address is: 17 (R17)
L_main190:
;IHMTCV1_0.c,639 :: 		for (contador = 1; contador <= 11; contador ++){
; contador start address is: 16 (R16)
	LDI        R16, 1
	LDI        R17, 0
; teste end address is: 20 (R20)
; contador end address is: 16 (R16)
	MOVW       R22, R20
	MOVW       R20, R16
L_main221:
; contador start address is: 20 (R20)
; teste start address is: 22 (R22)
	LDI        R16, 11
	LDI        R17, 0
	CP         R16, R20
	CPC        R17, R21
	BRGE       L__main428
	JMP        L_main222
L__main428:
;IHMTCV1_0.c,641 :: 		if(PINO[contador] != 0){
	MOVW       R18, R28
	SUBI       R18, 156
	SBCI       R19, 255
	MOVW       R16, R20
	LSL        R16
	ROL        R17
	ADD        R16, R18
	ADC        R17, R19
	MOVW       R30, R16
	LD         R16, Z+
	LD         R17, Z+
	CPI        R17, 0
	BRNE       L__main429
	CPI        R16, 0
L__main429:
	BRNE       L__main430
	JMP        L_main224
L__main430:
;IHMTCV1_0.c,643 :: 		teste ++;
	MOVW       R16, R22
	SUBI       R16, 255
	SBCI       R17, 255
	MOVW       R22, R16
;IHMTCV1_0.c,645 :: 		if(teste == 10){
	CPI        R17, 0
	BRNE       L__main431
	CPI        R16, 10
L__main431:
	BREQ       L__main432
	JMP        L_main225
L__main432:
;IHMTCV1_0.c,647 :: 		Lcd_Cmd(_LCD_CLEAR);
	LDI        R27, 1
	MOV        R2, R27
	CALL       _Lcd_Cmd+0
;IHMTCV1_0.c,648 :: 		Lcd_Out(1,5,"Teste OK!");
	LDI        R27, #lo_addr(?lstr23_IHMTCV1_0+0)
	MOV        R4, R27
	LDI        R27, hi_addr(?lstr23_IHMTCV1_0+0)
	MOV        R5, R27
	LDI        R27, 5
	MOV        R3, R27
	LDI        R27, 1
	MOV        R2, R27
	CALL       _Lcd_Out+0
;IHMTCV1_0.c,649 :: 		}
L_main225:
;IHMTCV1_0.c,650 :: 		} else{
	JMP        L_main226
; teste end address is: 22 (R22)
L_main224:
;IHMTCV1_0.c,652 :: 		Lcd_Cmd(_LCD_CLEAR);
	LDI        R27, 1
	MOV        R2, R27
	CALL       _Lcd_Cmd+0
;IHMTCV1_0.c,653 :: 		Lcd_Out(1,1,"FALHA NO TESTE!");
	LDI        R27, #lo_addr(?lstr24_IHMTCV1_0+0)
	MOV        R4, R27
	LDI        R27, hi_addr(?lstr24_IHMTCV1_0+0)
	MOV        R5, R27
	LDI        R27, 1
	MOV        R3, R27
	LDI        R27, 1
	MOV        R2, R27
	CALL       _Lcd_Out+0
;IHMTCV1_0.c,654 :: 		Lcd_Out(2,1,"VIA");
	LDI        R27, #lo_addr(?lstr25_IHMTCV1_0+0)
	MOV        R4, R27
	LDI        R27, hi_addr(?lstr25_IHMTCV1_0+0)
	MOV        R5, R27
	LDI        R27, 1
	MOV        R3, R27
	LDI        R27, 2
	MOV        R2, R27
	CALL       _Lcd_Out+0
;IHMTCV1_0.c,655 :: 		erro = vetorDeErroDFIPM[contador];
	MOVW       R18, R20
	LSL        R18
	ROL        R19
; contador end address is: 20 (R20)
	LDI        R16, #lo_addr(IHMTCV1_0_vetorDeErroDFIPM+0)
	LDI        R17, hi_addr(IHMTCV1_0_vetorDeErroDFIPM+0)
	ADD        R16, R18
	ADC        R17, R19
	MOVW       R30, R16
	LD         R16, Z+
	LD         R17, Z+
	STS        _erro+0, R16
	STS        _erro+1, R17
;IHMTCV1_0.c,656 :: 		IntToStr(erro, txt);
	LDI        R27, #lo_addr(_txt+0)
	MOV        R4, R27
	LDI        R27, hi_addr(_txt+0)
	MOV        R5, R27
	MOVW       R2, R16
	CALL       _IntToStr+0
;IHMTCV1_0.c,657 :: 		Lcd_Out(2,5,txt);
	LDI        R27, #lo_addr(_txt+0)
	MOV        R4, R27
	LDI        R27, hi_addr(_txt+0)
	MOV        R5, R27
	LDI        R27, 5
	MOV        R3, R27
	LDI        R27, 2
	MOV        R2, R27
	CALL       _Lcd_Out+0
;IHMTCV1_0.c,659 :: 		break;
	JMP        L_main222
;IHMTCV1_0.c,660 :: 		}
L_main226:
;IHMTCV1_0.c,639 :: 		for (contador = 1; contador <= 11; contador ++){
; contador start address is: 20 (R20)
; teste start address is: 22 (R22)
	MOVW       R16, R20
	SUBI       R16, 255
	SBCI       R17, 255
	MOVW       R20, R16
;IHMTCV1_0.c,662 :: 		}
; teste end address is: 22 (R22)
; contador end address is: 20 (R20)
	JMP        L_main221
L_main222:
;IHMTCV1_0.c,663 :: 		}
L_main188:
;IHMTCV1_0.c,666 :: 		if(Button (&PIND, 2, 0, 0)){
	CLR        R6
	CLR        R5
	LDI        R27, 2
	MOV        R4, R27
	LDI        R27, #lo_addr(PIND+0)
	MOV        R2, R27
	LDI        R27, hi_addr(PIND+0)
	MOV        R3, R27
	CALL       _Button+0
	TST        R16
	BRNE       L__main433
	JMP        L_main227
L__main433:
;IHMTCV1_0.c,667 :: 		sair++;
	LDS        R16, _sair+0
	LDS        R17, _sair+1
	SUBI       R16, 255
	SBCI       R17, 255
	STS        _sair+0, R16
	STS        _sair+1, R17
;IHMTCV1_0.c,668 :: 		}
L_main227:
;IHMTCV1_0.c,671 :: 		}
	JMP        L_main186
L_main187:
;IHMTCV1_0.c,545 :: 		if(Button (&PIND, 3, 0, 0) && menu == 2) {
L__main279:
L__main278:
;IHMTCV1_0.c,676 :: 		if(Button (&PIND, 3, 0, 0) && menu == 3) {
	CLR        R6
	CLR        R5
	LDI        R27, 3
	MOV        R4, R27
	LDI        R27, #lo_addr(PIND+0)
	MOV        R2, R27
	LDI        R27, hi_addr(PIND+0)
	MOV        R3, R27
	CALL       _Button+0
	TST        R16
	BRNE       L__main434
	JMP        L__main281
L__main434:
	LDS        R16, _menu+0
	LDS        R17, _menu+1
	CPI        R17, 0
	BRNE       L__main435
	CPI        R16, 3
L__main435:
	BREQ       L__main436
	JMP        L__main280
L__main436:
L__main273:
;IHMTCV1_0.c,678 :: 		Lcd_Cmd(_LCD_CLEAR);
	LDI        R27, 1
	MOV        R2, R27
	CALL       _Lcd_Cmd+0
;IHMTCV1_0.c,679 :: 		lcd_Out(1, 5,"Pressione");
	LDI        R27, #lo_addr(?lstr26_IHMTCV1_0+0)
	MOV        R4, R27
	LDI        R27, hi_addr(?lstr26_IHMTCV1_0+0)
	MOV        R5, R27
	LDI        R27, 5
	MOV        R3, R27
	LDI        R27, 1
	MOV        R2, R27
	CALL       _Lcd_Out+0
;IHMTCV1_0.c,680 :: 		lcd_Out(2, 5,"Executar!");
	LDI        R27, #lo_addr(?lstr27_IHMTCV1_0+0)
	MOV        R4, R27
	LDI        R27, hi_addr(?lstr27_IHMTCV1_0+0)
	MOV        R5, R27
	LDI        R27, 5
	MOV        R3, R27
	LDI        R27, 2
	MOV        R2, R27
	CALL       _Lcd_Out+0
;IHMTCV1_0.c,682 :: 		while (sair){
L_main231:
	LDS        R16, _sair+0
	LDS        R17, _sair+1
	MOV        R27, R16
	OR         R27, R17
	BRNE       L__main437
	JMP        L_main232
L__main437:
;IHMTCV1_0.c,684 :: 		int count = 1;
; count start address is: 17 (R17)
	LDI        R17, 1
	LDI        R18, 0
;IHMTCV1_0.c,687 :: 		int contador = 0;
;IHMTCV1_0.c,688 :: 		int teste = 0;
; teste start address is: 20 (R20)
	LDI        R20, 0
	LDI        R21, 0
;IHMTCV1_0.c,689 :: 		buttonEstate = PIND & (1<<0);
	IN         R16, PIND+0
	ANDI       R16, 1
; buttonEstate start address is: 22 (R22)
	MOV        R22, R16
	LDI        R23, 0
;IHMTCV1_0.c,691 :: 		if(buttonEstate == 0){
	CPI        R23, 0
	BRNE       L__main438
	CPI        R22, 0
L__main438:
	BREQ       L__main439
	JMP        L_main233
L__main439:
; buttonEstate end address is: 22 (R22)
;IHMTCV1_0.c,693 :: 		Lcd_Cmd(_LCD_CLEAR);
	PUSH       R18
	PUSH       R17
	LDI        R27, 1
	MOV        R2, R27
	CALL       _Lcd_Cmd+0
;IHMTCV1_0.c,694 :: 		Lcd_Out(1,1,"Executando Teste");
	LDI        R27, #lo_addr(?lstr28_IHMTCV1_0+0)
	MOV        R4, R27
	LDI        R27, hi_addr(?lstr28_IHMTCV1_0+0)
	MOV        R5, R27
	LDI        R27, 1
	MOV        R3, R27
	LDI        R27, 1
	MOV        R2, R27
	CALL       _Lcd_Out+0
;IHMTCV1_0.c,695 :: 		Lcd_Out(2,1,"Aguarde...");
	LDI        R27, #lo_addr(?lstr29_IHMTCV1_0+0)
	MOV        R4, R27
	LDI        R27, hi_addr(?lstr29_IHMTCV1_0+0)
	MOV        R5, R27
	LDI        R27, 1
	MOV        R3, R27
	LDI        R27, 2
	MOV        R2, R27
	CALL       _Lcd_Out+0
	POP        R17
	POP        R18
;IHMTCV1_0.c,696 :: 		switch (count){
	JMP        L_main234
; count end address is: 17 (R17)
;IHMTCV1_0.c,698 :: 		case 1:
L_main236:
;IHMTCV1_0.c,699 :: 		PORTE = 0b01010011;
	LDI        R27, 83
	OUT        PORTE+0, R27
;IHMTCV1_0.c,700 :: 		PORTB = 0b00010011;
	LDI        R27, 19
	OUT        PORTB+0, R27
;IHMTCV1_0.c,701 :: 		Delay_ms(tempo);
	LDI        R18, 8
	LDI        R17, 27
	LDI        R16, 40
L_main237:
	DEC        R16
	BRNE       L_main237
	DEC        R17
	BRNE       L_main237
	DEC        R18
	BRNE       L_main237
;IHMTCV1_0.c,702 :: 		PINO[1] = PING & (1<<0);
	MOVW       R16, R28
	SUBI       R16, 134
	SBCI       R17, 255
	MOVW       R18, R16
	SUBI       R18, 254
	SBCI       R19, 255
	LDS        R16, PING+0
	ANDI       R16, 1
	MOVW       R30, R18
	ST         Z+, R16
	LDI        R27, 0
	ST         Z+, R27
;IHMTCV1_0.c,705 :: 		case 2:
L_main239:
;IHMTCV1_0.c,706 :: 		PORTE = 0b01010100;
	LDI        R27, 84
	OUT        PORTE+0, R27
;IHMTCV1_0.c,707 :: 		PORTB = 0b00010011;
	LDI        R27, 19
	OUT        PORTB+0, R27
;IHMTCV1_0.c,708 :: 		Delay_ms(tempo);
	LDI        R18, 8
	LDI        R17, 27
	LDI        R16, 40
L_main240:
	DEC        R16
	BRNE       L_main240
	DEC        R17
	BRNE       L_main240
	DEC        R18
	BRNE       L_main240
;IHMTCV1_0.c,709 :: 		PINO[2] = PING & (1<<0);
	MOVW       R16, R28
	SUBI       R16, 134
	SBCI       R17, 255
	MOVW       R18, R16
	SUBI       R18, 252
	SBCI       R19, 255
	LDS        R16, PING+0
	ANDI       R16, 1
	MOVW       R30, R18
	ST         Z+, R16
	LDI        R27, 0
	ST         Z+, R27
;IHMTCV1_0.c,712 :: 		case 3:
L_main242:
;IHMTCV1_0.c,713 :: 		PORTE = 0b01010101;
	LDI        R27, 85
	OUT        PORTE+0, R27
;IHMTCV1_0.c,714 :: 		PORTB = 0b00010011;
	LDI        R27, 19
	OUT        PORTB+0, R27
;IHMTCV1_0.c,715 :: 		Delay_ms(tempo);
	LDI        R18, 8
	LDI        R17, 27
	LDI        R16, 40
L_main243:
	DEC        R16
	BRNE       L_main243
	DEC        R17
	BRNE       L_main243
	DEC        R18
	BRNE       L_main243
;IHMTCV1_0.c,716 :: 		PINO[3] = PING & (1<<0);
	MOVW       R16, R28
	SUBI       R16, 134
	SBCI       R17, 255
	MOVW       R18, R16
	SUBI       R18, 250
	SBCI       R19, 255
	LDS        R16, PING+0
	ANDI       R16, 1
	MOVW       R30, R18
	ST         Z+, R16
	LDI        R27, 0
	ST         Z+, R27
;IHMTCV1_0.c,719 :: 		case 4:
L_main245:
;IHMTCV1_0.c,720 :: 		PORTE = 0b01010110;
	LDI        R27, 86
	OUT        PORTE+0, R27
;IHMTCV1_0.c,721 :: 		PORTB = 0b00010011;
	LDI        R27, 19
	OUT        PORTB+0, R27
;IHMTCV1_0.c,722 :: 		Delay_ms(tempo);
	LDI        R18, 8
	LDI        R17, 27
	LDI        R16, 40
L_main246:
	DEC        R16
	BRNE       L_main246
	DEC        R17
	BRNE       L_main246
	DEC        R18
	BRNE       L_main246
;IHMTCV1_0.c,723 :: 		PINO[4] = PING & (1<<0);
	MOVW       R16, R28
	SUBI       R16, 134
	SBCI       R17, 255
	MOVW       R18, R16
	SUBI       R18, 248
	SBCI       R19, 255
	LDS        R16, PING+0
	ANDI       R16, 1
	MOVW       R30, R18
	ST         Z+, R16
	LDI        R27, 0
	ST         Z+, R27
;IHMTCV1_0.c,726 :: 		case 5:
L_main248:
;IHMTCV1_0.c,727 :: 		PORTE = 0b01010111;
	LDI        R27, 87
	OUT        PORTE+0, R27
;IHMTCV1_0.c,728 :: 		PORTB = 0b00010011;
	LDI        R27, 19
	OUT        PORTB+0, R27
;IHMTCV1_0.c,729 :: 		Delay_ms(tempo);
	LDI        R18, 8
	LDI        R17, 27
	LDI        R16, 40
L_main249:
	DEC        R16
	BRNE       L_main249
	DEC        R17
	BRNE       L_main249
	DEC        R18
	BRNE       L_main249
;IHMTCV1_0.c,730 :: 		PINO[5] = PING & (1<<0);
	MOVW       R16, R28
	SUBI       R16, 134
	SBCI       R17, 255
	MOVW       R18, R16
	SUBI       R18, 246
	SBCI       R19, 255
	LDS        R16, PING+0
	ANDI       R16, 1
	MOVW       R30, R18
	ST         Z+, R16
	LDI        R27, 0
	ST         Z+, R27
;IHMTCV1_0.c,733 :: 		case 6:
L_main251:
;IHMTCV1_0.c,734 :: 		PORTE = 0b01010000;
	LDI        R27, 80
	OUT        PORTE+0, R27
;IHMTCV1_0.c,735 :: 		PORTB = 0b00001101;
	LDI        R27, 13
	OUT        PORTB+0, R27
;IHMTCV1_0.c,736 :: 		Delay_ms(tempo);
	LDI        R18, 8
	LDI        R17, 27
	LDI        R16, 40
L_main252:
	DEC        R16
	BRNE       L_main252
	DEC        R17
	BRNE       L_main252
	DEC        R18
	BRNE       L_main252
;IHMTCV1_0.c,737 :: 		PINO[6] = PING & (1<<0);
	MOVW       R16, R28
	SUBI       R16, 134
	SBCI       R17, 255
	MOVW       R18, R16
	SUBI       R18, 244
	SBCI       R19, 255
	LDS        R16, PING+0
	ANDI       R16, 1
	MOVW       R30, R18
	ST         Z+, R16
	LDI        R27, 0
	ST         Z+, R27
;IHMTCV1_0.c,740 :: 		case 7:
L_main254:
;IHMTCV1_0.c,741 :: 		PORTE = 0b01010001;
	LDI        R27, 81
	OUT        PORTE+0, R27
;IHMTCV1_0.c,742 :: 		PORTB = 0b00001101;
	LDI        R27, 13
	OUT        PORTB+0, R27
;IHMTCV1_0.c,743 :: 		Delay_ms(tempo);
	LDI        R18, 8
	LDI        R17, 27
	LDI        R16, 40
L_main255:
	DEC        R16
	BRNE       L_main255
	DEC        R17
	BRNE       L_main255
	DEC        R18
	BRNE       L_main255
;IHMTCV1_0.c,744 :: 		PINO[7] = PING & (1<<0);
	MOVW       R16, R28
	SUBI       R16, 134
	SBCI       R17, 255
	MOVW       R18, R16
	SUBI       R18, 242
	SBCI       R19, 255
	LDS        R16, PING+0
	ANDI       R16, 1
	MOVW       R30, R18
	ST         Z+, R16
	LDI        R27, 0
	ST         Z+, R27
;IHMTCV1_0.c,747 :: 		case 8:
L_main257:
;IHMTCV1_0.c,748 :: 		PORTE = 0b01010010;
	LDI        R27, 82
	OUT        PORTE+0, R27
;IHMTCV1_0.c,749 :: 		PORTB = 0b00001101;
	LDI        R27, 13
	OUT        PORTB+0, R27
;IHMTCV1_0.c,750 :: 		Delay_ms(tempo);
	LDI        R18, 8
	LDI        R17, 27
	LDI        R16, 40
L_main258:
	DEC        R16
	BRNE       L_main258
	DEC        R17
	BRNE       L_main258
	DEC        R18
	BRNE       L_main258
;IHMTCV1_0.c,751 :: 		PINO[8] = PING & (1<<0);
	MOVW       R16, R28
	SUBI       R16, 134
	SBCI       R17, 255
	MOVW       R18, R16
	SUBI       R18, 240
	SBCI       R19, 255
	LDS        R16, PING+0
	ANDI       R16, 1
	MOVW       R30, R18
	ST         Z+, R16
	LDI        R27, 0
	ST         Z+, R27
;IHMTCV1_0.c,754 :: 		case 9:
L_main260:
;IHMTCV1_0.c,755 :: 		PORTE = 0b01010011;
	LDI        R27, 83
	OUT        PORTE+0, R27
;IHMTCV1_0.c,756 :: 		PORTB = 0b00001101;
	LDI        R27, 13
	OUT        PORTB+0, R27
;IHMTCV1_0.c,757 :: 		Delay_ms(tempo);
	LDI        R18, 8
	LDI        R17, 27
	LDI        R16, 40
L_main261:
	DEC        R16
	BRNE       L_main261
	DEC        R17
	BRNE       L_main261
	DEC        R18
	BRNE       L_main261
;IHMTCV1_0.c,758 :: 		PINO[9] = PING & (1<<0);
	MOVW       R16, R28
	SUBI       R16, 134
	SBCI       R17, 255
	MOVW       R18, R16
	SUBI       R18, 238
	SBCI       R19, 255
	LDS        R16, PING+0
	ANDI       R16, 1
	MOVW       R30, R18
	ST         Z+, R16
	LDI        R27, 0
	ST         Z+, R27
;IHMTCV1_0.c,761 :: 		case 10:
L_main263:
;IHMTCV1_0.c,762 :: 		PORTE = 0b01010100;
	LDI        R27, 84
	OUT        PORTE+0, R27
;IHMTCV1_0.c,763 :: 		PORTB = 0b00001101;
	LDI        R27, 13
	OUT        PORTB+0, R27
;IHMTCV1_0.c,764 :: 		Delay_ms(tempo);
	LDI        R18, 8
	LDI        R17, 27
	LDI        R16, 40
L_main264:
	DEC        R16
	BRNE       L_main264
	DEC        R17
	BRNE       L_main264
	DEC        R18
	BRNE       L_main264
;IHMTCV1_0.c,765 :: 		PINO[10] = PING & (1<<0);
	MOVW       R16, R28
	SUBI       R16, 134
	SBCI       R17, 255
	MOVW       R18, R16
	SUBI       R18, 236
	SBCI       R19, 255
	LDS        R16, PING+0
	ANDI       R16, 1
	MOVW       R30, R18
	ST         Z+, R16
	LDI        R27, 0
	ST         Z+, R27
;IHMTCV1_0.c,768 :: 		}
	JMP        L_main235
L_main234:
; count start address is: 17 (R17)
	CPI        R18, 0
	BRNE       L__main440
	CPI        R17, 1
L__main440:
	BRNE       L__main441
	JMP        L_main236
L__main441:
	CPI        R18, 0
	BRNE       L__main442
	CPI        R17, 2
L__main442:
	BRNE       L__main443
	JMP        L_main239
L__main443:
	CPI        R18, 0
	BRNE       L__main444
	CPI        R17, 3
L__main444:
	BRNE       L__main445
	JMP        L_main242
L__main445:
	CPI        R18, 0
	BRNE       L__main446
	CPI        R17, 4
L__main446:
	BRNE       L__main447
	JMP        L_main245
L__main447:
	CPI        R18, 0
	BRNE       L__main448
	CPI        R17, 5
L__main448:
	BRNE       L__main449
	JMP        L_main248
L__main449:
	CPI        R18, 0
	BRNE       L__main450
	CPI        R17, 6
L__main450:
	BRNE       L__main451
	JMP        L_main251
L__main451:
	CPI        R18, 0
	BRNE       L__main452
	CPI        R17, 7
L__main452:
	BRNE       L__main453
	JMP        L_main254
L__main453:
	CPI        R18, 0
	BRNE       L__main454
	CPI        R17, 8
L__main454:
	BRNE       L__main455
	JMP        L_main257
L__main455:
	CPI        R18, 0
	BRNE       L__main456
	CPI        R17, 9
L__main456:
	BRNE       L__main457
	JMP        L_main260
L__main457:
	CPI        R18, 0
	BRNE       L__main458
	CPI        R17, 10
L__main458:
	BRNE       L__main459
	JMP        L_main263
L__main459:
; count end address is: 17 (R17)
L_main235:
;IHMTCV1_0.c,770 :: 		for (contador = 1; contador <= 11; contador ++){
; contador start address is: 16 (R16)
	LDI        R16, 1
	LDI        R17, 0
; teste end address is: 20 (R20)
; contador end address is: 16 (R16)
	MOVW       R22, R20
	MOVW       R20, R16
L_main266:
; contador start address is: 20 (R20)
; teste start address is: 22 (R22)
	LDI        R16, 11
	LDI        R17, 0
	CP         R16, R20
	CPC        R17, R21
	BRGE       L__main460
	JMP        L_main267
L__main460:
;IHMTCV1_0.c,772 :: 		if(PINO[contador] != 0){
	MOVW       R18, R28
	SUBI       R18, 134
	SBCI       R19, 255
	MOVW       R16, R20
	LSL        R16
	ROL        R17
	ADD        R16, R18
	ADC        R17, R19
	MOVW       R30, R16
	LD         R16, Z+
	LD         R17, Z+
	CPI        R17, 0
	BRNE       L__main461
	CPI        R16, 0
L__main461:
	BRNE       L__main462
	JMP        L_main269
L__main462:
;IHMTCV1_0.c,774 :: 		teste ++;
	MOVW       R16, R22
	SUBI       R16, 255
	SBCI       R17, 255
	MOVW       R22, R16
;IHMTCV1_0.c,776 :: 		if(teste == 10){
	CPI        R17, 0
	BRNE       L__main463
	CPI        R16, 10
L__main463:
	BREQ       L__main464
	JMP        L_main270
L__main464:
;IHMTCV1_0.c,778 :: 		Lcd_Cmd(_LCD_CLEAR);
	LDI        R27, 1
	MOV        R2, R27
	CALL       _Lcd_Cmd+0
;IHMTCV1_0.c,779 :: 		Lcd_Out(1,5,"Teste OK!");
	LDI        R27, #lo_addr(?lstr30_IHMTCV1_0+0)
	MOV        R4, R27
	LDI        R27, hi_addr(?lstr30_IHMTCV1_0+0)
	MOV        R5, R27
	LDI        R27, 5
	MOV        R3, R27
	LDI        R27, 1
	MOV        R2, R27
	CALL       _Lcd_Out+0
;IHMTCV1_0.c,780 :: 		}
L_main270:
;IHMTCV1_0.c,781 :: 		} else{
	JMP        L_main271
; teste end address is: 22 (R22)
L_main269:
;IHMTCV1_0.c,783 :: 		Lcd_Cmd(_LCD_CLEAR);
	LDI        R27, 1
	MOV        R2, R27
	CALL       _Lcd_Cmd+0
;IHMTCV1_0.c,784 :: 		Lcd_Out(1,1,"FALHA NO TESTE!");
	LDI        R27, #lo_addr(?lstr31_IHMTCV1_0+0)
	MOV        R4, R27
	LDI        R27, hi_addr(?lstr31_IHMTCV1_0+0)
	MOV        R5, R27
	LDI        R27, 1
	MOV        R3, R27
	LDI        R27, 1
	MOV        R2, R27
	CALL       _Lcd_Out+0
;IHMTCV1_0.c,785 :: 		Lcd_Out(2,1,"VIA");
	LDI        R27, #lo_addr(?lstr32_IHMTCV1_0+0)
	MOV        R4, R27
	LDI        R27, hi_addr(?lstr32_IHMTCV1_0+0)
	MOV        R5, R27
	LDI        R27, 1
	MOV        R3, R27
	LDI        R27, 2
	MOV        R2, R27
	CALL       _Lcd_Out+0
;IHMTCV1_0.c,786 :: 		erro = vetorDeErroModuloIO[contador];
	MOVW       R18, R20
	LSL        R18
	ROL        R19
; contador end address is: 20 (R20)
	LDI        R16, #lo_addr(IHMTCV1_0_vetorDeErroModuloIO+0)
	LDI        R17, hi_addr(IHMTCV1_0_vetorDeErroModuloIO+0)
	ADD        R16, R18
	ADC        R17, R19
	MOVW       R30, R16
	LD         R16, Z+
	LD         R17, Z+
	STS        _erro+0, R16
	STS        _erro+1, R17
;IHMTCV1_0.c,787 :: 		IntToStr(erro, txt);
	LDI        R27, #lo_addr(_txt+0)
	MOV        R4, R27
	LDI        R27, hi_addr(_txt+0)
	MOV        R5, R27
	MOVW       R2, R16
	CALL       _IntToStr+0
;IHMTCV1_0.c,788 :: 		Lcd_Out(2,5,txt);
	LDI        R27, #lo_addr(_txt+0)
	MOV        R4, R27
	LDI        R27, hi_addr(_txt+0)
	MOV        R5, R27
	LDI        R27, 5
	MOV        R3, R27
	LDI        R27, 2
	MOV        R2, R27
	CALL       _Lcd_Out+0
;IHMTCV1_0.c,790 :: 		break;
	JMP        L_main267
;IHMTCV1_0.c,791 :: 		}
L_main271:
;IHMTCV1_0.c,770 :: 		for (contador = 1; contador <= 11; contador ++){
; contador start address is: 20 (R20)
; teste start address is: 22 (R22)
	MOVW       R16, R20
	SUBI       R16, 255
	SBCI       R17, 255
	MOVW       R20, R16
;IHMTCV1_0.c,792 :: 		}
; teste end address is: 22 (R22)
; contador end address is: 20 (R20)
	JMP        L_main266
L_main267:
;IHMTCV1_0.c,793 :: 		}
L_main233:
;IHMTCV1_0.c,795 :: 		if(Button (&PIND, 2, 0, 0)){
	CLR        R6
	CLR        R5
	LDI        R27, 2
	MOV        R4, R27
	LDI        R27, #lo_addr(PIND+0)
	MOV        R2, R27
	LDI        R27, hi_addr(PIND+0)
	MOV        R3, R27
	CALL       _Button+0
	TST        R16
	BRNE       L__main465
	JMP        L_main272
L__main465:
;IHMTCV1_0.c,796 :: 		sair++;
	LDS        R16, _sair+0
	LDS        R17, _sair+1
	SUBI       R16, 255
	SBCI       R17, 255
	STS        _sair+0, R16
	STS        _sair+1, R17
;IHMTCV1_0.c,797 :: 		}
L_main272:
;IHMTCV1_0.c,799 :: 		}
	JMP        L_main231
L_main232:
;IHMTCV1_0.c,676 :: 		if(Button (&PIND, 3, 0, 0) && menu == 3) {
L__main281:
L__main280:
;IHMTCV1_0.c,803 :: 		} while(1);
	JMP        L_main4
;IHMTCV1_0.c,805 :: 		}
L_end_main:
	POP        R6
	POP        R5
	POP        R4
	POP        R3
	POP        R2
L__main_end_loop:
	JMP        L__main_end_loop
; end of _main
