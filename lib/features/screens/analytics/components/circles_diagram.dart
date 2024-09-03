import 'package:flutter/material.dart';

import '../../../../core/constants/colors.dart';
import '../../../../core/widgets/circle_container.dart';

class CirclesDiagram extends StatelessWidget {
  const CirclesDiagram({super.key});

  @override
  Widget build(BuildContext context) {
    return const Stack(
      clipBehavior: Clip.none,
      children: [
        Positioned(
          top: 25,
          left: 60,
          child: CircleContainer(
            radius: 90,
            color: AppColors.orangeColor,
            percent: '84',
          ),
        ),
        Positioned(
          left: 4,
          top: 7,
          child: CircleContainer(
            radius: 80,
            color: AppColors.peachOrangeColor,
            percent: '64',
          ),
        ),
        Positioned(
          bottom: 50,
          left: 65,
          child: CircleContainer(
            radius: 60,
            color: AppColors.babyBlueColor,
            percent: '0.49',
          ),
        )
      ],
    );
  }
}
