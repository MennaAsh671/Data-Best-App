import 'package:flutter/material.dart';

import '../constants/colors.dart';

class SubTitle extends StatelessWidget {
  final String firstPart;
  final double textFontSize;
  final Color textColor;
  final String secondPart;
  final FontWeight secondPartFontWeight;
  final String thirdPart;

  const SubTitle({
    super.key,
    required this.firstPart,
    required this.secondPart,
    required this.thirdPart,
    required this.secondPartFontWeight,
    required this.textFontSize,
    required this.textColor,
  });
  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        children: [
          TextSpan(
            text: firstPart,
            style: TextStyle(color: textColor, fontSize: textFontSize),
          ),
          TextSpan(
            text: secondPart,
            style: TextStyle(
                color: AppColors.titleColor,
                fontSize: 18,
                fontWeight: secondPartFontWeight),
          ),
          TextSpan(
            text: thirdPart,
            style: TextStyle(color: textColor, fontSize: textFontSize),
          ),
        ],
      ),
    );
  }
}
