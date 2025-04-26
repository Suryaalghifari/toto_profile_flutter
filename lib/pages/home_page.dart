import 'package:flutter/material.dart';
import 'package:toto_profile_flutter/constants/app_colors.dart';
import 'package:toto_profile_flutter/constants/app_text_styles.dart';
import 'package:toto_profile_flutter/ widgets/animated_card.dart'; // <<< Import ini!
import 'package:toto_profile_flutter/ widgets/app_drawer.dart';
import 'package:toto_profile_flutter/pages/data_diri_page.dart';
import 'package:toto_profile_flutter/pages/pendidikan_page.dart';
import 'package:toto_profile_flutter/pages/pengalaman_page.dart';
import 'package:toto_profile_flutter/routes/app_routes.dart';
import 'package:toto_profile_flutter/utils/responsive.dart'; // ✅ Import
import 'package:toto_profile_flutter/routes/page_transition.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Beranda', style: AppTextStyles.heading),
        backgroundColor: AppColors.mintGreen,
      ),
      drawer: const AppDrawer(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 20),
          const CircleAvatar(
            radius: 50,
            backgroundImage: AssetImage('assets/images/toto.png'),
          ),
          const SizedBox(height: 12),
          Text(
            'Raihan Genjor',
            style: AppTextStyles.heading.copyWith(fontSize: 22),
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
          Expanded(
            child: ListView(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              children: [
                AnimatedCard(
                  title: 'Data Diri',
                  icon: Icons.person,
                  onTap: () {
                    Navigator.pushReplacement(
                      context,
                      CustomPageRoute(child: const DataDiriPage()), // Mengarahkan akan ke menu mana
                    );
                  },
                ),
                const SizedBox(height: 12),
                AnimatedCard(
                  title: 'Pengalaman Kerja',
                  icon: Icons.work,
                  onTap: () {
                    Navigator.pushReplacement(
                      context,
                      CustomPageRoute(child: const PengalamanPage()), // Mengarahkan akan ke menu mana
                    );
                  },
                ),
                const SizedBox(height: 12),
                AnimatedCard(
                  title: 'Pendidikan',
                  icon: Icons.school,
                  onTap: () {
                    Navigator.pushReplacement(
                      context,
                      CustomPageRoute(child: const PendidikanPage()), // Mengarahkan akan ke menu mana
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
