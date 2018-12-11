  #define MSGH

         void  msgExecutar(){
         
            Lcd_Cmd(_LCD_CLEAR);
            lcd_Out(1, 5,"Pressione");
            lcd_Out(2, 5,"EXECUTAR!");
          }

         void msgInicializacao(){
           Lcd_Init();
           Lcd_Cmd(_LCD_CLEAR);
           Lcd_Cmd(_LCD_CURSOR_OFF);
           Lcd_Out(1,1,"LUPA TECNOLOGIA");
           lcd_Out(2,1,"Inicializando...");
           Delay_ms (2200);
           lcd_Out(2, 1,"Testador V1.2.0");
           Delay_ms (2500);
           Lcd_Cmd(_LCD_CLEAR);
           lcd_Out(1, 1,"Selecionar Teste");
           lcd_Out(2, 1,"Pressione MOD");
         }
         
         void msgExecutando (){
           Lcd_Cmd(_LCD_CLEAR);
           Lcd_Out(1,1,"Executando Teste");
           Lcd_Out(2,1,"Aguarde...");

         }