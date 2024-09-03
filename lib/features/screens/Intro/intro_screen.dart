import 'package:flutter/material.dart';

import '../../../core/constants/colors.dart';
import '../../../core/widgets/intro_container.dart';
import '../../../core/widgets/intro_container2.dart';
import '../../../core/widgets/my_app_bar.dart';
import '../../../core/widgets/subtitle.dart';
import 'components/get_started_button.dart';

class Introduction extends StatelessWidget {
  const Introduction({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              MyAppBar(
                appbarLeadingIcon: const Icon(
                  Icons.data_exploration_rounded,
                  color: AppColors.titleColor,
                ),
                appbarText: 'DATABEST',
                onTap: () {},
              ),
              const SizedBox(height: 30),
              const Text(
                'YOUR BEST MARKETING & DATA ANALYSER',
                style: TextStyle(
                    color: AppColors.titleColor,
                    fontSize: 36,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 30),
              const SubTitle(
                firstPart: 'Get a ',
                secondPart: 'clear version',
                secondPartFontWeight: FontWeight.bold,
                thirdPart: ' of business',
                textFontSize: 18,
                textColor: AppColors.titleColor,
              ),
              const SizedBox(height: 30),
              const SizedBox(
                height: 250,
                child: Row(
                  children: [
                    Expanded(child: IntroCont()),
                    SizedBox(width: 12),
                    Expanded(child: IntroCont2()),
                  ],
                ),
              ),
              const SizedBox(height: 50),
              const GetStartedButton()
            ],
          ),
        ),
      ),
    );
  }
}
