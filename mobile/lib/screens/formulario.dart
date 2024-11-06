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
                Navigator.pushNamed(context, '/');
              },
              child: Text('Ir para a Home'),
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
