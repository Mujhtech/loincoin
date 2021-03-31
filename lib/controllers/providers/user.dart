import 'package:flutter/material.dart';
import 'package:loincoin/controllers/api.dart';
import 'package:loincoin/models/transaction.dart';
import 'package:loincoin/models/user.dart';

class UserStateNotifier extends ChangeNotifier {
  //
  bool isLoading = false;
  String errorMessage;
  User user;
  List<Transaction> transactions = [];
  Transaction transaction;
  Api api = Api();

  UserStateNotifier();

  Future<bool> login(String username, String password) async {
    try {
      isLoading = true;
      notifyListeners();
      final result = await api.login(username, password);
      user = User.fromJson(result['user']);
      transactions =
          result['transaction'] != null ? Transaction.fromJson(result) : [];
      isLoading = false;
      notifyListeners();
      return true;
    } catch (e) {
      isLoading = false;
      errorMessage = e.toString();
      notifyListeners();
      return false;
    }
  }

  Future<bool> register(String username, String fullname, String mobile,
      String email, String password, String referral) async {
    try {
      isLoading = true;
      notifyListeners();
      await api.register(username, fullname, mobile, email, password, referral);
      isLoading = false;
      notifyListeners();
      return true;
    } catch (e) {
      isLoading = false;
      errorMessage = e.toString();
      notifyListeners();
      return false;
    }
  }

  Future<bool> sendCoin(String address, double amount) async {
    try {
      await api.send(address, amount);
      await profile();
      notifyListeners();
      return true;
    } catch (e) {
      errorMessage = e.toString();
      notifyListeners();
      return false;
    }
  }

  Future<bool> sellCoin(double amountlc, double amountng) async {
    try {
      await api.sell(amountng, amountlc);
      await profile();
      notifyListeners();
      return true;
    } catch (e) {
      errorMessage = e.toString();
      notifyListeners();
      return false;
    }
  }

  Future<bool> buyCoin(double amountlc, double amountng) async {
    try {
      await api.buy(amountng, amountlc);
      await profile();
      notifyListeners();
      return true;
    } catch (e) {
      errorMessage = e.toString();
      notifyListeners();
      return false;
    }
  }

  Future<bool> profile() async {
    try {
      final result = await api.profile();
      user = User.fromJson(result['user']);
      transactions =
          result['transaction'] != null ? Transaction.fromJson(result) : [];
      notifyListeners();
      return true;
    } catch (e) {
      return false;
    }
  }

  Future<bool> logout() async {
    try {
      await api.logout();
      return true;
    } catch (e) {
      return false;
    }
  }
}
