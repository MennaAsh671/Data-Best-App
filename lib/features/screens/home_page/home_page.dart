import 'package:dribbble_t1/core/widgets/my_app_bar.dart';
import 'package:dribbble_t1/features/screens/analytics/analytics_screen.dart';
import 'package:dribbble_t1/features/screens/home_page/components/data_actions.dart';
import 'package:dribbble_t1/features/screens/home_page/components/email_open_rate.dart';
import 'package:dribbble_t1/features/screens/home_page/components/lecture_container.dart';
import 'package:dribbble_t1/features/screens/home_page/components/subscribers_list.dart';
import 'package:flutter/material.dart';

import '../../../core/constants/colors.dart';
import '../../../core/utils/general_utils.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Widget> pagesList = [
    const HomePage(),
    const AnalyticsScreen(),
    const Text('Hi '),
  ];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          onTap: (val) {
            setState(() {
              selectedIndex = val;
            });
          },
          currentIndex: selectedIndex,
          backgroundColor: AppColors.appColor,
          selectedItemColor: AppColors.peachOrangeColor,
          unselectedItemColor: AppColors.titleColor.withOpacity(0.4),
          iconSize: 30,
          elevation: 0,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.house_rounded), label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.bar_chart), label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.settings), label: ''),
          ]),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Builder(builder: (context) {
            if (selectedIndex != 0) {
              return pagesList.elementAt(selectedIndex);
            }
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  MyAppBar(
                    appbarLeadingIcon: CircleAvatar(
                      backgroundColor: AppColors.appColor,
                      radius: 24,
                      backgroundImage:
                          NetworkImage(GeneralUtilities.getUniqueAvatarUrl()),
                    ),
                    centerTitle: false,
                    appbarText: 'BRYAN SIMONS',
                    onTap: () {},
                  ),
                  const SizedBox(height: 20),
                  const LectureContainer(),
                  const DataActions(),
                  const EmailOpenRate(),
                  const SubscribersList()
                ],
              ),
            );
          }),
        ),
      ),
    );
  }
}
