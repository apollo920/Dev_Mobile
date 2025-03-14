import 'dart:io';
import 'dart:math';

void main() {
  final random = Random();
  final opcoes = ['Pedra', 'Papel', 'Tesoura'];

  print('Bem-vindo ao Jogo "Pedra, Papel e Tesoura"!');

  while (true) {
    print('\nEscolha uma opção:');
    print('1. Pedra');
    print('2. Papel');
    print('3. Tesoura');
    print('4. Sair');
    final escolhaUsuario = int.parse(stdin.readLineSync()!);

    if (escolhaUsuario == 4) {
      print('Obrigado por jogar!');
      break;
    }

    if (escolhaUsuario < 1 || escolhaUsuario > 3) {
      print('Opção inválida. Tente novamente.');
      continue;
    }

    final escolhaComputador = random.nextInt(3) + 1;
    final usuario = opcoes[escolhaUsuario - 1];
    final computador = opcoes[escolhaComputador - 1];

    print('\nVocê escolheu: $usuario');
    print('O computador escolheu: $computador');

    if (usuario == computador) {
      print('Empate!');
    } else if ((usuario == 'Pedra' && computador == 'Tesoura') ||
               (usuario == 'Papel' && computador == 'Pedra') ||
               (usuario == 'Tesoura' && computador == 'Papel')) {
      print('Você venceu!');
    } else {
      print('Você perdeu!');
    }
  }
}