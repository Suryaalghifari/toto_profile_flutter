import 'package:flutter/material.dart';
import 'app_colors.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    scaffoldBackgroundColor: Colors.white,
    primaryColor: AppColors.mintGreen,
    appBarTheme: const AppBarTheme(
      backgroundColor: AppColors.mintGreen,
      foregroundColor: Colors.black,
    ),
    textTheme: const TextTheme(
      bodyMedium: TextStyle(color: Colors.black87),
    ),
  );

  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    scaffoldBackgroundColor: Color(0xFF121212), // abu gelap bukan hitam pekat
    primaryColor: AppColors.softRed,
    appBarTheme: const AppBarTheme(
      backgroundColor: AppColors.softRed,
      foregroundColor: Colors.white,
    ),
    textTheme: const TextTheme(
      bodyMedium: TextStyle(color: Colors.white70), // teks jadi abu putih lembut
    ),
  );
}
