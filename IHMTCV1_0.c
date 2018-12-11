// Versão: 1.2.0
//
// Autor:
//   * 13/08/2018 <italohcx@gmail.com>
//
//
//
// IHMTCM - Testador de Cabos Microcontrolado
// Copyright: Lupa Tecnologia e Sistemas LTDA 2018.
//


int sair = 1;
int num = 0;
char txt[10];
int erro = 0;
unsigned menu = 0;
int static vetorDeErroCompleto[50] = { 0, 50, 51, 52, 53, 91, 92, 93, 71,
72, 73, 74, 75, 76,60, 61, 62, 63, 30, 31, 32, 33, 34, 35, 36, 37,38, 39, 45, 40, 41, 42, 44, 43, 47,46,49, 48, 94, 96, 98, 77, 77,77, 77, 77, 77, 64, 64, 64 };
int static vetorCaboControle[30] = { 0,50, 51, 52, 53, 91, 92, 93, 71,72, 73, 74, 75, 76,60, 61, 62, 63,94, 96, 98, 77, 77,77, 77, 77, 77, 64, 64, 64};
int static vetorDeErroDFIPM[11] = {0, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39};
int static vetorDeErroModuloIO[11] = {0, 45, 40, 41, 42, 44, 43, 47,46,49, 48};
int static vetorDeErroModuloCelesc[19] = {0, 108, 109, 106, 105, 104, 115, 111, 112, 113, 114, 110, 107, 116, 117, 100, 101, 102, 103};


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

#define ILJINH
#define _STDLIB_INCLUDED_
#define tempo 100
#include "msg.h"
#include "iljin_0.h"
#include "celesc.h"
#include "teste.h"


