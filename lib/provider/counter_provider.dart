import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CounterProvider extends ChangeNotifier
{
  // state update
  int counter = 0;
  void updateCounter()
  {
    counter++;
    saveCounter(counter);
    notifyListeners();
  }

  // state save
  Future<void> saveCounter(int value)
  async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    bool status = await sharedPreferences.setInt('counter', value); // 128 gb : 200 : key
    if(status)
      {
        log("Counter saved : $value");
      }
  }

  //state fetch
  Future<void> getCounter()
  async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    counter = sharedPreferences.getInt('counter') ?? 0;
    notifyListeners();
    // ?? null replacement operator
  }

  CounterProvider()
  {
    getCounter();
  }


}
