import 'dart:math';
import 'dart:io';

void main() {
  final random = Random();
  final List<String> nomes = [];

  print('Bem-vindo ao Simulador de Sorteio!');
  print('Digite os nomes dos participantes (digite "sair" para finalizar):');

  while (true) {
    final nome = stdin.readLineSync()!;
    if (nome.toLowerCase() == 'sair') {
      break;
    }
    nomes.add(nome);
  }

  if (nomes.isEmpty) {
    print('Nenhum nome foi inserido. O sorteio não pode ser realizado.');
  } else {
    final nomeSorteado = nomes[random.nextInt(nomes.length)];
    print('O nome sorteado é: $nomeSorteado');
  }
}