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
                Navigator.pushNamed(context, '/formulario');
              },
              child: Text('Ir para o Formulário'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/listagem');
              },
              child: Text('Ir para a Listagem'),
            ),
          ],
        ),
      ),
    );
  }
}
