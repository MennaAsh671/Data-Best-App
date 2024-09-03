import 'package:flutter/material.dart';

import '../../../../core/constants/colors.dart';

class Statistics extends StatelessWidget {
  final String text;
  final String containerText;
  const Statistics({
    super.key,
    required this.text,
    required this.containerText,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: const TextStyle(
              fontSize: 15,
              color: AppColors.titleColor,
              fontWeight: FontWeight.bold),
        ),
        Container(
          padding: const EdgeInsets.all(7.0),
          decoration: BoxDecoration(
              color: AppColors.appColor,
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: AppColors.subtitleColor)),
          child: Text(
            containerText,
            style: TextStyle(
                fontSize: 13, color: AppColors.titleColor.withOpacity(0.4)),
          ),
        ),
      ],
    );
  }
}
