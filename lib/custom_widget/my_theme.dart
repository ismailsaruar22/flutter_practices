import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTheme {
  static Color LogInButtonColor = Colors.purple.shade900;
  static Color SignUpButtonColor = Colors.green.shade900;

  static ThemeData lightTheme(BuildContext context) => ThemeData(
      canvasColor: Colors.white,
      fontFamily: GoogleFonts.poppins().fontFamily,
      colorScheme: ColorScheme(
          primary: Colors.black,
          primaryVariant: Colors.black87,
          secondary: Colors.black87,
          secondaryVariant: Colors.black87,
          surface: Colors.cyan.shade50,
          background: Colors.cyan.shade100,
          error: Colors.red,
          onPrimary: Colors.white,
          onSecondary: Colors.black,
          onSurface: Colors.black,
          onBackground: Colors.black,
          onError: Colors.red,
          brightness: Brightness.light));
  static ThemeData darkTheme(BuildContext context) => ThemeData(
      canvasColor: Colors.black,
      fontFamily: GoogleFonts.poppins().fontFamily,
      colorScheme: ColorScheme(
          primary: Colors.white,
          primaryVariant: Colors.white,
          secondary: Colors.white,
          secondaryVariant: Colors.white,
          surface: Colors.cyan.shade50,
          background: Colors.cyan.shade100,
          error: Colors.red,
          onPrimary: Colors.white,
          onSecondary: Colors.black,
          onSurface: Colors.black,
          onBackground: Colors.black,
          onError: Colors.red,
          brightness: Brightness.dark));
}
