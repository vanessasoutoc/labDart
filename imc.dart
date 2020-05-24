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
}