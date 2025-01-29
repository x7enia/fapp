// lib/themes/app_theme.dart
import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData get lightTheme {
    return ThemeData(
      primarySwatch: Colors.green,
      scaffoldBackgroundColor: const Color(0xFFF5F5F5),
      visualDensity: VisualDensity.adaptivePlatformDensity,
    );
  }
}
