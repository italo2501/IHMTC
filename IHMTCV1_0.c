// Versão: 1.0.0
//
// Autor:
//   * 13/08/2018 <italohcx@gmail.com>
//
//
//
// IHMTCM - Testador de Cabos Microcontrolado
// Copyright: Lupa Tecnologia e Sistemas LTDA 2018.
//


unsigned short kp, cnt, oldstate = 0;
int num = 0;
char txt[10];

// Initialize PORTB for communication with keypad
char keypadPort at PORTC;

// Port direction
char  keypadPort_Direction at DDRC;




// LCD module connections
sbit LCD_RS at PORTA0_bit;
sbit LCD_EN at PORTA2_bit;
sbit LCD_D4 at PORTA4_bit;
sbit LCD_D5 at PORTA5_bit;
sbit LCD_D6 at PORTA6_bit;
sbit LCD_D7 at PORTA7_bit;

sbit LCD_RS_Direction at DDA0_bit;
sbit LCD_EN_Direction at DDA2_bit;
sbit LCD_D4_Direction at DDA4_bit;
sbit LCD_D5_Direction at DDA5_bit;
sbit LCD_D6_Direction at DDA6_bit;
sbit LCD_D7_Direction at DDA7_bit;
// End LCD module connection

#define _STDLIB_INCLUDED_
#define tempo 50
#define  numVias 40

