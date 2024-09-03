import 'package:flutter/material.dart';

import '../../../../core/constants/colors.dart';

class LectureData extends StatelessWidget {
  const LectureData({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 35,
          decoration: BoxDecoration(
              color: AppColors.titleColor,
              borderRadius: BorderRadius.circular(10)),
          child: const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'LECTURE',
              style: TextStyle(
                color: AppColors.subtitleColor,
                fontWeight: FontWeight.bold,
                fontSize: 17,
              ),
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(top: 8.0),
          child: Text(
            'B2B SALES TECHNIQUES',
            style: TextStyle(
              color: AppColors.titleColor,
              fontWeight: FontWeight.bold,
              fontSize: 32,
            ),
          ),
        ),
        const SizedBox(
          height: 40,
        ),
        Text(
          '04.07.2022',
          style: TextStyle(
            color: AppColors.titleColor.withOpacity(0.4),
            fontWeight: FontWeight.bold,
            fontSize: 17,
          ),
        )
      ],
    );
  }
}
