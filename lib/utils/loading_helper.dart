import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:toto_profile_flutter/constants/app_colors.dart';

class LoadingHelper {
  // 🔥 1. Loading + Navigate ke Page Baru
  static Future<void> showLoadingThenNavigate({
    required BuildContext context,
    required Widget page,
    int milliseconds = 800, // default 0.8 detik delay
  }) async {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) {
        return Center(
          child: LoadingAnimationWidget.flickr(
            leftDotColor: AppColors.softRed, // 🔴
            rightDotColor: AppColors.mintGreen, // 🟢
            size: 80,
          ),
        );
      },
    );

    await Future.delayed(Duration(milliseconds: milliseconds));
    Navigator.of(context).pop(); // tutup loading
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (_) => page),
    );
  }

  // 🔥 2. Loading Only (Tidak Navigasi) → Untuk Dark Mode Switch
  static Future<void> showLoadingOnly({
    required BuildContext context,
    int milliseconds = 500, // default 0.5 detik delay
  }) async {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) {
        return Center(
          child: LoadingAnimationWidget.flickr(
            leftDotColor: AppColors.softRed,
            rightDotColor: AppColors.mintGreen,
            size: 80,
          ),
        );
      },
    );

    await Future.delayed(Duration(milliseconds: milliseconds));
    Navigator.of(context).pop(); // hanya tutup loading, tidak navigasi
  }
}
