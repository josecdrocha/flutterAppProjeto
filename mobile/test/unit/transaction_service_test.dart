import 'package:http/http.dart' as http;
import 'dart:convert';

class TransactionService {
  final http.Client client;

  TransactionService({required this.client});

  Future<List<Map<String, dynamic>>> fetchTransactions(double minAmount) async {
    final response =
        await client.get(Uri.parse('http://localhost:3000/transactions'));

    if (response.statusCode == 200) {
      List<Map<String, dynamic>> transactions =
          List<Map<String, dynamic>>.from(json.decode(response.body));

      return transactions.where((transaction) {
        return transaction['amount'] > minAmount;
      }).toList();
    } else {
      throw Exception('Failed to load transactions');
    }
  }
}
