import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';

import '../../../../core/constants/colors.dart';
import '../../home_page/home_page.dart';

class GetStartedButton extends StatelessWidget {
  const GetStartedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          const Positioned(
            top: 15,
            right: -74,
            child: DottedLine(
              lineLength: 290,
              lineThickness: 2,
              dashColor: AppColors.titleColor,
              dashLength: 3,
            ),
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const HomePage()),
                );
              },
              style: ButtonStyle(
                  backgroundColor:
                      WidgetStateProperty.all<Color>(AppColors.titleColor),
                  shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                          side:
                              const BorderSide(color: AppColors.titleColor)))),
              child: const Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text('Get Started'),
                  Icon(Icons.keyboard_double_arrow_up_rounded)
                ],
              ))
        ],
      ),
    );
  }
}
