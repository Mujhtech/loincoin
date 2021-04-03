class Transaction {
  final String type;
  final String wallettype;
  final double amount;
  final String details;
  final String id;
  List<Transaction> transactions;

  Transaction({this.amount, this.details, this.type, this.wallettype, this.id});

  static List<Transaction> fromJson(Map<String, dynamic> json) {
    List<Transaction> transactions = [];
    for (final item in json['transaction']) {
      transactions.add(Transaction(
          type: item['trx_type'],
          id: item['trx'],
          wallettype: item['wallet_type'],
          amount: double.parse(item['amount']),
          details: item['details']));
    }
    return transactions;
  }
}
