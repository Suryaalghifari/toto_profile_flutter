import 'package:flutter/material.dart';
import 'package:toto_profile_flutter/constants/app_colors.dart';
import 'package:toto_profile_flutter/constants/app_text_styles.dart';
import 'package:toto_profile_flutter/ widgets/app_drawer.dart';

class DataDiriPage extends StatelessWidget {
  const DataDiriPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Data Diri', style: AppTextStyles.heading),
        backgroundColor: AppColors.mintGreen,
      ),
      drawer: const AppDrawer(),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const CircleAvatar(
              radius: 60,
              backgroundImage: AssetImage('assets/images/raihan_genjor.png'),
            ),
            const SizedBox(height: 16),
            Text(
              'Raihan Genjor',
              style: AppTextStyles.heading.copyWith(fontSize: 24),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 4),
            Text(
              'Flutter Developer',
              style: AppTextStyles.body.copyWith(
                fontSize: 16,
                color: Colors.grey,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            const Divider(thickness: 1),
            const SizedBox(height: 12),

            // Biodata
            _buildInfoTile(Icons.cake, 'Umur', '21 Tahun'),
            const SizedBox(height: 8),
            _buildInfoTile(Icons.home, 'Alamat', 'Bogor, Indonesia'),
            const SizedBox(height: 8),
            _buildInfoTile(Icons.email, 'Email', 'masrehan@gmail.com'),
            const SizedBox(height: 8),
            _buildInfoTile(Icons.phone, 'Telepon', '+62 812-3456-7890'),

            const SizedBox(height: 20),
            const Divider(thickness: 1),
            const SizedBox(height: 16),

            // Tentang Saya
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Tentang Saya',
                style: AppTextStyles.heading.copyWith(fontSize: 20),
              ),
            ),
            const SizedBox(height: 8),
            RichText(
              textAlign: TextAlign.justify,
              text: TextSpan(
                style: AppTextStyles.body.copyWith(fontSize: 16),
                children: [
                  const TextSpan(text: '👋 Saya seorang '),
                  TextSpan(
                    text: 'Flutter Developer ',
                    style: AppTextStyles.body.copyWith(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  const TextSpan(text: 'yang berfokus pada pengembangan aplikasi mobile modern.\n\n'),
                  const TextSpan(text: '✨ Passion saya adalah membuat aplikasi yang '),
                  TextSpan(
                    text: 'elegan, responsif, dan performa tinggi. ',
                    style: AppTextStyles.body.copyWith(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
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

  // 🛠 Modular untuk item biodata
  Widget _buildInfoTile(IconData icon, String title, String subtitle) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: Icon(icon, color: AppColors.softRed),
      title: Text(title, style: AppTextStyles.body.copyWith(fontWeight: FontWeight.bold)),
      subtitle: Text(subtitle, style: AppTextStyles.body),
    );
  }
}
