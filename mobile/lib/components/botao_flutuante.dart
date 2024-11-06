import 'package:flutter/material.dart';

class BotaoFlutuante extends StatelessWidget {
  final VoidCallback onPressed;

  BotaoFlutuante({required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: onPressed,
      child: Icon(Icons.add),
    );
  }
}
