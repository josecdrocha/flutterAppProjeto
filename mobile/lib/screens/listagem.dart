import 'package:flutter/material.dart';

class ListagemScreen extends StatelessWidget {
  final List<Map<String, dynamic>> transactions;

  ListagemScreen({Key? key, required this.transactions}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Listagem de Transações'),
      ),
      body: ListView.builder(
        itemCount: transactions.length,
        itemBuilder: (context, index) {
          final transaction = transactions[index];
          return ListTile(
            title: Text('Transação ${transaction['id']}'),
            subtitle: Text('Valor: \$${transaction['amount']}'),
          );
        },
      ),
    );
  }
}
