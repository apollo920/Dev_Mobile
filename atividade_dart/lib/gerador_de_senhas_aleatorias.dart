import 'dart:math';
import 'dart:io';

void main() {
  final random = Random();
  final letras = 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ';
  final numeros = '0123456789';
  final especiais = '!@#\$%^&*()_+-=[]{}|;:,.<>?';

  print('Bem-vindo ao Gerador de Senhas Aleatórias!');
  print('Digite o tamanho da senha desejada:');
  final tamanho = int.parse(stdin.readLineSync()!);

  print('Deseja incluir caracteres especiais? (s/n)');
  final incluirEspeciais = stdin.readLineSync()!.toLowerCase() == 's';

  String caracteresPermitidos = letras + numeros;
  if (incluirEspeciais) {
    caracteresPermitidos += especiais;
  }

  String senha = '';
  for (int i = 0; i < tamanho; i++) {
    final indice = random.nextInt(caracteresPermitidos.length);
    senha += caracteresPermitidos[indice];
  }

  print('Sua senha gerada é: $senha');
}