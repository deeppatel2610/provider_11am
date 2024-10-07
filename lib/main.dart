import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_11am/provider/home_provider.dart';
import 'package:provider_11am/provider/theme_provider.dart';
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
      ],
      builder: (context, child) => MaterialApp(
        theme: ThemeData.light(),
        darkTheme: ThemeData.dark(),
        themeMode: Provider.of<ThemeProvider>(context).isDark?ThemeMode.dark:ThemeMode.light,
        home: const HomePage(),
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

