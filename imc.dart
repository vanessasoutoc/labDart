import 'dart:io';

main(){
  // pegar peso da pessoa
  print('Insira seu peso:');
  var textPeso = stdin.readLineSync();
  var peso = int.parse(textPeso);
  // pegar altura da pessoa
  print('Insira sua altura:');
  var textAltura = stdin.readLineSync();
  var altura = double.parse(textAltura);
  // realizar calculo
  var calc = peso / (altura * altura);
  // retornar imc
  print('O resultado do IMC é:');
  print(calc);

  if(calc < 18.5){
    print('Abaixo do peso');
  } else if(calc > 18.5 && calc < 24.9){
    print('Peso normal');
  } else if(calc > 25 && calc < 29.9){
    print('Sobrepeso');
  } else if(calc > 30 && calc < 34.9){
    print('Obessidade Grau 1');
  } else if(calc > 35 && calc < 39.9){
    print('Obessidade Grau 2');
  } else {
    print('Obessidade Grau 3');
  }

}