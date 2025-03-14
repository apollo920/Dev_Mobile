import 'dart:async';
import 'dart:io';

void main() {
  print('Relógio Digital Simples');
  print('Pressione Ctrl+C para sair.');

  Timer.periodic(Duration(seconds: 1), (timer) {
    final agora = DateTime.now();
    final hora = agora.hour.toString().padLeft(2, '0');
    final minuto = agora.minute.toString().padLeft(2, '0');
    final segundo = agora.second.toString().padLeft(2, '0');
    print('$hora:$minuto:$segundo');
  });
}