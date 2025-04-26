import 'package:flutter/material.dart';
import 'package:toto_profile_flutter/constants/app_text_styles.dart';
import 'package:toto_profile_flutter/ widgets/animated_card.dart'; // ✅ Fix typo
import 'package:toto_profile_flutter/ widgets/app_drawer.dart';
import 'package:toto_profile_flutter/pages/data_diri_page.dart';
import 'package:toto_profile_flutter/pages/pendidikan_page.dart';
import 'package:toto_profile_flutter/pages/pengalaman_page.dart';
import 'package:toto_profile_flutter/utils/responsive.dart'; // ✅ Import responsive helper
import 'package:toto_profile_flutter/utils/loading_helper.dart'; // ✅ Loading helper
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Beranda',
          style: AppTextStyles.heading(context).copyWith(
            fontSize: getResponsiveFontSize(context, 22),
          ),
        ),
        backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
      ),
      drawer: const AppDrawer(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: getResponsiveSize(context, 20)),

          // Profile Avatar
          CircleAvatar(
            radius: getResponsiveSize(context, 50),
            backgroundImage: const AssetImage('assets/images/toto.png'),
          ),
          SizedBox(height: getResponsiveSize(context, 12)),

          // Nama
          Text(
            'Raihan Genjor',
            style: AppTextStyles.heading(context).copyWith(
              fontSize: getResponsiveFontSize(context, 22),
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

          // List Menu
          Expanded(
            child: ListView(
              padding: EdgeInsets.symmetric(
                horizontal: getResponsivePadding(context, 20),
              ),
              children: [
                AnimatedCard(
                  title: 'Data Diri',
                  icon: Icons.person,
                  onTap: () {
                    LoadingHelper.showLoadingThenNavigate(
                      context: context,
                      page: const DataDiriPage(),
                    );
                  },
                ),
                SizedBox(height: getResponsiveSize(context, 12)),

                AnimatedCard(
                  title: 'Pengalaman Kerja',
                  icon: Icons.work,
                  onTap: () {
                    LoadingHelper.showLoadingThenNavigate(
                      context: context,
                      page: const PengalamanPage(),
                    );
                  },
                ),
                SizedBox(height: getResponsiveSize(context, 12)),

                AnimatedCard(
                  title: 'Pendidikan',
                  icon: Icons.school,
                  onTap: () {
                    LoadingHelper.showLoadingThenNavigate(
                      context: context,
                      page: const PendidikanPage(),
                    );
                  },
                ),
              ],
            ),
          ),
          const SizedBox(height: 24), // Jarak

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                icon: const FaIcon(FontAwesomeIcons.instagram),
                onPressed: () {
                  // TODO: Launch Instagram URL
                },
              ),
              const SizedBox(width: 16),
              IconButton(
                icon: const FaIcon(FontAwesomeIcons.github),
                onPressed: () {
                  // TODO: Launch Github URL
                },
              ),
              const SizedBox(width: 16),
              IconButton(
                icon: const FaIcon(FontAwesomeIcons.linkedin),
                onPressed: () {
                  // TODO: Launch LinkedIn URL
                },
              ),
            ],
          ),

        ],

      ),
    );
  }
}
