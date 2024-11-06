import 'package:flutter/material.dart';
import 'screens/home.dart'; // Corrigido para home.dart
import 'screens/formulario.dart'; // Se você for usar essa tela
import 'screens/listagem.dart'; // Se você for usar essa tela

void main() {
  runApp(AcademiaApp());
}

class AcademiaApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Academia App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: '/', // Tela inicial
      routes: {
        '/': (context) => HomeScreen(), // Rota para a tela home
        '/formulario': (context) =>
            FormularioScreen(), // Rota para o formulário
        '/listagem': (context) => ListagemScreen(), // Rota para a listagem
      },
    );
  }
}
