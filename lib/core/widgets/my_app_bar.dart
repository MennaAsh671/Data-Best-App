import 'package:flutter/material.dart';

import '../constants/colors.dart';

class MyAppBar extends StatelessWidget {
  final Widget? appbarLeadingIcon;
  final String appbarText;
  final bool centerTitle;
  final void Function()? onTap;

  // final Widget? appbarTrailingIcon;

  const MyAppBar({
    super.key,
    this.appbarLeadingIcon,
    required this.appbarText,
    required this.onTap,
    this.centerTitle = false,
    // this.appbarTrailingIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(onTap: onTap, child: appbarLeadingIcon),
        Expanded(
          child: Text(
            appbarText,
            textAlign: centerTitle ? TextAlign.center : TextAlign.start,
            style: const TextStyle(
              color: AppColors.titleColor,
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
        ),
        Icon(
          Icons.table_rows_rounded,
          color: AppColors.titleColor,
          size: 28,
        )
      ],
    );
  }
}
