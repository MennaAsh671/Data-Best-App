import 'package:dribbble_t1/core/constants/colors.dart';
import 'package:dribbble_t1/core/widgets/circle_container.dart';
import 'package:flutter/material.dart';

class ChartItemDetails extends StatelessWidget {
  final String itemText;
  final Color itemColor;
  const ChartItemDetails(
      {super.key, required this.itemText, required this.itemColor});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleContainer(radius: 8, percent: '', color: itemColor),
        const SizedBox(
          width: 10,
        ),
        Text(
          itemText,
          style: const TextStyle(fontSize: 14, color: AppColors.titleColor),
        )
      ],
    );
  }
}
