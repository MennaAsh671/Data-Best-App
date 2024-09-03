import 'package:flutter/material.dart';

import '../../../../core/constants/colors.dart';
import '../../features/screens/Intro/components/circular_progress_indicator_stack.dart';

class IntroCont extends StatelessWidget {
  const IntroCont({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: 165,
      // height: 240,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(20)),
      child: const Padding(
        padding: EdgeInsets.all(18.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Text(
                'Best New Solutions',
                style: TextStyle(
                    color: AppColors.titleColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 14),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Center(
              child: Column(
                children: [
                  CircularProgressIndicatorStack(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
