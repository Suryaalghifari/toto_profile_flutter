import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'app_colors.dart';

class AppTextStyles {
  // Heading
  static TextStyle heading(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    return GoogleFonts.poppins(
      fontSize: 24,
      fontWeight: FontWeight.bold,
      color: isDark ? Colors.white : AppColors.textPrimary, // 🔥 adaptif
    );
  }

  // Body Text
  static TextStyle body(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    return GoogleFonts.poppins(
      fontSize: 18,
      color: isDark ? Colors.white70 : AppColors.textPrimary, // 🔥 adaptif
    );
  }

  // Drawer Title (biasanya background sudah colored, tetap putih)
  static TextStyle drawerTitle() {
    return GoogleFonts.poppins(
      fontSize: 20,
      color: AppColors.white,
    );
  }
}
