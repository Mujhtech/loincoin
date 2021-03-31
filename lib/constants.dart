import 'package:loincoin/models/transaction.dart';
import 'package:shared_preferences/shared_preferences.dart';

enum SystemTheme { System, Dark, Light }

class Constants {
  Future<SharedPreferences> prefs = SharedPreferences.getInstance();
  static String appName = "Loincoin";
}

final List<Transaction> transactionList = [
  Transaction(amount: 30.0, type: "+", details: "Bought 30LC"),
  Transaction(amount: 30.0, type: "-", details: "Bought 30LC"),
  Transaction(amount: 30.0, type: "+", details: "Bought 30LC"),
  Transaction(amount: 30.0, type: "-", details: "Bought 30LC"),
  Transaction(amount: 30.0, type: "+", details: "Bought 30LC"),
  Transaction(amount: 30.0, type: "+", details: "Bought 30LC"),
  Transaction(amount: 30.0, type: "+", details: "Bought 30LC"),
  Transaction(amount: 30.0, type: "-", details: "Bought 30LC"),
  Transaction(amount: 30.0, type: "+", details: "Bought 30LC"),
  Transaction(amount: 30.0, type: "+", details: "Bought 30LC"),
  Transaction(amount: 30.0, type: "+", details: "Bought 30LC"),
  Transaction(amount: 30.0, type: "-", details: "Bought 30LC"),
  Transaction(amount: 30.0, type: "+", details: "Bought 30LC"),
];
