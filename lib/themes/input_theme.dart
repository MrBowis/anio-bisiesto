import 'package:flutter/material.dart';

class CustomInputTheme {
  static final InputDecorationTheme inputDecorationTheme = InputDecorationTheme(
    border: const OutlineInputBorder(),
    focusedBorder: const OutlineInputBorder(
      borderSide: BorderSide(color: Colors.greenAccent, width: 2.0),
    ),
    labelStyle: const TextStyle(color: Colors.grey),
    floatingLabelStyle: const TextStyle(color: Colors.indigoAccent),
  );

  static final InputDecorationTheme darkInputDecorationTheme =
      InputDecorationTheme(
    border: const OutlineInputBorder(borderSide: BorderSide(color: Colors.white70)),
    focusedBorder: const OutlineInputBorder(
      borderSide: BorderSide(color: Colors.cyanAccent, width: 2.0),
    ),
    labelStyle: const TextStyle(color: Colors.white60),
    floatingLabelStyle: const TextStyle(color: Colors.blueAccent),
  );
}