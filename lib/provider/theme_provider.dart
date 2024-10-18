import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeProvider extends ChangeNotifier
{
  bool isDark = false;

  void changeTheme(bool value)
  {
    isDark = value;
    setTheme(value);
    notifyListeners();
  }

  Future<void> setTheme(bool value)
  async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    await sharedPreferences.setBool('theme', value);
  }

  // Future<void> getTheme() async {
  //   SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
  //   isDark = sharedPreferences.getBool('theme') ?? false;
  //   notifyListeners();
  // }

  ThemeProvider(bool theme)
  {
    isDark = theme;
    notifyListeners();
  }

  //


}

// state : one type of data,variable, used in UI, and it can change over the time.
// stateless : state management
// stateful : setState

// hot reload : changes, state update
// restart : restart entire app, state clean, update state

// 0 <- state ++ 10
// restart

// counter :0