void main() {


 ////******************************* PORTD2 E BOTÕES DE MENU
  DDRD = DDRD & (~(0<<2)); // BOTÃO PARA CORRER O MENU
  DDRD = DDRD & (~(0<<3)); // BOTÃO PARA SELECIONAR A OPÇÃO
  
////******************************* PORTD0 SENSOR DE PORTA
  DDRD = DDRD & (~(1<<0)); // Sensor de porta

////******************************* PORTA1 MANTEM O RD/RW PARA COMUNICAÇÃO COM O DISPLAY
 DDRA = DDRA | (1 <<1); //RD/RW Didplay
 PORTA = PORTA |(0<<1); //RW Display

////******************************* PORTA3 ACIONA O BACK  DO DISPLAY
 DDRA = DDRA | (1 <<3);  //BACK display
 PORTA = PORTA |(1<<3); //BACk inicializado acesso;

////******************************* PORTG0 SETATDO PARA LEITURA NO Y DOS DEMUX
  DDRG = DDRG & (~(1<<0));  // leitura dos cabos

////******************************* PORTF E PORTB SETAM AS ENTRADAS E SAÍDAS DOS DOS MUX E DEMUX
  DDRE = 0xFF;  // PORT E setado como saída.
  DDRB = 0xFF;  // PORT B setado como saida

////******************************* PORTC PARA LEITURA INDIVIDUAL
  DDRC = DDRC | (1<<0);
  DDRC = DDRC & (~(1<<1));
  DDRC = DDRC & (~(1<<2));
  DDRC = DDRC & (~(1<<3));
  DDRC = DDRC & (~(1<<4));
  DDRC = DDRC & (~(1<<5));
  DDRC = DDRC & (~(1<<6));
  DDRC = DDRC & (~(1<<7));

////******************************* PORTF PARA LEITURA INDIVIDUAL
  DDRF = DDRF  | (1<<0);
  DDRF = DDRF  & (~(1<<1));
  DDRF = DDRF  & (~(1<<2));
  DDRF = DDRF  & (~(1<<3));
  DDRF = DDRF  | (1<<4);  // SAÍDA
  DDRF = DDRF  & (~(1<<5));
  DDRF = DDRF  & (~(1<<6));
  DDRF = DDRF  & (~(1<<7));
  msgInicializacao();

             do{
                     sair--;
                   if(Button (&PIND, 2, 0, 0)){
                         menu++;

                             switch (menu){

                                  case 1:
                                          Lcd_Cmd(_LCD_CLEAR);
                                          lcd_Out(1, 1,"Executar Teste 1");
                                          lcd_Out(2, 1,"COMPLETO (I)");
                                           Delay_ms(200);
                                            break;
                                  case 2:

                                          Lcd_Cmd(_LCD_CLEAR);
                                          lcd_Out(1, 1,"Executar Teste 2");
                                          lcd_Out(2, 1,"CONTROLE (I)");
                                          Delay_ms(200);
                                           break;
                                  
                                  case 3:

                                          Lcd_Cmd(_LCD_CLEAR);
                                          lcd_Out(1, 1,"Executar Teste 3");
                                          lcd_Out(2, 1,"IHM - DFIPM (I)");
                                          Delay_ms(200);
                                           break;
                                  case 4:
                                           Lcd_Cmd(_LCD_CLEAR);
                                           lcd_Out(1, 1,"Executar Teste 4");
                                           lcd_Out(2, 1,"I/0 (I)");
                                           Delay_ms(200);
                                            break;
                                  case 5:
                                           Lcd_Cmd(_LCD_CLEAR);
                                           lcd_Out(1, 1,"Executar Teste 5");
                                           lcd_Out(2, 1,"I/0 (BF)");
                                           Delay_ms(200);
                                            break;
                                   case 6:
                                           Lcd_Cmd(_LCD_CLEAR);
                                           lcd_Out(1, 1,"Executar Teste 6");
                                           lcd_Out(2, 1,"IHM - DFIPM (BF)");
                                           Delay_ms(200);
                                           break;
                                   case 7:
                                         Lcd_Cmd(_LCD_CLEAR);
                                         lcd_Out(1, 1,"Executar Teste 7");
                                         lcd_Out(2, 1,"I/O (T-CELESC)");
                                         Delay_ms(200);
                                         break;

                                   default:
                                          if(menu  == 8){
                                            menu = 0;
                                          }
                            }
                     }
                          //Teste 1 Completo (I)
                     if(Button (&PIND, 3, 0, 0) && menu == 1){
                                    msgExecutar();
                                    
                              while (sair){
                                int count = 1;
                                int buttonEstate;
                                int PINO[50];
                                int contador = 0;
                                int teste = 0;
                                int errov = 1;
                                int vetErro[51];
                                int count1 = 0;
                                int numVias = 49;
                                buttonEstate = PIND & (1<<0);

                              if(buttonEstate == 0){
                                    msgExecutando();
                                    iljiCompleto(count, PINO);
                                   
                                   for (contador = 1; contador <= numVias; contador ++){

                                         count1 ++;

                                       if(PINO[contador] != 0){
                                            teste ++;
                                      } else{
                                          vetErro[errov] = vetorDeErroCompleto[contador];
                                           errov ++;

                                       }
                                   }

                                    if(teste == numVias){

                                        Lcd_Cmd(_LCD_CLEAR);
                                        Lcd_Out(1,5,"Teste OK!");


                                    }else if(errov !=1 && count1 == numVias){
                                        Lcd_Cmd(_LCD_CLEAR);

                                          for (contador = 1; contador <errov; contador ++){
                                                 Lcd_Out(1,1,"FALHA NO TESTE!");
                                                 Lcd_Out(2,1,"VIA:");
                                                 erro = vetErro[contador];
                                                 IntToStr(erro, txt);
                                                 Lcd_Out(2,5,txt);
                                                 Delay_ms (1000);
                                         }
                                  }

                              }
                              if(Button (&PIND, 2, 0, 0)){
                                    sair++;
                              }
                        }
                   }
                   
                    //Teste 2 CONTROLE (I)
                   if(Button (&PIND, 3, 0, 0) && menu == 2) {
                            msgExecutar();
                          while (sair){
                            int count = 1;
                            int buttonEstate;
                            int PINO[29];
                            int vetErro[29];
                            int contador = 0;
                            int teste = 0;
                            int count1 = 0;
                            int errov = 1;
                            int numVias = 29;
                            buttonEstate = PIND & (1<<0);
                            
                           if(buttonEstate == 0){
                               msgExecutando();
                               iljinCaboControle(count,PINO);

                                   for (contador = 1; contador <= 29; contador ++){
                                          count1 ++;
                                  
                                            if(PINO[contador] != 0){
                                            
                                                   teste ++;
                                            
                                            }else{
                                                  vetErro[errov] = vetorCaboControle[contador];
                                                  errov ++;
                                            }
                                  }

                                   if(teste == 29){

                                   Lcd_Cmd(_LCD_CLEAR);
                                   Lcd_Out(1,5,"Teste OK!");
                                   
                                  }else if(errov !=1 && count1 == 29){
                                         Lcd_Cmd(_LCD_CLEAR);
                                 
                                 
                                       for (contador = 1; contador <errov; contador ++){
                                       Lcd_Out(1,1,"FALHA NO TESTE!");
                                       Lcd_Out(2,1,"VIA:");
                                       erro = vetErro[contador];
                                       IntToStr(erro, txt);
                                       Lcd_Out(2,5,txt);
                                       Delay_ms (1000);


                                     }

                                 
                                 }
                           }
                     
                           if(Button (&PIND, 2, 0, 0)){
                               sair++;
                           }
                      }
                   
                   
                   }
                   
                   //Teste 3 IHM - DFIPM (I)
                   if(Button (&PIND, 3, 0, 0) && menu == 3) {
                             msgExecutar();

                            while (sair){
                                   int count = 1;
                                    int buttonEstate;
                                    int PINO[11];
                                    int vetErro[11];
                                    int contador = 0;
                                    int teste = 0;
                                    int count1 = 0;
                                    int errov = 1;
                                    int numVias = 11;
                                    buttonEstate = PIND & (1<<0);

                                    if(buttonEstate == 0){
                                          msgExecutando;
                                              iljinIHM(count, PINO);

                                     for (contador = 1; contador <= 11; contador ++){
                                                 count1 ++;
                                          if(PINO[contador] != 0){
                                              teste ++;
                                          }else{
                                               vetErro[errov] = vetorDeErroDFIPM[contador];
                                               errov ++;
                                           }
                                    }

                                  if(teste == 11){

                                      Lcd_Cmd(_LCD_CLEAR);
                                      Lcd_Out(1,5,"Teste OK!");


                                  }else if(errov !=1 && count1 == 11){
                                      Lcd_Cmd(_LCD_CLEAR);

                                       for (contador = 1; contador <errov; contador ++){
                                             Lcd_Out(1,1,"FALHA NO TESTE!");
                                             Lcd_Out(2,1,"VIA:");
                                             erro = vetErro[contador];
                                             IntToStr(erro, txt);
                                             Lcd_Out(2,5,txt);
                                             Delay_ms (1000);


                                       }
                                   }

                               }

                           if(Button (&PIND, 2, 0, 0)){
                               sair++;
                           }
                      }
                   
                   }
                     //Teste 4 I/O (I)
                     if(Button (&PIND, 3, 0, 0) && menu == 4) {

                        msgExecutar();
                               
                     while (sair){

                          int count = 1;
                          int buttonEstate;
                          int PINO[11];
                          int vetErro[11];
                          int contador = 0;
                          int teste = 0;
                          int errov = 1;
                          int count1 = 0;
                          buttonEstate = PIND & (1<<0);

                             if(buttonEstate == 0){
                               Lcd_Cmd(_LCD_CLEAR);
                               Lcd_Out(1,1,"Executando Teste");
                               Lcd_Out(2,1,"Aguarde...");
                               iljinIO(count, PINO);

                             for (contador = 1; contador <= 11; contador ++){

                                 count1 ++;

                                 if(PINO[contador] != 0){
                                      teste ++;
                                } else{

                                       vetErro[errov] = vetorDeErroModuloIO[contador];
                                       errov ++;
                                   }
                             }

                               if(teste == 11){

                                  Lcd_Cmd(_LCD_CLEAR);
                                  Lcd_Out(1,5,"Teste OK!");


                              }else if(errov !=1 && count1 == 11){
                                  Lcd_Cmd(_LCD_CLEAR);

                                   for (contador = 1; contador <errov; contador ++){
                                         Lcd_Out(1,1,"FALHA NO TESTE!");
                                         Lcd_Out(2,1,"VIA:");
                                         erro = vetErro[contador];
                                         IntToStr(erro, txt);
                                         Lcd_Out(2,5,txt);
                                         Delay_ms (1000);
                                   }
                               }

                         }
                            if(Button (&PIND, 2, 0, 0)){
                                sair++;
                           }
                    }
               
                  }

                  if(Button (&PIND, 3, 0, 0) && menu == 5){
                         msgExecutar();
                  }

                  if(Button (&PIND, 3, 0, 0) && menu == 6){
                        msgExecutar();
                  
                      while (sair){
                          int numVias = 18;
                          int count = 1;
                          int buttonEstate;
                          int PINO[19];
                          int vetErro[19];
                          int contador = 0;
                          int teste = 0;
                          int errov = 1;
                          int count1 = 0;
                          buttonEstate = PIND & (1<<0);
                      
                               if(buttonEstate == 0){
                                    msgExecutando();

                                     celescIO(count, PINO);
                                      
                                     // testeVias( contador, count1, PINO, teste,  numVias,  errov, vetErro, vetorDeErroModuloCelesc);

                                        for (contador = 1; contador <= numVias; contador ++){
                                                 count1 ++;
                                                 
                                             if(PINO[contador] != 0){
                                                  teste ++;
                                             } else{
                                                  vetErro[errov] = vetorDeErroModuloCelesc[contador];
                                                  errov ++;
                                               }
                                        }


                                  if(teste == 18){

                                          Lcd_Cmd(_LCD_CLEAR);
                                          Lcd_Out(1,5,"Teste OK!");


                                  }else if(errov !=1 && count1 == 18){
                                      Lcd_Cmd(_LCD_CLEAR);

                                           for (contador = 1; contador <errov; contador ++){
                                             Lcd_Out(1,1,"FALHA NO TESTE!");
                                             Lcd_Out(2,1,"VIA:");
                                             erro = vetErro[contador];
                                             IntToStr(erro, txt);
                                             Lcd_Out(2,5,txt);
                                             Delay_ms (1000);


                                           }
                                   }
                               
                               }
                      
                                if(Button (&PIND, 2, 0, 0)){
                                  sair++;
                       
                                }

                      }
                  }

             } while(1);

          }