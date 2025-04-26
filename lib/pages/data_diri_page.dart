import 'package:flutter/material.dart';
import 'package:toto_profile_flutter/constants/app_colors.dart';
import 'package:toto_profile_flutter/constants/app_text_styles.dart';
import 'package:toto_profile_flutter/ widgets/app_drawer.dart';
import 'package:toto_profile_flutter/utils/responsive.dart';

class DataDiriPage extends StatelessWidget {
  const DataDiriPage({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Data Diri',
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
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Foto Profil
            CircleAvatar(
              radius: getResponsiveSize(context, 60),
              backgroundImage: const AssetImage('assets/images/raihan_genjor.png'),
            ),
            SizedBox(height: getResponsiveSize(context, 16)),

            // Nama
            Text(
              'Raihan Genjor',
              style: AppTextStyles.heading(context).copyWith(
                fontSize: getResponsiveFontSize(context, 24),
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: getResponsiveSize(context, 4)),

            // Role
            Text(
              'Flutter Developer',
              style: AppTextStyles.body(context).copyWith(
                fontSize: getResponsiveFontSize(context, 16),
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: getResponsiveSize(context, 20)),

            const Divider(thickness: 1),
            SizedBox(height: getResponsiveSize(context, 12)),

            // Biodata
            _buildInfoTile(context, Icons.cake, 'Umur', '21 Tahun'),
            SizedBox(height: getResponsiveSize(context, 8)),

            _buildInfoTile(context, Icons.home, 'Alamat', 'Bogor, Indonesia'),
            SizedBox(height: getResponsiveSize(context, 8)),

            _buildInfoTile(context, Icons.email, 'Email', 'masrehan@gmail.com'),
            SizedBox(height: getResponsiveSize(context, 8)),

            _buildInfoTile(context, Icons.phone, 'Telepon', '+62 812-3456-7890'),

            SizedBox(height: getResponsiveSize(context, 20)),
            const Divider(thickness: 1),
            SizedBox(height: getResponsiveSize(context, 16)),

            // Tentang Saya
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Tentang Saya',
                style: AppTextStyles.heading(context).copyWith(
                  fontSize: getResponsiveFontSize(context, 20),
                ),
              ),
            ),
            SizedBox(height: getResponsiveSize(context, 8)),

            RichText(
              textAlign: TextAlign.justify,
              text: TextSpan(
                style: AppTextStyles.body(context).copyWith(
                  fontSize: getResponsiveFontSize(context, 16),
                ),
                children: [
                  const TextSpan(text: '👋 Saya seorang '),
                  TextSpan(
                    text: 'Flutter Developer ',
                    style: AppTextStyles.body(context).copyWith(
                      fontWeight: FontWeight.bold,
                      fontSize: getResponsiveFontSize(context, 16),
                    ),
                  ),
                  const TextSpan(text: 'yang berfokus pada pengembangan aplikasi mobile modern.\n\n'),
                  const TextSpan(text: '✨ Passion saya adalah membuat aplikasi yang '),
                  TextSpan(
                    text: 'elegan, responsif, dan performa tinggi. ',
                    style: AppTextStyles.body(context).copyWith(
                      fontWeight: FontWeight.bold,
                      fontSize: getResponsiveFontSize(context, 16),
                    ),
                  ),
                  const TextSpan(text: '\n\n🚀 Saat ini saya aktif mengembangkan project Flutter dan terus belajar teknologi baru untuk meningkatkan kualitas aplikasi.'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  // 🛠 Modular untuk Biodata
  Widget _buildInfoTile(BuildContext context, IconData icon, String title, String subtitle) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: Icon(
        icon,
        color: AppColors.softRed,
        size: getResponsiveSize(context, 24),
      ),
      title: Text(
        title,
        style: AppTextStyles.body(context).copyWith(
          fontWeight: FontWeight.bold,
          fontSize: getResponsiveFontSize(context, 16),
        ),
      ),
      subtitle: Text(
        subtitle,
        style: AppTextStyles.body(context).copyWith(
          fontSize: getResponsiveFontSize(context, 14),
        ),
      ),
    );
  }
}
