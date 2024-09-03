import 'package:dribbble_t1/features/screens/home_page/components/lecture_data.dart';
import 'package:flutter/material.dart';

import '../../../../core/constants/colors.dart';
import '../../../../core/gen/assets.gen.dart';

class LectureContainer extends StatelessWidget {
  const LectureContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          child: Container(
            decoration: BoxDecoration(
                color: AppColors.greyBackgroundColor,
                borderRadius: BorderRadius.circular(20)),
          ),
        ),
        Positioned(
          right: 0,
          bottom: 0,
          child: Assets.ammo.image(
            height: 180,
            width: 170,
          ),
        ),
        const Padding(
          padding: EdgeInsets.all(18.0),
          child: LectureData(),
        ),
      ],
    );
  }
}