void main() {
DDRD = DDRD & (~(1<<0)); // Sensor de porta
DDRA = DDRA | (1 <<3);  //BACK display
DDRA = DDRA | (1 <<1); //RD/RW Didplay
PORTA = PORTA |(1<<3); //BACk inicializado acesso;
PORTA = PORTA |(0<<1); //RW Display
PORTD = PORTD |(0<<0); // local remoto como pull up  ou tristate
DDRG = DDRG & (~(1<<0));  // leitura dos cabos
DDRE = 0XFF;  // PORT E setado como saída.
DDRB = 0XFF;  // PORT B setado como saida
Lcd_Init();
Lcd_Cmd(_LCD_CLEAR);
Lcd_Cmd(_LCD_CURSOR_OFF);
Lcd_Out(1,1,"LUPA TECNOLOGIA");
lcd_Out(2,1,"Inicializando...");
Delay_ms (2200);
lcd_Out(2, 1,"Testador V0.0.1");


        while (1){
              int count = 1;
              int buttonEstate;
              int PINO[numVias+1];
              int contador = 0;
              int teste = 0;
              buttonEstate = PIND & (1<<0);


         if(buttonEstate == 0){
         
               Lcd_Cmd(_LCD_CLEAR);
               Lcd_Out(1,1,"Executando Teste");

                switch (count){

                   case 1:
                         Lcd_Out(2,1,"PINO 1");
                         PORTB = 0b00010101;
                         PORTE = 0b01001000;
                         Delay_ms(tempo);
                         PINO[1] = PING & (1<<0);
                         count++;

                   case 2:

                         Lcd_Out(2,1,"PINO 2");
                         PORTE = 0b01001001;
                         Delay_ms(tempo);
                         PINO[2] = PING & (1<<0);
                         count++;


                   case 3:
                         Lcd_Out(2,1,"PINO 3");
                         PORTE = 0b01001010;
                         Delay_ms(tempo);
                         PINO[3] = PING & (1<<0);
                         count++;


                   case 4:
                         Lcd_Out(2,1,"PINO 4");
                         PORTE = 0b01001011;
                         Delay_ms(tempo);
                         PINO[4] = PING & (1<<0);
                         count++;

                   case 5:
                         Lcd_Out(2,1,"PINO 5");
                         PORTE = 0b01001100;
                         Delay_ms(tempo);
                         PINO[5] = PING & (1<<0);
                         count++;

                   case 6:
                         Lcd_Out(2,1,"PINO 6");
                         PORTE = 0b01001101;
                         Delay_ms(tempo);
                         PINO[6] = PING & (1<<0);
                         count++;

                   case 7:
                         Lcd_Out(2,1,"PINO 7");
                         PORTE = 0b01001110;
                         Delay_ms(tempo);
                         PINO[7] = PING & (1<<0);
                         count++;

                   case 8:
                         Lcd_Out(2,1,"PINO 8");
                         PORTE = 0b01001111;
                         Delay_ms(tempo);
                         PINO[8] = PING & (1<<0);
                         count++;

                   case 9:
                         Lcd_Out(2,1,"PINO 9");
                         PORTE = 0b00110000;
                         Delay_ms(tempo);
                         PINO[9] = PING & (1<<0);
                         count++;
                         
                   case 10:
                         Lcd_Out(2,1,"PINO 10");
                         PORTE = 0b00110001;
                         Delay_ms(tempo);
                         PINO[10] = PING & (1<<0);
                         count++;

                   case 11:
                         Lcd_Out(2,1,"PINO 11");
                         PORTE = 0b00110010;
                         Delay_ms(tempo);
                         PINO[11] = PING & (1<<0);
                         count++;

                   case 12:
                         Lcd_Out(2,1,"PINO 12");
                         PORTE = 0b00110011;
                         Delay_ms(tempo);
                         PINO[12] = PING & (1<<0);
                         count++;

                    case 13:
                         Lcd_Out(2,1,"PINO 13");
                         PORTE = 0b00110100;
                         Delay_ms(tempo);
                         PINO[13] = PING & (1<<0);
                         count++;

                    case 14:
                         Lcd_Out(2,1,"PINO 14");
                         PORTE = 0b00110101;
                         Delay_ms(tempo);
                         PINO[14] = PING & (1<<0);
                         count++;

                    case 15:
                         Lcd_Out(2,1,"PINO 15");
                         PORTE = 0b00110110;
                         Delay_ms(tempo);
                         PINO[15] = PING & (1<<0);
                         count++;

                    case 16:
                         Lcd_Out(2,1,"PINO 16");
                         PORTE = 0b00110111;
                         Delay_ms(tempo);
                         PINO[16] = PING & (1<<0);
                         count++;

                   case 17:
                         Lcd_Out(2,1,"PINO 17");
                         PORTE = 0b11010000;
                         PORTB = 0b00010100;
                         Delay_ms(tempo);
                         PINO[17] = PING & (1<<0);
                         count++;

                   case 18:
                         Lcd_Out(2,1,"PINO 18");
                         PORTE = 0b11010001;
                         PORTB = 0b00010100;
                         Delay_ms(tempo);
                         PINO[18] = PING & (1<<0);
                         count++;

                   case 19:
                         Lcd_Out(2,1,"PINO 19");
                         PORTE = 0b11010010;
                         PORTB = 0b00010100;
                         Delay_ms(tempo);
                         PINO[19] = PING & (1<<0);
                         count++;
                   
                   case 20:
                         Lcd_Out(2,1,"PINO 20");
                         PORTE = 0b11010011;
                         PORTB = 0b00010100;
                         Delay_ms(tempo);
                         PINO[20] = PING & (1<<0);
                         count++;

                    case 21:
                         Lcd_Out(2,1,"PINO 21");
                         PORTE = 0b11010100;
                         PORTB = 0b00010100;
                         Delay_ms(tempo);
                         PINO[21] = PING & (1<<0);
                         count++;

                   case 22:
                         Lcd_Out(2,1,"PINO 22");
                         PORTE = 0b11010101;
                         PORTB = 0b00010100;
                         Delay_ms(tempo);
                         PINO[22] = PING & (1<<0);
                         count++;
                   
                   case 23:
                         Lcd_Out(2,1,"PINO 23");
                         PORTE = 0b11010110;
                         PORTB = 0b00010100;
                         Delay_ms(tempo);
                         PINO[23] = PING & (1<<0);
                         count++;
                   
                   case 24:
                         Lcd_Out(2,1,"PINO 24");
                         PORTE = 0b11010111;
                         PORTB = 0b00010100;
                         Delay_ms(tempo);
                         PINO[24] = PING & (1<<0);
                         count++;

                   case 25:
                         Lcd_Out(2,1,"PINO 25");
                         PORTE = 0b01010000;
                         PORTB = 0b00010011;
                         Delay_ms(tempo);
                         PINO[25] = PING & (1<<0);
                         count++;
                   
                   case 26:
                         Lcd_Out(2,1,"PINO 26");
                         PORTE = 0b01010001;
                         PORTB = 0b00010011;
                         Delay_ms(tempo);
                         PINO[26] = PING & (1<<0);
                         count++;
                   
                   case 27:
                         Lcd_Out(2,1,"PINO 27");
                         PORTE = 0b01010010;
                         PORTB = 0b00010011;
                         Delay_ms(tempo);
                         PINO[27] = PING & (1<<0);
                         count++;
                   
                   case 28:
                         Lcd_Out(2,1,"PINO 28");
                         PORTE = 0b01010011;
                         PORTB = 0b00010011;
                         Delay_ms(tempo);
                         PINO[28] = PING & (1<<0);
                         count++;
                    
                   case 29:
                         Lcd_Out(2,1,"PINO 29");
                         PORTE = 0b01010100;
                         PORTB = 0b00010011;
                         Delay_ms(tempo);
                         PINO[29] = PING & (1<<0);
                         count++;

                    case 30:
                         Lcd_Out(2,1,"PINO 30");
                         PORTE = 0b01010101;
                         PORTB = 0b00010011;
                         Delay_ms(tempo);
                         PINO[30] = PING & (1<<0);
                         count++;

                    case 31:
                         Lcd_Out(2,1,"PINO 31");
                         PORTE = 0b01010110;
                         PORTB = 0b00010011;
                         Delay_ms(tempo);
                         PINO[31] = PING & (1<<0);
                         count++;

                    case 32:
                         Lcd_Out(2,1,"PINO 32");
                         PORTE = 0b01010111;
                         PORTB = 0b00010011;
                         Delay_ms(tempo);
                         PINO[32] = PING & (1<<0);
                         count++;

                    case 33:
                         Lcd_Out(2,1,"PINO 33");
                         PORTE = 0b01010000;
                         PORTB = 0b00001101;
                         Delay_ms(tempo);
                         PINO[33] = PING & (1<<0);
                         count++;
                         
                    case 34:
                         Lcd_Out(2,1,"PINO 34");
                         PORTE = 0b01010001;
                         PORTB = 0b00001101;
                         Delay_ms(tempo);
                         PINO[34] = PING & (1<<0);
                         count++;
                         
                    case 35:
                         Lcd_Out(2,1,"PINO 35");
                         PORTE = 0b01010010;
                         PORTB = 0b00001101;
                         Delay_ms(tempo);
                         PINO[35] = PING & (1<<0);
                         count++;
                   
                   case 36:
                         Lcd_Out(2,1,"PINO 36");
                         PORTE = 0b01010011;
                         PORTB = 0b00001101;
                         Delay_ms(tempo);
                         PINO[36] = PING & (1<<0);
                         count++;
                   
                   case 37:
                         Lcd_Out(2,1,"PINO 37");
                         PORTE = 0b01010100;
                         PORTB = 0b00001101;
                         Delay_ms(tempo);
                         PINO[37] = PING & (1<<0);
                         count++;

                   case 38:
                         Lcd_Out(2,1,"PINO 38");
                         PORTE = 0b01010101;
                         PORTB = 0b00001101;
                         Delay_ms(tempo);
                         PINO[38] = PING & (1<<0);
                         count++;
                         
                   case 39:
                         Lcd_Out(2,1,"PINO 39");
                         PORTE = 0b01010110;
                         PORTB = 0b00001101;
                         Delay_ms(tempo);
                         PINO[39] = PING & (1<<0);
                         count++;
                         
                    case 40:
                         Lcd_Out(2,1,"PINO 40");
                         PORTE = 0b01010111;
                         PORTB = 0b00001101;
                         Delay_ms(tempo);
                         PINO[40] = PING & (1<<0);
                         count++;

                  }
                       
                       for (contador = 1; contador <= numVias; contador ++){

                                   if(PINO[contador] != 0){
                                           teste ++;
                                        
                                          if(teste == numVias){
                                            Lcd_Cmd(_LCD_CLEAR);
                                            Lcd_Out(1,5,"TESTE OK!");
                                           }

                                  } else{
                                        Lcd_Cmd(_LCD_CLEAR);
                                        Lcd_Out(1,1,"FALHA NO TESTE!");
                                        Lcd_Out(2,1,"PINO");
                                        IntToStr(contador,txt);
                                        Lcd_Out(2,5,txt);
                                        break;
                                 }
                      }

           }
      }
}