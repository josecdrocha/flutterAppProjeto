import 'package:flutter/material.dart';
import '../models/exercicio.dart';

class ExercicioCard extends StatelessWidget {
  final Exercicio exercicio;

  ExercicioCard({required this.exercicio});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(exercicio.nome),
        subtitle: Text(exercicio.descricao),
      ),
    );
  }
}
