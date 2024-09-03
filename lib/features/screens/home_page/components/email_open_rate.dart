import 'package:flutter/material.dart';

import '../../../../core/constants/colors.dart';

class EmailOpenRate extends StatelessWidget {
  const EmailOpenRate({super.key});

  @override
  Widget build(BuildContext context) {
    return const Align(
      alignment: Alignment.bottomLeft,
      child: Padding(
        padding: EdgeInsets.fromLTRB(12, 60, 0, 12),
        child: Text(
          'EMAIL OPEN RATE',
          style: TextStyle(
            color: AppColors.titleColor,
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}
