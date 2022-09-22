// ignore_for_file: deprecated_member_use
// ignore: depend_on_referenced_packages
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTheme {
  static ThemeData lightTheme(BuildContext context) => ThemeData(
      primarySwatch: Colors.deepPurple,
      fontFamily: GoogleFonts.poppins().fontFamily,
      canvasColor: creamColor,
      buttonColor: darkBluishColor,
      accentColor: darkBluishColor,
      cardColor: Colors.white,
      appBarTheme: const AppBarTheme(
        color: Colors.white,
        elevation: 0.0,
        iconTheme: IconThemeData(color: Colors.black),
      ));

  static ThemeData darkTheme(BuildContext context) => ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.deepPurple,
        fontFamily: GoogleFonts.poppins().fontFamily,
        canvasColor: creamColorVersionDark,
        buttonColor: darkBluishColorVersionLight,
        accentColor: Colors.white,
        cardColor: Colors.black,
        appBarTheme: const AppBarTheme(
          color: Colors.black,
          elevation: 0.0,
          iconTheme: IconThemeData(color: Colors.white),
        ),
      );

  static Color creamColor = const Color(0xfff5f5f5);
  static Color creamColorVersionDark = Colors.grey.shade900;
  static Color darkBluishColor = const Color(0xff403b58);
  static Color darkBluishColorVersionLight = Colors.indigo.shade500;
}
