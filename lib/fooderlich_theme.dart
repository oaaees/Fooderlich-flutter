import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FooderlichTheme {
  // 1
  static TextTheme lightTextTheme = TextTheme(
    bodyLarge: GoogleFonts.roboto(
      fontSize: 14.0,
      fontWeight: FontWeight.w300,
      color: Colors.black,
    ),
    displayLarge: GoogleFonts.roboto(
      fontSize: 32.0,
      fontWeight: FontWeight.w300,
      color: Colors.black,
    ),
    displayMedium: GoogleFonts.roboto(
      fontSize: 21.0,
      fontWeight: FontWeight.w300,
      color: Colors.black,
    ),
    displaySmall: GoogleFonts.roboto(
      fontSize: 16.0,
      fontWeight: FontWeight.w100,
      color: Colors.black,
    ),
    titleLarge: GoogleFonts.roboto(
      fontSize: 20.0,
      fontWeight: FontWeight.w100,
      color: Colors.black,
    ),
  );

  // 2
  static TextTheme darkTextTheme = TextTheme(
    bodyLarge: GoogleFonts.roboto(
      fontSize: 14.0,
      fontWeight: FontWeight.w300,
      color: Colors.white,
    ),
    displayLarge: GoogleFonts.roboto(
      fontSize: 32.0,
      fontWeight: FontWeight.w300,
      color: Colors.white,
    ),
    displayMedium: GoogleFonts.roboto(
      fontSize: 21.0,
      fontWeight: FontWeight.w300,
      color: Colors.white,
    ),
    displaySmall: GoogleFonts.roboto(
      fontSize: 16.0,
      fontWeight: FontWeight.w100,
      color: Colors.white,
    ),
    titleLarge: GoogleFonts.roboto(
      fontSize: 20.0,
      fontWeight: FontWeight.w100,
      color: Colors.white,
    ),
  );

  // 3
  static ThemeData light() {
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.light,
      checkboxTheme: CheckboxThemeData(
        fillColor: MaterialStateColor.resolveWith(
          (states) {
            return Colors.black;
          },
        ),
      ),
      appBarTheme: const AppBarTheme(
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
      ),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        foregroundColor: Colors.white,
        backgroundColor: Colors.black,
      ),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        selectedItemColor: Colors.green,
      ),
      textTheme: lightTextTheme,
    );
  }

  // 4
  static ThemeData dark() {
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.dark,
      appBarTheme: AppBarTheme(
        foregroundColor: Colors.white,
        backgroundColor: Colors.grey[900],
      ),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        foregroundColor: Colors.white,
        backgroundColor: Colors.green,
      ),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        selectedItemColor: Colors.green,
      ),
      textTheme: darkTextTheme,
    );
  }
}