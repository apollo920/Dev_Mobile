import 'dart:io';

void main() {
  const double taxaDolarParaReal = 5.30;
  const double taxaEuroParaReal = 6.20;
  const double taxaDolarParaEuro = 0.85;

  print('Bem-vindo ao Conversor de Moedas!');
  print('Escolha a moeda de origem:');
  print('1. Real (BRL)');
  print('2. Dólar (USD)');
  print('3. Euro (EUR)');
  final origem = int.parse(stdin.readLineSync()!);

  print('Escolha a moeda de destino:');
  print('1. Real (BRL)');
  print('2. Dólar (USD)');
  print('3. Euro (EUR)');
  final destino = int.parse(stdin.readLineSync()!);

  print('Digite o valor a ser convertido:');
  final valor = double.parse(stdin.readLineSync()!);

  double valorConvertido;

  if (origem == 1 && destino == 2) {
    valorConvertido = valor / taxaDolarParaReal;
  } else if (origem == 1 && destino == 3) {
    valorConvertido = valor / taxaEuroParaReal;
  } else if (origem == 2 && destino == 1) {
    valorConvertido = valor * taxaDolarParaReal;
  } else if (origem == 2 && destino == 3) {
    valorConvertido = valor * taxaDolarParaEuro;
  } else if (origem == 3 && destino == 1) {
    valorConvertido = valor * taxaEuroParaReal;
  } else if (origem == 3 && destino == 2) {
    valorConvertido = valor / taxaDolarParaEuro;
  } else {
    valorConvertido = valor;
  }

  print('O valor convertido é: $valorConvertido');
}