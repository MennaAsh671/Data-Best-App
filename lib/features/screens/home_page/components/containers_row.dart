import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../core/widgets/icon_container.dart';

class ContainersRow extends StatelessWidget {
  const ContainersRow({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        IconContainer(iconData: CupertinoIcons.bag_fill_badge_minus),
        IconContainer(iconData: Icons.area_chart_outlined),
        IconContainer(iconData: CupertinoIcons.arrow_clockwise),
        IconContainer(iconData: CupertinoIcons.list_bullet),
      ],
    );
  }
}
