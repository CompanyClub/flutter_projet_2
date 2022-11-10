import 'package:flutter/material.dart';

class InTheme {
  static ThemeData theme(BuildContext context) {
    return ThemeData(
      scaffoldBackgroundColor: Colors.white,

      primaryColor: const Color(0xfff70c36), // These are the color of the ISATI
      primarySwatch: Colors.grey,
      cardColor: Colors.white,

      appBarTheme: const AppBarTheme(
        color: Colors.white,
        iconTheme: IconThemeData(color: Colors.black87),
        elevation: 0,
      ),

      // fontFamily: "Futura Light",
      textTheme: const TextTheme(
        headline1: TextStyle(
            fontSize: 48.0,
            fontWeight: FontWeight.w800,
            fontFamily: "Futura Light",
            color: Colors.black87),
        headline2: TextStyle(
            fontSize: 24.0,
            fontWeight: FontWeight.w300,
            fontFamily: "Futura Light",
            color: Colors.black87),
        // subtitle1: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w800, color: Colors.black87),
        // bodyText1: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w500, color: Colors.black87),
        // bodyText2: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w500, color: Colors.black87),
        // button: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w700,)
      ),

      visualDensity: VisualDensity.adaptivePlatformDensity,
    );
  }
}
