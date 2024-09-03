import 'package:flutter/material.dart';

import '../constants/colors.dart';

class MyBarRod extends StatelessWidget {
  final double barRodHeight;
  // final double barRodWidth;
  final Color barRodColor;
  final String label;

  const MyBarRod(
      {super.key,
      required this.barRodHeight,
      // required this.barRodWidth,
      this.barRodColor = AppColors.subtitleColor,
      required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: barRodHeight,
          width: 40,
          // width: barRodWidth,
          decoration: BoxDecoration(
              color: barRodColor, borderRadius: BorderRadius.circular(8)),
        ),
        const SizedBox(height: 5),
        Text(
          label,
          style: TextStyle(
            fontSize: 16,
            color: AppColors.titleColor.withOpacity(0.4),
          ),
        )
      ],
    );
  }
}
