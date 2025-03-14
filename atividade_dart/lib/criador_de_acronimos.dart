import 'dart:io';

void main() {
  print('Bem-vindo ao Criador de Acrônimos!');
  print('Digite uma frase:');
  final frase = stdin.readLineSync()!;

  final acronimo = criarAcronimo(frase);
  print('\nAcrônimo gerado: $acronimo');
}

String criarAcronimo(String frase) {
  final palavras = frase.split(' ');
  final acronimo = palavras.map((palavra) => palavra[0].toUpperCase()).join();
  return acronimo;
}