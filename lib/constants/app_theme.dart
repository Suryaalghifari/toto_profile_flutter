import 'package:flutter/material.dart';
import 'app_colors.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    primaryColor: AppColors.mintGreen,
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: const AppBarTheme(
      backgroundColor: AppColors.mintGreen,
      foregroundColor: Colors.black,
      elevation: 0,
      centerTitle: true,
    ),
    iconTheme: const IconThemeData(
      color: Colors.black87,
    ),
    textTheme: const TextTheme(
      bodyMedium: TextStyle(
        color: Colors.black87,
        fontSize: 16,
      ),
      titleLarge: TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.bold,
      ),
    ),
    switchTheme: SwitchThemeData(
      thumbColor: MaterialStateProperty.all(AppColors.softRed),
      trackColor: MaterialStateProperty.all(AppColors.softRed.withOpacity(0.4)),
    ),
    drawerTheme: const DrawerThemeData(
      backgroundColor: Colors.white,
    ),
  );

  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    primaryColor: AppColors.softRed,
    scaffoldBackgroundColor: const Color(0xFF121212), // Abu gelap, bukan hitam pekat
    appBarTheme: const AppBarTheme(
      backgroundColor: AppColors.softRed,
      foregroundColor: Colors.white,
      elevation: 0,
      centerTitle: true,
    ),
    iconTheme: const IconThemeData(
      color: Colors.white,
    ),
    textTheme: const TextTheme(
      bodyMedium: TextStyle(
        color: Colors.white70,
        fontSize: 16,
      ),
      titleLarge: TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold,
      ),
    ),
    switchTheme: SwitchThemeData(
      thumbColor: MaterialStateProperty.all(AppColors.softRed),
      trackColor: MaterialStateProperty.all(AppColors.softRed.withOpacity(0.4)),
    ),
    drawerTheme: DrawerThemeData(
      backgroundColor: Colors.grey[900], // 🌙 Drawer dark mode
    ),
  );
}
