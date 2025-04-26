import 'package:flutter/material.dart';
import 'package:toto_profile_flutter/pages/pendidikan_page.dart';
import 'package:toto_profile_flutter/pages/pengalaman_page.dart';
import 'package:toto_profile_flutter/routes/app_routes.dart';
import 'package:toto_profile_flutter/routes/page_transition.dart';
import 'package:toto_profile_flutter/pages/home_page.dart';
import 'package:toto_profile_flutter/pages/data_diri_page.dart';
import 'package:toto_profile_flutter/constants/app_colors.dart';
import 'package:toto_profile_flutter/constants/app_text_styles.dart';
import 'package:toto_profile_flutter/utils/responsive.dart';
import 'package:provider/provider.dart';
import 'package:toto_profile_flutter/utils/loading_helper.dart';
import '../notifiers/theme_notifier.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: Theme.of(context).appBarTheme.backgroundColor, // ✨ Pakai background sesuai Theme
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: getResponsiveSize(context, 30),
                  backgroundImage: const AssetImage('assets/images/toto.png'),
                ),
                SizedBox(height: getResponsiveSize(context, 12)),

                Text(
                  'Raihan Genjor',
                  style: AppTextStyles.heading(context).copyWith(
                    fontSize: getResponsiveFontSize(context, 20),
                    color: AppColors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: getResponsiveSize(context, 4)),

                Text(
                  'Flutter Developer',
                  style: AppTextStyles.body(context).copyWith(
                    fontSize: getResponsiveFontSize(context, 14),
                    color: AppColors.white.withOpacity(0.8),
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),

          // Menu Items
          ListTile(
            leading: const Icon(Icons.home, color: AppColors.softRed),
            title: Text(
              'Beranda',
              style: AppTextStyles.body(context).copyWith(
                fontSize: getResponsiveFontSize(context, 16),
              ),
            ),
            onTap: () {
              LoadingHelper.showLoadingThenNavigate(
                context: context,
                page: const HomePage(),
              );
            },
          ),

          ListTile(
            leading: const Icon(Icons.person, color: AppColors.softRed),
            title: Text(
              'Data Diri',
              style: AppTextStyles.body(context).copyWith(
                fontSize: getResponsiveFontSize(context, 16),
              ),
            ),
            onTap: () {
              LoadingHelper.showLoadingThenNavigate(
                context: context,
                page: const DataDiriPage(),
              );
            },
          ),

          ListTile(
            leading: const Icon(Icons.school, color: AppColors.softRed),
            title: Text(
              'Pendidikan',
              style: AppTextStyles.body(context).copyWith(
                fontSize: getResponsiveFontSize(context, 16),
              ),
            ),
            onTap: () {
              LoadingHelper.showLoadingThenNavigate(
                context: context,
                page: const PendidikanPage(),
              );
            },
          ),

          ListTile(
            leading: const Icon(Icons.work, color: AppColors.softRed),
            title: Text(
              'Pengalaman',
              style: AppTextStyles.body(context).copyWith(
                fontSize: getResponsiveFontSize(context, 16),
              ),
            ),
            onTap: () {
              LoadingHelper.showLoadingThenNavigate(
                context: context,
                page: const PengalamanPage(),
              );
            },
          ),

          const Divider(),

          // Dark Mode Switch
          ListTile(
            leading: const Icon(Icons.dark_mode),
            title: Text(
              'Dark Mode',
              style: AppTextStyles.body(context).copyWith(
                fontSize: getResponsiveFontSize(context, 16),
              ),
            ),
            trailing: Switch(
              value: Provider.of<ThemeNotifier>(context).themeMode == ThemeMode.dark,
              onChanged: (_) async {
                // 🔥 Pakai LoadingHelper buat tampilkan loading
                await LoadingHelper.showLoadingOnly(context: context);

                // 🔥 Setelah loading selesai, baru toggle theme
                Provider.of<ThemeNotifier>(context, listen: false).toggleTheme();
              },
            ),
          ),

        ],
      ),
    );
  }
}
