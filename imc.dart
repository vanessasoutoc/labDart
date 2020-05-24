import 'dart:io';

main(){
  calculoImc();
}

// recebe os dados e calcular o imc
calculoImc(){
  // pegar peso da pessoa
  print('Insira seu peso:');
  String textPeso = stdin.readLineSync();
  int peso = int.parse(textPeso);
  // pegar altura da pessoa
  print('Insira sua altura:');
  String textAltura = stdin.readLineSync();
  double altura = double.parse(textAltura);
  // realizar imculo
  double imc = calcImc(peso, altura);
  // retornar imc
  print('O resultado do IMC é:');
  print(imc);
  imprimirResultado(imc);
}

// calculo do imc
double calcImc(int peso, double altura){
  return peso / (altura * altura);
}

// retorna resultado do imc na tela do usuário
imprimirResultado(double imc){
  if(imc < 18.5){
    print('Abaixo do peso');
  } else if(imc > 18.5 && imc < 24.9){
    print('Peso normal');
  } else if(imc > 25 && imc < 29.9){
    print('Sobrepeso');
  } else if(imc > 30 && imc < 34.9){
    print('Obessidade Grau 1');
  } else if(imc > 35 && imc < 39.9){
    print('Obessidade Grau 2');
  } else {
    print('Obessidade Grau 3');
  }
}