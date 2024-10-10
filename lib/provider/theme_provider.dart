import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier
{
  bool isDark = false;

  void changeTheme(bool value)
  {
    isDark = value;
    notifyListeners();
  }

}

// state : one type of data,variable, used in UI, and it can change over the time.
// stateless : state management
// stateful : setState

// hot reload : changes, state update
// restart : restart entire app, state clean, update state

// 0 <- state ++ 10
// restart

// counter :0