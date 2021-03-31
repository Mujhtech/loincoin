import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:loincoin/constants.dart';

class AppStateNotifier extends ChangeNotifier {
  //
  String systemTheme;
  static const SHARED_PREF_KEY_THEME = "theme_code";

  void updateTheme(SystemTheme theme) async {
    SharedPreferences prefs = await Constants().prefs;
    prefs.setInt(SHARED_PREF_KEY_THEME, 0);
    notifyListeners();
  }
}
