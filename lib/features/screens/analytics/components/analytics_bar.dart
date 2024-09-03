import 'package:dribbble_t1/core/widgets/analyticss_bar_text.dart';
import 'package:flutter/material.dart';

import '../../../../core/constants/colors.dart';

class AnalyticsBar extends StatelessWidget {
  const AnalyticsBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Expanded(
            child: AnalyticsBarText(total: '18k', category: 'Monthly Revenue')),
        Text(
          '|',
          style: TextStyle(fontSize: 24, color: AppColors.subtitleColor),
        ),
        Expanded(
            child: AnalyticsBarText(total: '2%', category: 'Revenue Growth')),
      ],
    );
  }
}
