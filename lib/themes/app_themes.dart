import 'package:flutter/material.dart';
import 'button_theme.dart';
import 'input_theme.dart';
import 'text_theme.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
    primarySwatch: Colors.indigo,
    brightness: Brightness.light,
    elevatedButtonTheme: CustomButtonTheme.elevatedButtonTheme,
    inputDecorationTheme: CustomInputTheme.inputDecorationTheme,
    textTheme: CustomTextTheme.textTheme,
    // Otros temas generales como el de AppBar, etc.
  );

  static ThemeData darkTheme = ThemeData(
    primarySwatch: Colors.blueGrey,
    brightness: Brightness.dark,
    elevatedButtonTheme: CustomButtonTheme.darkElevatedButtonTheme,
    inputDecorationTheme: CustomInputTheme.darkInputDecorationTheme,
    textTheme: CustomTextTheme.darkTextTheme,
    // Otros temas generales para el modo oscuro
  );
}