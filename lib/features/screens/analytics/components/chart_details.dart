import 'package:dribbble_t1/core/constants/colors.dart';
import 'package:dribbble_t1/core/widgets/chart_item_details.dart';
import 'package:flutter/material.dart';

class ChartDetails extends StatelessWidget {
  const ChartDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Padding(
          padding: EdgeInsets.all(6.0),
          child: ChartItemDetails(
              itemText: 'Gross Margin', itemColor: AppColors.orangeColor),
        ),
        Padding(
          padding: EdgeInsets.all(6.0),
          child: ChartItemDetails(
              itemText: 'CLR (Retention)',
              itemColor: AppColors.peachOrangeColor),
        ),
        Padding(
          padding: EdgeInsets.only(left: 6.0, top: 6),
          child: ChartItemDetails(
              itemText: 'Churn Rate', itemColor: AppColors.babyBlueColor),
        ),
      ],
    );
  }
}
