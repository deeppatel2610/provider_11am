import 'package:flutter/material.dart';

class AppThemes {
  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    textTheme: const TextTheme(
        bodyLarge: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.black,letterSpacing: 2)
    ),
    colorScheme: const ColorScheme(
      brightness: Brightness.light,
      primary: Colors.blue,
      onPrimary: Colors.white,
      secondary: Colors.green,
      onSecondary: Colors.white,
      error: Colors.red,
      onError: Colors.amber,
      surface: Colors.greenAccent,
      onSurface: Colors.black,
    ),
  );

  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    textTheme: const TextTheme(
      bodyLarge: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.white,letterSpacing: 2)
    ),
    colorScheme: const ColorScheme(
      brightness: Brightness.dark,
      primary: Colors.amber,
      onPrimary: Colors.black,
      secondary: Colors.orange,
      onSecondary: Colors.black,
      error: Colors.red,
      onError: Colors.amber,
      surface: Colors.black45,
      onSurface: Colors.white,
    ),
  );
}
