import 'package:flutter/material.dart';

import '../constants/colors.dart';

class SuperScriptText extends StatelessWidget {
  final String text;
  final String superscript;
  const SuperScriptText(
      {super.key, required this.text, required this.superscript});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Text(
            text,
            style: const TextStyle(color: AppColors.titleColor, fontSize: 45),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 1.0),
          child: Text(
            superscript,
            style: const TextStyle(
              color: AppColors.titleColor,
              fontSize: 30,
            ),
          ),
        ),
      ],
    );
  }
}
