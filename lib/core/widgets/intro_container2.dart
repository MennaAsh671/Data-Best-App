import 'package:dribbble_t1/core/widgets/super_script_text.dart';
import 'package:flutter/material.dart';

import '../../../../core/constants/colors.dart';
import '../../../../core/utils/general_utils.dart';

class IntroCont2 extends StatelessWidget {
  const IntroCont2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(20)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const SuperScriptText(
              text: '500',
              superscript: '+',
            ),
            const Expanded(
              child: Text(
                'businesses already joined us!',
                style: TextStyle(color: AppColors.subtitleColor, fontSize: 14),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Stack(
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      radius: 15,
                      backgroundImage:
                          NetworkImage(GeneralUtilities.getUniqueAvatarUrl()),
                    ),
                    CircleAvatar(
                      radius: 15,
                      backgroundImage:
                          NetworkImage(GeneralUtilities.getUniqueAvatarUrl()),
                    ),
                    CircleAvatar(
                      radius: 15,
                      backgroundImage:
                          NetworkImage(GeneralUtilities.getUniqueAvatarUrl()),
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
