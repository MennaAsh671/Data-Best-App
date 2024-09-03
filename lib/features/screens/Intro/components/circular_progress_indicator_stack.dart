import 'package:flutter/material.dart';

import '../../../../core/constants/colors.dart';
import '../../../../core/widgets/my_circular_progress_indicator.dart';

class CircularProgressIndicatorStack extends StatelessWidget {
  const CircularProgressIndicatorStack({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Stack(
      children: [
        Positioned(
          child: MyCircularProgressIndicator(
              percent: 0.67,
              radius: 53,
              startAngle: 340,
              reverse: true,
              progressColor: AppColors.peachOrangeColor),
        ),
        Positioned(
          right: 32,
          top: 32,
          child: Icon(
            Icons.add_circle_rounded,
            color: AppColors.titleColor,
            size: 40,
          ),
        ),
        Positioned(
          top: 15,
          left: 15,
          child: MyCircularProgressIndicator(
            percent: 0.69,
            radius: 38,
            startAngle: 310,
            progressColor: AppColors.orangeColor,
          ),
        ),
      ],
    );
  }
}
