// mvp
// modal,data    : data,modal class
// views,screens,ui     : screens/components
// provider,logic,controller : logic
// utils : all global properties

// data + ui + logic = app

// home : modal,view,provider
// cart : modal,view,provider

// modal
// view
// provider :

// atom material icon

// provider

// UI :


// PROVIDER : variable

// hotel : oder --> kitchen

// provider package - pub.dev

// class HomeLogic extend ChangeNotifier (parent class access)
// {
//       int counter = 0;
//
//       void addition()
//       {
//         counter++;
//             notifylistners(), === setState()
//       }
// }

// Object --> addition --> counter++

// HomeLogic h1 = HomeLogic();
// state manage ---> provider
// material app ---> provider
// home -->

// ChangeNotifier(class) --> extends - material/cupertino - built in class
// notifyListners() --> state update - from ChangeNotifier
// ChangeNotifierProvider(Widget) --> provider package - to provide updated state to UI.
// Provider.of(context) - constructor - to access state from logic file
// listen : true --> state update - attribute
// listen : false --> no - method

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_11am/provider/home_provider.dart';
import 'package:provider_11am/views/home_page.dart';


void main()
{
  runApp(const CounterApp());
}


class CounterApp extends StatelessWidget {
  const CounterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => HomeProvider(),
      child: MaterialApp(
        home: HomePage(),
      ),
    );
  }
}















