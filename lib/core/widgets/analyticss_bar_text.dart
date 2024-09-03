import 'package:dribbble_t1/core/constants/colors.dart';
import 'package:flutter/material.dart';

class AnalyticsBarText extends StatelessWidget {
  final String total;
  final String category;
  const AnalyticsBarText(
      {super.key, required this.total, required this.category});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            total,
            style: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: AppColors.titleColor,
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              category,
              style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.normal,
                  color: AppColors.titleColor),
            ),
          ),
        ),
      ],
    );
  }
}
