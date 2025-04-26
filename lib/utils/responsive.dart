import 'package:flutter/material.dart';

// Helper untuk FontSize
double getResponsiveFontSize(BuildContext context, double baseFontSize) {
  double screenWidth = MediaQuery.of(context).size.width;
  return baseFontSize * (screenWidth / 375); // 375 = standar iPhone 11/12
}

// Helper untuk Padding Horizontal
double getResponsivePadding(BuildContext context, double basePadding) {
  double screenWidth = MediaQuery.of(context).size.width;
  return basePadding * (screenWidth / 375);
}

// Helper untuk Ukuran Umum (Contoh Border Radius, Icon Size)
double getResponsiveSize(BuildContext context, double baseSize) {
  double screenWidth = MediaQuery.of(context).size.width;
  return baseSize * (screenWidth / 375);
}
