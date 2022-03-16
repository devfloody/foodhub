import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class colour {
  static const Color orange = Color(0xFFFE724C);
  static const Color yellow = Color(0xFFFFC529);
  static const Color dark = Color(0xFF1A1D26);
  static const Color gray = Color(0xFF9A9FAE);
}

ThemeData customTheme() {
  return ThemeData(
    colorSchemeSeed: colour.orange,
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.transparent,
      elevation: 0,
    ),
    textTheme: TextTheme(
      headline1: GoogleFonts.rubik(
        fontSize: 36,
        fontWeight: FontWeight.w600,
      ),
      headline2: GoogleFonts.rubik(
        fontSize: 30,
        fontWeight: FontWeight.w500,
      ),
      headline3: GoogleFonts.rubik(
        fontSize: 24,
        fontWeight: FontWeight.w500,
      ),
      headline4: GoogleFonts.rubik(
        fontSize: 18,
        fontWeight: FontWeight.w600,
      ),
      headline5: GoogleFonts.rubik(
        fontSize: 16,
        fontWeight: FontWeight.w500,
      ),
      headline6: GoogleFonts.rubik(
        fontSize: 12,
        fontWeight: FontWeight.w400,
      ),
      bodyText1: GoogleFonts.rubik(
        fontSize: 15,
        fontWeight: FontWeight.w400,
      ),
    ),
  );
}
