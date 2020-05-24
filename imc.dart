import 'dart:io';

main(){
  calculoImc();
}

calculoImc(){
  // pegar peso da pessoa
  print('Insira seu peso:');
  String textPeso = stdin.readLineSync();
  int peso = int.parse(textPeso);
  // pegar altura da pessoa
  print('Insira sua altura:');
  String textAltura = stdin.readLineSync();
  double altura = double.parse(textAltura);
  // realizar calculo
  double calc = peso / (altura * altura);
  // retornar imc
  print('O resultado do IMC é:');
  print(calc);
  imprimirResultado(calc);
}

imprimirResultado(double calc){
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