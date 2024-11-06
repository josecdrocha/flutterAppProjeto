import 'package:flutter/material.dart';
import 'screens/home.dart';
import 'screens/formulario.dart';
import 'screens/listagem.dart';

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
      initialRoute: '/',
      routes: {
        '/': (context) => HomeScreen(),
        '/formulario': (context) => FormularioScreen(),
        '/listagem': (context) => ListagemScreen(
              transactions: [
                {"id": 1, "amount": 100.0},
                {"id": 2, "amount": 200.0},
                {"id": 3, "amount": 50.0}
              ],
            ),
      },
    );
  }
}
