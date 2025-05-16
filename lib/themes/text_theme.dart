import 'package:flutter/material.dart';

class CustomTextTheme {
  static final TextTheme textTheme = const TextTheme(
    headlineLarge: TextStyle(fontSize: 32.0, fontWeight: FontWeight.bold, color: Colors.black87),
    headlineSmall: TextStyle(fontSize: 24.0, fontWeight: FontWeight.w500, color: Colors.black54),
    bodyLarge: TextStyle(fontSize: 16.0, color: Colors.black87),
    bodyMedium: TextStyle(fontSize: 14.0, color: Colors.black54),
  );

  static final TextTheme darkTextTheme = const TextTheme(
    headlineLarge: TextStyle(fontSize: 32.0, fontWeight: FontWeight.bold, color: Colors.white),
    headlineSmall: TextStyle(fontSize: 24.0, fontWeight: FontWeight.w500, color: Colors.white70),
    bodyLarge: TextStyle(fontSize: 16.0, color: Colors.white),
    bodyMedium: TextStyle(fontSize: 14.0, color: Colors.white70),
  );
}