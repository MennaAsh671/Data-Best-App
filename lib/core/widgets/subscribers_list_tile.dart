import 'package:flutter/material.dart';

import '../constants/colors.dart';
import '../utils/general_utils.dart';
import 'subtitle.dart';

class SubscribersListTile extends StatelessWidget {
  final String subscriberName;
  final String rate;
  final String firstPart;
  final String secondPart;
  final String thirdPart;
  const SubscribersListTile(
      {super.key,
      required this.subscriberName,
      required this.rate,
      required this.firstPart,
      required this.secondPart,
      required this.thirdPart});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: AppColors.appColor,
        radius: 24,
        backgroundImage: NetworkImage(GeneralUtilities.getUniqueAvatarUrl()),
      ),
      title: Text(
        subscriberName,
        style: const TextStyle(
          color: AppColors.titleColor,
          fontWeight: FontWeight.bold,
          fontSize: 17,
        ),
      ),
      subtitle: SubTitle(
        firstPart: firstPart,
        secondPart: secondPart,
        thirdPart: thirdPart,
        secondPartFontWeight: FontWeight.normal,
        textFontSize: 15,
        textColor: AppColors.titleColor.withOpacity(0.5),
      ),
      trailing: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          rate,
          style: const TextStyle(
            color: AppColors.titleColor,
            fontWeight: FontWeight.bold,
            fontSize: 17,
          ),
        ),
      ),
    );
  }
}
