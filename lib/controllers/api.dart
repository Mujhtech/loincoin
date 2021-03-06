import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:loincoin/controllers/http_exception.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:loincoin/constants.dart';

class Api {
  static const baseUrl = 'https://loincoin.org/api';
  final client = http.Client();

  Future<Map<String, dynamic>> setting() async {
    final url = Uri.parse('$baseUrl/setting');
    Map<String, String> jsonHeader = {
      "Accept": "application/json",
      "Content-Type": "application/json",
    };
    final res = await client.get(
      url,
      headers: jsonHeader,
    );
    final data = json.decode(res.body);
    if (res.statusCode != 200) {
      throw HTTPException(res.statusCode, data["message"]);
    }
    return data['setting'];
  }

  Future<Map<String, dynamic>> login(String username, String password) async {
    final url = Uri.parse('$baseUrl/auth/login');
    final SharedPreferences prefs = await Constants().prefs;
    Map<String, String> jsonHeader = {
      "Accept": "application/json",
      "Content-Type": "application/json",
    };
    final res = await client.post(url,
        headers: jsonHeader,
        body: json.encode({'username': '$username', 'password': '$password'}));
    final data = json.decode(res.body);
    if (res.statusCode != 200) {
      throw HTTPException(res.statusCode, data["message"]);
    }
    prefs.setString("token", data['access_token']);
    return data;
  }

  Future<Map<String, dynamic>> register(String username, String fullname,
      String mobile, String email, String password,
      [String referral = "Mujhtech"]) async {
    final url = Uri.parse('$baseUrl/auth/register');
    Map<String, String> jsonHeader = {
      "Accept": "application/json",
      "Content-Type": "application/json",
    };
    Map<String, String> body = {
      'username': '$username',
      'fullname': '$fullname',
      'email': '$email',
      'mobile': '$mobile',
      'referral': '$referral',
      'password': '$password'
    };
    print(json.encode(body));
    final res =
        await client.post(url, headers: jsonHeader, body: json.encode(body));
    final data = json.decode(res.body);
    //print(data);
    if (res.statusCode != 200) {
      throw HTTPException(res.statusCode, data["message"]);
    }

    return data["data"];
  }

  Future<Map<String, dynamic>> profile() async {
    final SharedPreferences prefs = await Constants().prefs;
    final url = Uri.parse('$baseUrl/auth/profile');
    Map<String, String> jsonHeader = {
      "Accept": "application/json",
      "Content-Type": "application/json",
      "Authorization": "Bearer ${prefs.getString('token')}"
    };
    final res = await client.get(url, headers: jsonHeader);
    final data = json.decode(res.body);
    //print(data);
    if (res.statusCode != 200) {
      throw HTTPException(res.statusCode, data["message"]);
    }
    return data;
  }

  Future<bool> logout() async {
    final SharedPreferences prefs = await Constants().prefs;
    final url = Uri.parse('$baseUrl/auth/logout');
    print(prefs.getString('token'));
    Map<String, String> jsonHeader = {
      "Accept": "application/json",
      "Content-Type": "application/json",
      "Authorization": "Bearer ${prefs.getString('token')}"
    };
    final res = await client.get(url, headers: jsonHeader);
    final data = json.decode(res.body);
    //print(data);
    if (res.statusCode != 200) {
      throw HTTPException(res.statusCode, data["message"]);
    }
    return true;
  }

  Future<Map<String, dynamic>> send(String address, double amount) async {
    final SharedPreferences prefs = await Constants().prefs;
    final url = Uri.parse('$baseUrl/send');
    print(prefs.getString('token'));
    Map<String, String> jsonHeader = {
      "Accept": "application/json",
      "Content-Type": "application/json",
      "Authorization": "Bearer ${prefs.getString('token')}"
    };
    final res = await client.post(url,
        headers: jsonHeader,
        body: json.encode({
          'address': '$address',
          'amount': '$amount',
          'wallet_type': 'interest_wallet'
        }));
    final data = json.decode(res.body);
    //print(data);
    if (res.statusCode != 200) {
      throw HTTPException(res.statusCode, data["message"]);
    }

    return data["data"];
  }

  Future<Map<String, dynamic>> buy(double amountngn, double amountlc) async {
    final SharedPreferences prefs = await Constants().prefs;
    final url = Uri.parse('$baseUrl/buy');
    Map<String, String> jsonHeader = {
      "Accept": "application/json",
      "Content-Type": "application/json",
      "Authorization": "Bearer ${prefs.getString('token')}"
    };
    final res = await client.post(url,
        headers: jsonHeader,
        body: json.encode({
          'amountlc': '${amountlc.toStringAsFixed(2)}',
          'amountngn': '${amountngn.toStringAsFixed(2)}',
          'wallet_type': 'deposit_wallet'
        }));
    final data = json.decode(res.body);
    //print(data);
    if (res.statusCode != 200) {
      throw HTTPException(res.statusCode, data["message"]);
    }

    return data["data"];
  }

  Future<Map<String, dynamic>> sell(double amountngn, double amountlc) async {
    final SharedPreferences prefs = await Constants().prefs;
    final url = Uri.parse('$baseUrl/sell');
    Map<String, String> jsonHeader = {
      "Accept": "application/json",
      "Content-Type": "application/json",
      "Authorization": "Bearer ${prefs.getString('token')}"
    };
    final res = await client.post(url,
        headers: jsonHeader,
        body: json.encode({
          'amountlc': '${amountlc.toStringAsFixed(2)}',
          'amountngn': '${amountngn.toStringAsFixed(2)}',
          'wallet_type': 'interest_wallet'
        }));
    final data = json.decode(res.body);
    if (res.statusCode != 200) {
      throw HTTPException(res.statusCode, data["message"]);
    }

    return data["data"];
  }

  Future<Map<String, dynamic>> withdraw(double amount) async {
    final SharedPreferences prefs = await Constants().prefs;
    final url = Uri.parse('$baseUrl/withdraw');
    Map<String, String> jsonHeader = {
      "Accept": "application/json",
      "Content-Type": "application/json",
      "Authorization": "Bearer ${prefs.getString('token')}"
    };
    final res = await client.post(url,
        headers: jsonHeader,
        body: json
            .encode({'amount': '$amount', 'wallet_type': 'deposit_wallet'}));
    final data = json.decode(res.body);
    if (res.statusCode != 200) {
      throw HTTPException(res.statusCode, data["message"]);
    }

    return data["data"];
  }
}
