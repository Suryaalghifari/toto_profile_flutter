import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart'; // <<< tambahkan ini
import 'app_colors.dart';

class AppTextStyles {
  static final TextStyle heading = GoogleFonts.poppins(
    fontSize: 24,
    fontWeight: FontWeight.bold,
    color: AppColors.textPrimary,
  );

  static final TextStyle body = GoogleFonts.poppins(
    fontSize: 18,
    color: AppColors.textPrimary,
  );

  static final TextStyle drawerTitle = GoogleFonts.poppins(
    fontSize: 20,
    color: AppColors.white,
  );
}
