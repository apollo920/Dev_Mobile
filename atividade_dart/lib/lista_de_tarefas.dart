import 'dart:io';

void main() {
  final List<String> tarefas = [];

  print('Bem-vindo ao Gerenciador de Tarefas!');

  while (true) {
    print('\nEscolha uma opção:');
    print('1. Adicionar tarefa');
    print('2. Remover tarefa concluída');
    print('3. Exibir lista de tarefas');
    print('4. Sair');
    final opcao = int.parse(stdin.readLineSync()!);

    switch (opcao) {
      case 1:
        print('Digite a nova tarefa:');
        final tarefa = stdin.readLineSync()!;
        tarefas.add(tarefa);
        print('Tarefa adicionada com sucesso!');
        break;
      case 2:
        if (tarefas.isEmpty) {
          print('A lista de tarefas está vazia.');
        } else {
          print('Lista de tarefas:');
          for (int i = 0; i < tarefas.length; i++) {
            print('${i + 1}. ${tarefas[i]}');
          }
          print('Digite o número da tarefa concluída para removê-la:');
          final indice = int.parse(stdin.readLineSync()!) - 1;
          if (indice >= 0 && indice < tarefas.length) {
            final tarefaRemovida = tarefas.removeAt(indice);
            print('Tarefa "$tarefaRemovida" removida com sucesso!');
          } else {
            print('Índice inválido.');
          }
        }
        break;
      case 3:
        if (tarefas.isEmpty) {
          print('A lista de tarefas está vazia.');
        } else {
          print('Lista de tarefas:');
          for (int i = 0; i < tarefas.length; i++) {
            print('${i + 1}. ${tarefas[i]}');
          }
        }
        break;
      case 4:
        print('Saindo do sistema...');
        return;
      default:
        print('Opção inválida. Tente novamente.');
    }
  }
}