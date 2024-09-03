import 'package:dribbble_t1/features/screens/home_page/components/containers_row.dart';
import 'package:flutter/material.dart';

import '../../../../core/constants/colors.dart';

class DataActions extends StatelessWidget {
  const DataActions({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 125,
          margin: const EdgeInsets.all(12.0),
          padding: const EdgeInsets.all(18.0),
          decoration: BoxDecoration(
              color: AppColors.appColor,
              borderRadius: BorderRadius.circular(15),
              border: Border.all(color: AppColors.subtitleColor)),
          child: const Align(
            alignment: Alignment.topRight,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'DATA ACTIONS',
                  style: TextStyle(
                    color: AppColors.titleColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                ),
                Icon(
                  Icons.more_horiz_rounded,
                  color: AppColors.subtitleColor,
                )
              ],
            ),
          ),
        ),
        const Positioned.fill(
          right: 0,
          top: 110,
          child: Padding(
            padding: EdgeInsets.only(right: 20, left: 20),
            child: ContainersRow(),
          ),
        )
      ],
    );
  }
}
