import 'package:dribbble_t1/core/constants/colors.dart';
import 'package:flutter/cupertino.dart';

class MyBarRodGradient extends StatelessWidget {
  final double barRodHeight;
  // final double barRodWidth;
  final String label;

  const MyBarRodGradient(
      {super.key,
      required this.barRodHeight,
      // required this.barRodWidth,
      required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: barRodHeight,
          width: 40,
          // width: barRodWidth,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            gradient: LinearGradient(
                colors: [
                  AppColors.peachOrangeColor,
                  AppColors.peachOrangeColor.withOpacity(0.6),
                ],
                begin: const FractionalOffset(0.0, 0.0),
                end: const FractionalOffset(0.0, 1.0),
                stops: const [0.5, 2.0],
                tileMode: TileMode.clamp),
          ),
        ),
        const SizedBox(height: 5),
        Text(
          label,
          style: TextStyle(
            fontSize: 16,
            color: AppColors.titleColor.withOpacity(0.4),
          ),
        )
      ],
    );
  }
}
