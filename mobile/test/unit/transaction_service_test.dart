import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:http/http.dart' as http;
import 'package:academia_app/services/transaction_service.dart';

class MockClient extends Mock implements http.Client {}

void main() {
  group('TransactionService', () {
    late TransactionService transactionService;
    late MockClient mockClient;

    setUp(() {
      mockClient = MockClient();
      transactionService = TransactionService(client: mockClient);
    });

    test('Deve filtrar transações acima do valor mínimo', () async {
      final mockResponse = '''
      [
        {"id": 1, "amount": 100.0},
        {"id": 2, "amount": 200.0},
        {"id": 3, "amount": 50.0}
      ]
      ''';

      // Mock da requisição GET
      when(mockClient.get(Uri.parse('http://localhost:3000/transactions')))
          .thenAnswer((_) async => http.Response(mockResponse, 200));

      // Chamar a função com o filtro
      final result = await transactionService.fetchTransactions(100.0);

      // Verificar se as transações com valor superior a 100 foram retornadas
      expect(result.length, 2);
      expect(result[0]['amount'], 200.0);
    });
  });
}
