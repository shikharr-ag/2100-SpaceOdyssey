import 'dart:io' show Platform;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AppNotifier extends ChangeNotifier {
  int _themeMode = 1;

  static bool kIsWeb = kIsWeb;

  static bool kIsFullScreen = kIsWeb;

  AppNotifier() {
    init();
  }

  init() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    int? data = sharedPreferences.getInt("themeMode");
    if (data == null)
      _themeMode = 1;
    else
      _themeMode = data;

    _themeMode = 1;
    notifyListeners();
  }

  int themeMode() => _themeMode;

  Future<void> updateTheme(int themeMode) async {
    this._themeMode = themeMode;
    notifyListeners();

    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.setInt("themeMode", themeMode);
  }
}
