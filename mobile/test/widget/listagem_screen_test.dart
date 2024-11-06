import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:academia_app/screens/listagem.dart';

void main() {
  testWidgets('Exibe transações na tela de listagem',
      (WidgetTester tester) async {
    final transactions = [
      {"id": 1, "amount": 100.0},
      {"id": 2, "amount": 200.0},
      {"id": 3, "amount": 50.0}
    ];

    await tester.pumpWidget(MaterialApp(
      home: ListagemScreen(transactions: transactions),
    ));

    // Verificar se os widgets corretos estão sendo exibidos
    expect(find.text('Transação 1'), findsOneWidget);
    expect(find.text('Valor: \$100.0'), findsOneWidget);
    expect(find.text('Transação 2'), findsOneWidget);
    expect(find.text('Valor: \$200.0'), findsOneWidget);
  });
}
