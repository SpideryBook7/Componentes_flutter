import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  // Declaracion de color
  static const lightColor = Color.fromARGB(255, 255, 255, 255);
  static const blackColor = Color.fromARGB(198, 3, 3, 3);
  static const accentcolor = Color.fromARGB(197, 184, 39, 228);

  // Declaracion del thema light
  static final ThemeData lightTheme = ThemeData.light().copyWith(
    scaffoldBackgroundColor: blackColor,
    appBarTheme: AppBarTheme(
      color: blackColor,
      titleTextStyle: GoogleFonts.adamina(
        color: blackColor,
        fontSize: 28.5,
        fontWeight: FontWeight.bold,
      ),
    ),
    iconTheme: const IconThemeData(
      color: blackColor,
      size: 29.0,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(accentcolor),
        foregroundColor: MaterialStateProperty.all(
          blackColor,
        ),
        textStyle: MaterialStateProperty.all(
          GoogleFonts.adamina(color: blackColor),
        ),
      ),
    ),
    textTheme: TextTheme(
      headlineLarge: GoogleFonts.adamina(
        color: blackColor,
        fontSize: 25.0,
        fontWeight: FontWeight.w600,
        decoration: TextDecoration.underline,
        decorationColor: Color.fromARGB(255, 0, 200, 255),
        decorationStyle: TextDecorationStyle.dotted,
        decorationThickness: 3.0,
      ),
      bodySmall: GoogleFonts.mPlus1(
        color: blackColor,
        fontSize: 19.0,
        fontWeight: FontWeight.bold,
        fontStyle: FontStyle.italic,
      ),
    ),
  );
}
