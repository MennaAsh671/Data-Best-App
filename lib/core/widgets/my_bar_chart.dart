import 'package:dribbble_t1/core/constants/colors.dart';
import 'package:dribbble_t1/core/widgets/my_bar_rod_gradient.dart';
import 'package:flutter/material.dart';

import 'my_bar_rod.dart';

class MyBarChart extends StatelessWidget {
  const MyBarChart({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        MyBarRod(
            barRodHeight: 80,
            label: 'Jan',
            barRodColor: AppColors.subtitleColor),
        MyBarRod(
            barRodHeight: 100,
            label: 'Feb',
            barRodColor: AppColors.subtitleColor),
        MyBarRodGradient(
          barRodHeight: 170,
          label: 'Mar',
        ),
        MyBarRod(
            barRodHeight: 150,
            label: 'Apr',
            barRodColor: AppColors.subtitleColor),
        MyBarRod(
            barRodHeight: 90,
            label: 'May',
            barRodColor: AppColors.subtitleColor),
        MyBarRod(
            barRodHeight: 160,
            label: 'Jun',
            barRodColor: AppColors.subtitleColor)
      ],
    );
  }
}
