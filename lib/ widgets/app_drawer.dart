import 'package:flutter/material.dart';
import 'package:toto_profile_flutter/pages/pendidikan_page.dart';
import 'package:toto_profile_flutter/pages/pengalaman_page.dart';
import 'package:toto_profile_flutter/routes/app_routes.dart';
import 'package:toto_profile_flutter/routes/page_transition.dart';
import '../pages/home_page.dart';
import '../pages/data_diri_page.dart';
import '../constants/app_colors.dart';
import 'package:provider/provider.dart';
import '../constants/app_text_styles.dart';
import '../notifiers/theme_notifier.dart';


class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            decoration: const BoxDecoration(
              color: AppColors.mintGreen,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage('assets/images/raihan_genjor.png'),
                ),
                const SizedBox(height: 12),
                Text(
                  'Raihan Genjor',
                  style: AppTextStyles.heading.copyWith(
                    fontSize: 20,
                    color: AppColors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 4),
                Text(
                  'Flutter Developer',
                  style: AppTextStyles.body.copyWith(
                    fontSize: 14,
                    color: AppColors.white.withOpacity(0.8),
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
          ListTile(
            leading: const Icon(Icons.home, color: AppColors.softRed),
            title: Text('Beranda', style: AppTextStyles.body),
            onTap: () {
              Navigator.pushReplacement(
                context,
                CustomPageRoute(child: const HomePage()), // Mengarahkan akan ke menu mana
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.person, color: AppColors.softRed),
            title: Text('Data Diri', style: AppTextStyles.body),
            onTap: () {
              Navigator.pushReplacement(
                context,
                CustomPageRoute(child: const DataDiriPage()), // Mengarahkan akan ke menu mana
              );
            },
          ),

          ListTile(
            leading: const Icon(Icons.school, color: AppColors.softRed),
            title: Text('Pendidikan', style: AppTextStyles.body),
            onTap: () {
              Navigator.pushReplacement(
                context,
                CustomPageRoute(child: const PendidikanPage()), // Mengarahkan akan ke menu mana
              );
            },
          ),

          ListTile(
            leading: const Icon(Icons.work, color: AppColors.softRed),
            title: Text('Pengalaman', style: AppTextStyles.body),
            onTap: () {
              Navigator.pushReplacement(
                context,
                CustomPageRoute(child: const PengalamanPage()), // Mengarahkan akan ke menu mana
              );
            },
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.dark_mode),
            title: const Text('Dark Mode'),
            trailing: Switch(
              value: Provider.of<ThemeNotifier>(context).themeMode == ThemeMode.dark,
              onChanged: (_) {
                Provider.of<ThemeNotifier>(context, listen: false).toggleTheme();
              },
            ),
          ),

        ],
      ),
    );
  }
}
