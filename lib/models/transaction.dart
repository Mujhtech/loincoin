class Transaction {
  final String type;
  final double amount;
  final String details;
  List<Transaction> transactions;

  Transaction({this.amount, this.details, this.type});

  static List<Transaction> fromJson(Map<String, dynamic> json) {
    List<Transaction> transactions = [];
    for (final item in json['transaction']) {
      transactions.add(Transaction(
          type: item['type'],
          amount: item['amount'],
          details: item['details']));
    }
    return transactions;
  }
}
