import 'dart:io';

main(){

  /* for(int x = 0; x < 10; x++){
    print("rodou $x");
  } */

  bool condicao = true;
  int x = 0;

  /* while(condicao){
    print("rodou $x");
    if(x > 9){
      condicao = false;
    }
    x++;
  } */

  while(condicao){
    print("Escreva um texto: ");
    String texto = stdin.readLineSync();
    if(texto == 'sair'){
      condicao = false;
      print("PROGRAMA FINALIZADO!");
    } else {
      print("Você digitou: $texto");
    }
  }

}