
// ui + data + logic = app

import 'package:flutter/material.dart';

class HomeProvider extends ChangeNotifier
{
  List l1 = []; // attribute

  // method(class) - function  = to create functionality - feature
  void addToList()
  {
    l1.add("Avesh");
    notifyListeners();
  }

  void removerFromList(int index)
  {
    l1.removeAt(index);
    notifyListeners();
  }


}

// CRUD - 1 :
