import 'package:flutter/material.dart';
import '../utils/constants.dart';

class AppTheme {
  static ThemeData get lightTheme {
    // A light theme that emphasizes the green color scheme from constants.dart
    return ThemeData(
      primaryColor: kPrimaryColor,
      scaffoldBackgroundColor: kBackgroundColor,
      // This sets up a basic Material ColorScheme based on the primary color
      colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.green).copyWith(
        secondary: kAccentColor, // for FAB, highlight color, etc.
      ),
      // AppBar styling
      appBarTheme: const AppBarTheme(
        backgroundColor: kPrimaryColor,
        elevation: 0,
        centerTitle: true,
      ),
      // BottomAppBar
      bottomAppBarColor: kPrimaryColor,
      // FloatingActionButton
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: kPrimaryColor,
        elevation: 4,
      ),
      // ElevatedButton, OutlinedButton, etc.
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          foregroundColor: Colors.white,
          backgroundColor: kPrimaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
      ),
      textTheme: const TextTheme(
        bodyLarge: TextStyle(color: Colors.black87),
        bodyMedium: TextStyle(color: Colors.black87),
      ),
      visualDensity: VisualDensity.adaptivePlatformDensity,
    );
  }
}
