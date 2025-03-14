import 'dart:io';

class ContaBancaria {
  double saldo = 0;

  void depositar(double valor) {
    saldo += valor;
    print('Depósito de R\$ $valor realizado. Saldo atual: R\$ $saldo');
  }

  void sacar(double valor) {
    if (valor > saldo) {
      print('Saldo insuficiente.');
    } else {
      saldo -= valor;
      print('Saque de R\$ $valor realizado. Saldo atual: R\$ $saldo');
    }
  }

  void consultarSaldo() {
    print('Saldo atual: R\$ $saldo');
  }
}

void main() {
  final conta = ContaBancaria();

  print('Bem-vindo ao Simulador de Conta Bancária!');

  while (true) {
    print('\nEscolha uma operação:');
    print('1. Depositar');
    print('2. Sacar');
    print('3. Consultar saldo');
    print('4. Sair');
    final opcao = int.parse(stdin.readLineSync()!);

    switch (opcao) {
      case 1:
        print('Digite o valor para depósito:');
        final valor = double.parse(stdin.readLineSync()!);
        conta.depositar(valor);
        break;
      case 2:
        print('Digite o valor para saque:');
        final valor = double.parse(stdin.readLineSync()!);
        conta.sacar(valor);
        break;
      case 3:
        conta.consultarSaldo();
        break;
      case 4:
        print('Saindo...');
        return;
      default:
        print('Opção inválida. Tente novamente.');
    }
  }
}