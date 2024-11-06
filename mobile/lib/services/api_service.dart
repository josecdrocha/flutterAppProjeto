import 'package:http/http.dart' as http;
import 'dart:convert';

class TransactionService {
  final http.Client client;

  TransactionService({required this.client});

  Future<List<Map<String, dynamic>>> fetchTransactions(double minAmount) async {
    final response =
        await client.get(Uri.parse('http://localhost:3000/transactions'));

    if (response.statusCode == 200) {
      // Fazendo o decode e garantindo que a lista seja do tipo List<Map<String, dynamic>>
      List<Map<String, dynamic>> transactions =
          List<Map<String, dynamic>>.from(json.decode(response.body));

      // Filtrando as transações maiores que o valor mínimo
      return transactions.where((transaction) {
        return transaction['amount'] > minAmount;
      }).toList(); // Converte o Iterable para List
    } else {
      throw Exception('Failed to load transactions');
    }
  }
}
