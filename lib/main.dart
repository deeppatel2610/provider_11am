import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_11am/provider/counter_provider.dart';
import 'package:provider_11am/provider/home_provider.dart';
import 'package:provider_11am/provider/theme_provider.dart';
import 'package:provider_11am/views/counter_page.dart';
import 'package:provider_11am/views/home_page.dart';

void main()
{
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => HomeProvider(),),
        ChangeNotifierProvider(create: (context) => ThemeProvider(),),
        ChangeNotifierProvider(create: (context) => CounterProvider(),),
      ],
      builder: (context, child) => MaterialApp(
        theme: ThemeData.light(),
        darkTheme: ThemeData.dark(),
        themeMode: Provider.of<ThemeProvider>(context).isDark?ThemeMode.dark:ThemeMode.light,
        home: const CounterPage(),
      ),
    );
  }
}

//p1 - home - p1.price : 120
//p2 - detail - p2.price : 120
//p3 - bill - p3.price : 120 - 20 = 100

// detail - 120
// home - 120
// bill - 100


// class - price - 120/-

// TODO APP  : CRUD Operation : task,description,time (datetime.now())
// ADD
// UPDATE - EDIT
// DELETE
// DISPLAY IN PAGE

// logic(ChangeNotifier-built in: notyfylistner()) --->  provider  ---> ui
//

// core ---> dark/light : dark, internet : local storage

// important ---> dark.light : shared_preferences
// used to store small amount of data in local storage(device).
// bool - true,false
// String - "message"
// double -
// List<String> :
// Flutter : ios,android : device
