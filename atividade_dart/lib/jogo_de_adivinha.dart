import 'dart:math';
import 'dart:io';

void main() {
  final random = Random();
  final numeroSecreto = random.nextInt(100) + 1;
  int tentativas = 0;
  int palpite;

  print('Bem-vindo ao Jogo de Adivinhação!');
  print('Tente adivinhar o número secreto entre 1 e 100.');

  do {
    print('Digite seu palpite: ');
    palpite = int.parse(stdin.readLineSync()!);
    tentativas++;

    if (palpite < numeroSecreto) {
      print('O número secreto é maior que $palpite.');
    } else if (palpite > numeroSecreto) {
      print('O número secreto é menor que $palpite.');
    } else {
      print('Parabéns! Você acertou o número secreto $numeroSecreto em $tentativas tentativas.');
    }
  } while (palpite != numeroSecreto);
}