import 'dart:ffi';

import 'package:shared_preferences/shared_preferences.dart';

class Prefs {
  static late SharedPreferences preferences;
  static Future<void> addBool({
    required String key,
    required bool value,
  }) async {
    preferences = await SharedPreferences.getInstance();
    preferences.setBool(key, value);
  }

  static Future<bool> getBool({
    required String key,
  }) async {
    preferences = await SharedPreferences.getInstance();
    return preferences.getBool(key) ?? false;
  }
}
