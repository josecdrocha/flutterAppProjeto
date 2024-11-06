// lib/screens/home.dart
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(
                    context, '/formulario'); // Navegar para o formulário
              },
              child: Text('Ir para o Formulário'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(
                    context, '/listagem'); // Navegar para a listagem
              },
              child: Text('Ir para a Listagem'),
            ),
          ],
        ),
      ),
    );
  }
}
