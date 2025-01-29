import 'package:flutter/material.dart';
import '../utils/constants.dart';

class AppTheme {
  static ThemeData get lightTheme {
    return ThemeData(
      // Define the primary and secondary colors
      primaryColor: kColor4,
      scaffoldBackgroundColor: kColor1,

      // Define the color scheme
      colorScheme: ColorScheme.light(
        primary: kColor4,
        secondary: kColor3,
      ),

      // AppBar styling
      appBarTheme: const AppBarTheme(
        backgroundColor: kColor4,
        elevation: 0,
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.white),
        titleTextStyle: TextStyle(
          color: Colors.white,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),

      // BottomAppBar styling
      bottomAppBarTheme: const BottomAppBarTheme(
        color: kColor4,
        elevation: 10,
      ),

      // FloatingActionButton styling
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: kColor3,
        elevation: 6,
      ),

      // ElevatedButton styling
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          foregroundColor: Colors.white,
          backgroundColor: kColor4,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
      ),

      // Text Theme
      textTheme: const TextTheme(
        bodyLarge: TextStyle(color: Colors.black87),
        bodyMedium: TextStyle(color: Colors.black87),
      ),

      // Icon Theme
      iconTheme: const IconThemeData(color: kColor4),

      // BottomNavigationBar Theme
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: kColor4,
        selectedItemColor: kColor3,
        unselectedItemColor: Colors.white70,
        elevation: 20,
        type: BottomNavigationBarType.fixed,
      ),

      visualDensity: VisualDensity.adaptivePlatformDensity,
    );
  }
}
