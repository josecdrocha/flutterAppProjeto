// lib/screens/formulario.dart
import 'package:flutter/material.dart';

class FormularioScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Formulário'),
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
                    context, '/listagem'); // Navegar para a Listagem
              },
              child: Text('Ir para a Listagem'),
            ),
          ],
        ),
      ),
    );
  }
}
