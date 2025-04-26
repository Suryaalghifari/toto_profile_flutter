import 'package:flutter/material.dart';
import 'package:toto_profile_flutter/constants/app_colors.dart';
import 'package:toto_profile_flutter/constants/app_text_styles.dart';
import 'package:toto_profile_flutter/pages/full_screen_image_page.dart';
import 'package:toto_profile_flutter/routes/page_transition.dart'; // ✅ Import custom transition

class ExpandableProjectCard extends StatefulWidget {
  final String imagePath;
  final String projectName;
  final String projectType;
  final String years;
  final String description;

  const ExpandableProjectCard({
    super.key,
    required this.imagePath,
    required this.projectName,
    required this.projectType,
    required this.years,
    required this.description,
  });

  @override
  State<ExpandableProjectCard> createState() => _ExpandableProjectCardState();
}

class _ExpandableProjectCardState extends State<ExpandableProjectCard> {
  bool isExpanded = false;

  void toggleCard() {
    setState(() {
      isExpanded = !isExpanded;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: toggleCard,
      child: Card(
        elevation: 5,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        clipBehavior: Clip.antiAlias,
        child: AnimatedCrossFade(
          firstChild: _buildCollapsed(),
          secondChild: _buildExpanded(context),
          crossFadeState: isExpanded
              ? CrossFadeState.showSecond
              : CrossFadeState.showFirst,
          duration: const Duration(milliseconds: 300),
        ),
      ),
    );
  }

  Widget _buildCollapsed() {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Row(
        children: [
          const Icon(Icons.work_outline, color: AppColors.softRed, size: 28),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(widget.projectName,
                    style: AppTextStyles.heading.copyWith(fontSize: 18)),
                const SizedBox(height: 4),
                Text('${widget.projectType} • ${widget.years}',
                    style: AppTextStyles.body.copyWith(color: Colors.grey)),
              ],
            ),
          ),
          Icon(
            Icons.expand_more,
            color: AppColors.softRed,
          ),
        ],
      ),
    );
  }

  Widget _buildExpanded(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              CustomPageRoute(
                child: FullScreenImagePage(imagePath: widget.imagePath),
              ),
            );
          },
          child: Hero(
            tag: widget.imagePath,
            child: Image.asset(
              widget.imagePath,
              width: double.infinity,
              fit: BoxFit.contain,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(widget.projectName,
                  style: AppTextStyles.heading.copyWith(fontSize: 18)),
              const SizedBox(height: 4),
              Text('${widget.projectType} • ${widget.years}',
                  style: AppTextStyles.body.copyWith(color: Colors.grey)),
              const SizedBox(height: 12),
              Text(widget.description,
                  style: AppTextStyles.body.copyWith(fontSize: 14),
                  textAlign: TextAlign.justify),
              const SizedBox(height: 12),
              Align(
                alignment: Alignment.centerRight,
                child: Icon(Icons.expand_less, color: AppColors.softRed),
              )
            ],
          ),
        ),
      ],
    );
  }
}
