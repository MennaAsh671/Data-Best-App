import 'package:flutter/material.dart';

import '../constants/colors.dart';

class CircleContainer extends StatelessWidget {
  final double radius;
  final String percent;
  final Color color;
  const CircleContainer(
      {super.key,
      required this.radius,
      required this.percent,
      required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: radius,
      width: radius,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(100),
      ),
      child: Center(
          child: Text(
        percent,
        style: const TextStyle(
          fontSize: 11,
          fontWeight: FontWeight.bold,
          color: AppColors.titleColor,
        ),
      )),
    );
  }
}
