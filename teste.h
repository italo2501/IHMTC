 #define TESTESH

 
  static int testeVias(int contador, int count1, int *PINO, int teste, int numVias, int errov, int *vetErro, int *vetorDeErroModuloCelesc){
 
            for (contador = 1; contador <= numVias; contador ++){

               count1 ++;

                 if(PINO[contador] != 0){

                      teste ++;

                } else{

                       vetErro[errov] = vetorDeErroModuloCelesc[contador];
                       errov ++;

                 }
             }

     return  count1, PINO,  teste,  numVias,  errov, vetErro, vetorDeErroModuloCelesc;
 }
 
 
 
 