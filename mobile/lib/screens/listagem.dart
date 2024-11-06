// lib/screens/listagem.dart
import 'package:flutter/material.dart';

class ListagemScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Listagem'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/'); // Navegar para a Home
              },
              child: Text('Ir para a Home'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(
                    context, '/formulario'); // Navegar para o Formulário
              },
              child: Text('Ir para o Formulário'),
            ),
          ],
        ),
      ),
    );
  }
}
