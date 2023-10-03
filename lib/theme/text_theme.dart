import 'package:flutter/material.dart';
class TTextTheme {
  static TextTheme lightTextTheme = const TextTheme(
    headline2: TextStyle(fontSize: 16,color: Colors.red),
  );
  static TextTheme darkTextTheme = const TextTheme(
    headline2: TextStyle(fontSize: 16,color:  Colors.black),
  );

  static TextTheme smallTextTheme = const TextTheme(
    headline2: TextStyle(fontSize: 12,color:  Colors.black),
  );

  static TextTheme largeTextTheme = const TextTheme(
    headline2: TextStyle(fontSize: 18,color:  Colors.black),
  );
}