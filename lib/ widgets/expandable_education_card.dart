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
                      style: AppTextStyles.heading.copyWith(fontSize: 18),
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
                style: AppTextStyles.body.copyWith(fontSize: 16),
              ),
              const SizedBox(height: 4),
              Text(
                widget.years,
                style: AppTextStyles.body.copyWith(color: Colors.grey),
              ),
              const SizedBox(height: 12),
              AnimatedCrossFade(
                firstChild: Text(
                  widget.description,
                  style: AppTextStyles.body.copyWith(fontSize: 14),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.justify,
                ),
                secondChild: Text(
                  widget.description,
                  style: AppTextStyles.body.copyWith(fontSize: 14),
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
