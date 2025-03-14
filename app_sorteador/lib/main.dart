import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(AppSorteador());
}

class AppSorteador extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App Sorteador',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: TelaSorteio(),
    );
  }
}

class TelaSorteio extends StatefulWidget {
  @override
  _TelaSorteioState createState() => _TelaSorteioState();
}

class _TelaSorteioState extends State<TelaSorteio> {
  // Lista de nomes pré-definida
  List<String> nomes = [
    'Ana',
    'Bruno',
    'Carlos',
    'Daniela',
    'Eduardo',
    'Fernanda',
    'Gustavo',
    'Helena',
    'Igor',
    'Juliana',
  ];

  String nomeSorteado = '';

  void _sortearNome() {
    if (nomes.isNotEmpty) {
      final random = Random();
      final indiceSorteado = random.nextInt(nomes.length);
      setState(() {
        nomeSorteado = nomes[indiceSorteado];
        // Remove o nome sorteado da lista
        nomes.removeAt(indiceSorteado);
      });
    } else {
      setState(() {
        nomeSorteado = 'Todos os nomes foram sorteados!';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('App Sorteador'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: nomes.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(nomes[index]),
                  );
                },
              ),
            ),
            SizedBox(height: 20),
            Text(
              nomeSorteado.isNotEmpty ? 'Nome sorteado: $nomeSorteado' : '',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _sortearNome,
              child: Text('Sortear'),
            ),
          ],
        ),
      ),
    );
  }
}