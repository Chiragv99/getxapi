import 'package:flutter/material.dart';
import 'package:getxapi/theme/text_theme.dart';

class TAppTheme{
  TAppTheme._();

  static ThemeData lightTheme = ThemeData(
    primarySwatch:  Colors.blue,
    brightness: Brightness.light,
    appBarTheme: const AppBarTheme(),
    textTheme: TTextTheme.lightTextTheme
  );

  static ThemeData darkTheme  =  ThemeData(
    primarySwatch: Colors.blue,
    brightness: Brightness.dark,
    textTheme: TTextTheme.darkTextTheme,
    appBarTheme:  const AppBarTheme()
  );

  static ThemeData smallTheme  =  ThemeData(
      primarySwatch: Colors.blue,
      brightness: Brightness.light,
      textTheme: TTextTheme.smallTextTheme,
      appBarTheme:  const AppBarTheme()
  );

  static ThemeData largeTheme  =  ThemeData(
      primarySwatch: Colors.blue,
      brightness: Brightness.light,
      textTheme: TTextTheme.largeTextTheme,
      appBarTheme:  const AppBarTheme()
  );
}