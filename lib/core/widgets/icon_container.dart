import 'package:flutter/material.dart';

import '../constants/colors.dart';

class IconContainer extends StatelessWidget {
  final IconData iconData;
  const IconContainer({super.key, required this.iconData});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      width: 55,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(10)),
      child: Icon(
        iconData,
        color: AppColors.titleColor,
      ),
    );
  }
}
