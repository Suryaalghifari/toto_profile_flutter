import 'package:flutter/material.dart';
import 'package:toto_profile_flutter/constants/app_colors.dart';
import 'package:toto_profile_flutter/constants/app_text_styles.dart';
import 'package:toto_profile_flutter/ widgets/app_drawer.dart'; // ✅ Fix typo import
import 'package:toto_profile_flutter/ widgets/expandable_project_card.dart'; // ✅ Import expandable project
import 'package:toto_profile_flutter/utils/responsive.dart'; // ✅ Import helper responsive

class PengalamanPage extends StatelessWidget {
  const PengalamanPage({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Pengalaman Kerja',
          style: AppTextStyles.heading(context).copyWith(
            fontSize: getResponsiveFontSize(context, 22),
          ),
        ),
        backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
      ),
      drawer: const AppDrawer(),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(
          horizontal: getResponsivePadding(context, 20),
          vertical: getResponsivePadding(context, 16),
        ),
        child: Column(
          children: const [
            // ✨ Project Cards dengan ExpandableProjectCard

            ExpandableProjectCard(
              imagePath: 'assets/images/project/dashboard.png',
              projectName: 'Phone Store Dashboard',
              projectType: 'Personal Project',
              years: '2024',
              description:
              'Membangun dashboard toko HP menggunakan HTML, CSS, dan JavaScript. '
                  'Menampilkan grafik penjualan, kategori produk, dan tabel pelanggan secara real-time.',
            ),
            SizedBox(height: 16),

            ExpandableProjectCard(
              imagePath: 'assets/images/project/form_login.png',
              projectName: 'Login Page - Mobile Legends',
              projectType: 'UI Clone Project',
              years: '2024',
              description:
              'Mendesain ulang halaman login Mobile Legends: Magic Chess menggunakan HTML & CSS. '
                  'Fokus pada layout, UI centering, dan tampilan modern responsif.',
            ),
            SizedBox(height: 16),

            ExpandableProjectCard(
              imagePath: 'assets/images/project/kalkulator.png',
              projectName: 'Kalkulator Web',
              projectType: 'Mini Project',
              years: '2023',
              description:
              'Membangun kalkulator interaktif menggunakan HTML, CSS, dan JavaScript. '
                  'Mendukung operasi matematika dasar dengan desain clean dan tombol animasi.',
            ),
            SizedBox(height: 16),

            ExpandableProjectCard(
              imagePath: 'assets/images/project/tetris.png',
              projectName: 'Tetris Game (Python)',
              projectType: 'Kolaborasi',
              years: '2023',
              description:
              'Membangun game klasik Tetris menggunakan Python dan Pygame. '
                  'Menampilkan skor, level, dan UI sederhana. '
                  'Dibuat bersama: Muhamad Surya Al Ghifari.',
            ),
          ],
        ),
      ),
    );
  }
}
