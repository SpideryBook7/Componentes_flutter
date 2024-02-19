import 'package:flutter/material.dart';

class AppTheme {
  // Declaracion de color
  static const mainColor = const Color.fromARGB(3, 3, 3, 3);
  static const blackColor = const Color.fromARGB(3, 3, 3, 3);

  // Declaracion del thema light
  static final ThemeData lightTheme = ThemeData.light().copyWith(
    scaffoldBackgroundColor: blackColor,
    appBarTheme: const AppBarTheme(
      color: Color.fromARGB(3, 3, 3, 3),
    ),
    textTheme: const TextTheme(
      headlineLarge: TextStyle(
        color: Color.fromARGB(198, 3, 3, 3),
        fontSize: 25.0,
        fontWeight: FontWeight.bold,
        fontFamily: 'sans-serif',
      ),
    ),
  );
}
