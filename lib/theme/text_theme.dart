import 'package:flutter/material.dart';
class TTextTheme {
  static TextTheme lightTextTheme = const TextTheme(
    headlineLarge: TextStyle(fontSize: 16,color: Colors.red),
  );
  static TextTheme darkTextTheme = const TextTheme(
    headlineLarge: TextStyle(fontSize: 16,color:  Colors.black),
  );

  static TextTheme smallTextTheme = const TextTheme(
    headlineLarge: TextStyle(fontSize: 12,color:  Colors.black),
  );

  static TextTheme largeTextTheme = const TextTheme(
    headlineLarge: TextStyle(fontSize: 18,color:  Colors.black),
  );
}