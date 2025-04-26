import 'package:flutter/material.dart';
import 'package:toto_profile_flutter/constants/app_colors.dart';
import 'package:toto_profile_flutter/constants/app_text_styles.dart';
import 'package:toto_profile_flutter/ widgets/app_drawer.dart'; // ✅ Fix typo
import 'package:toto_profile_flutter/ widgets/expandable_education_card.dart'; // ✅ Import Expandable Card
import 'package:toto_profile_flutter/utils/responsive.dart'; // ✅ Responsive Helper

class PendidikanPage extends StatelessWidget {
  const PendidikanPage({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Pendidikan',
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // ✨ List Pendidikan pakai ExpandableEducationCard

            ExpandableEducationCard(
              icon: Icons.school,
              institution: 'Universitas Pamulang',
              major: 'Teknik Informatika',
              years: '2022 - Sekarang',
              description:
              'Saat ini sedang menempuh semester 6. Aktif mengembangkan project aplikasi mobile menggunakan Flutter '
                  'serta memperdalam skill Website Programming menggunakan PHP.',
            ),
            SizedBox(height: getResponsiveSize(context, 12)),

            ExpandableEducationCard(
              icon: Icons.school_outlined,
              institution: 'SMA Bogor Centre School',
              major: 'Multimedia',
              years: '2019 - 2022',
              description:
              'Mulai fokus pada bidang teknologi, desain grafis, dan software development selama masa SMA.',
            ),
            SizedBox(height: getResponsiveSize(context, 12)),

            ExpandableEducationCard(
              icon: Icons.school_outlined,
              institution: 'SMP Bogor Centre School',
              major: 'Umum',
              years: '2016 - 2019',
              description:
              'Menumbuhkan minat awal terhadap dunia komputer, teknologi, dan pengembangan aplikasi.',
            ),
          ],
        ),
      ),
    );
  }
}
