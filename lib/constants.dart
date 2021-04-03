import 'package:flutter/material.dart';
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

Widget getTransactionIcon(type) {
  if (type == "+") {
    return ClipOval(
      child: Material(
        color: Color(0xFFAAF3C8), // button color
        child: SizedBox(
            width: 20,
            height: 20,
            child: Center(
              child: Text('+', style: TextStyle(color: Color(0xFF27DF44))),
            )),
      ),
    );
  } else {
    return ClipOval(
      child: Material(
        color: Color(0xFFF3AAAA), // button color
        child: SizedBox(
            width: 20,
            height: 20,
            child: Center(
              child: Text('-', style: TextStyle(color: Color(0xFFF04F4F))),
            )),
      ),
    );
  }
}

Widget getTransactionAmount(type, wallet, amount) {
  if (wallet == "deposit_wallet") {
    return Flexible(
      child: Text(
        type == "+" ? "+ NGN $amount" : "- NGN $amount",
        overflow: TextOverflow.ellipsis,
        style: TextStyle(color: type == "+" ? Colors.green : Colors.red),
      ),
    );
  } else {
    return Flexible(
      child: Text(
        type == "+" ? "+ $amount LC" : "- $amount LC",
        overflow: TextOverflow.ellipsis,
        style: TextStyle(color: type == "+" ? Colors.green : Colors.red),
      ),
    );
  }
}
