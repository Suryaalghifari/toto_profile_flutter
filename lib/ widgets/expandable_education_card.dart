import 'package:flutter/material.dart';
import '../constants/app_colors.dart';
import '../constants/app_text_styles.dart';

class ExpandableEducationCard extends StatefulWidget {
  final IconData icon;
  final String institution;
  final String major;
  final String years;
  final String description;

  const ExpandableEducationCard({
    super.key,
    required this.icon,
    required this.institution,
    required this.major,
    required this.years,
    required this.description,
  });

  @override
  State<ExpandableEducationCard> createState() => _ExpandableEducationCardState();
}

class _ExpandableEducationCardState extends State<ExpandableEducationCard> {
  bool isExpanded = false;

  void toggleExpanded() {
    setState(() {
      isExpanded = !isExpanded;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: toggleExpanded,
      child: Card(
        elevation: 4,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Icon(widget.icon, color: AppColors.softRed, size: 30),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Text(
                      widget.institution,
                      style: AppTextStyles.heading(context).copyWith(fontSize: 18), // ✅ pakai context
                    ),
                  ),
                  Icon(
                    isExpanded ? Icons.expand_less : Icons.expand_more,
                    color: AppColors.softRed,
                  ),
                ],
              ),
              const SizedBox(height: 8),
              Text(
                widget.major,
                style: AppTextStyles.body(context).copyWith(fontSize: 16), // ✅ pakai context
              ),
              const SizedBox(height: 4),
              Text(
                widget.years,
                style: AppTextStyles.body(context).copyWith(color: Colors.grey), // ✅ pakai context
              ),
              const SizedBox(height: 12),
              AnimatedCrossFade(
                firstChild: Text(
                  widget.description,
                  style: AppTextStyles.body(context).copyWith(fontSize: 14), // ✅ pakai context
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.justify,
                ),
                secondChild: Text(
                  widget.description,
                  style: AppTextStyles.body(context).copyWith(fontSize: 14), // ✅ pakai context
                  textAlign: TextAlign.justify,
                ),
                crossFadeState: isExpanded
                    ? CrossFadeState.showSecond
                    : CrossFadeState.showFirst,
                duration: const Duration(milliseconds: 300),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
