import 'dart:io';

void main() {
  print('Bem-vindo à Calculadora de IMC!');
  print('Digite seu peso (em kg):');
  final peso = double.parse(stdin.readLineSync()!);

  print('Digite sua altura (em metros):');
  final altura = double.parse(stdin.readLineSync()!);

  final imc = calcularIMC(peso, altura);
  final classificacao = classificarIMC(imc);

  print('\nSeu IMC é: ${imc.toStringAsFixed(2)}');
  print('Classificação: $classificacao');
}

double calcularIMC(double peso, double altura) {
  return peso / (altura * altura);
}

String classificarIMC(double imc) {
  if (imc < 18.5) {
    return 'Baixo peso';
  } else if (imc < 24.9) {
    return 'Peso normal';
  } else if (imc < 29.9) {
    return 'Sobrepeso';
  } else {
    return 'Obesidade';
  }
}