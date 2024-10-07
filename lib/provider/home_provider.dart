import 'package:flutter/material.dart';

class HomeProvider extends ChangeNotifier
{
  int counter = 0;

  void increment()
  {
    counter++;
    notifyListeners();
  }

}

// state update --> update state ---> ui
// logic ------ ui
