import 'package:dribbble_t1/core/widgets/my_app_bar.dart';
import 'package:dribbble_t1/core/widgets/my_bar_chart.dart';
import 'package:dribbble_t1/features/screens/analytics/components/analytics_bar.dart';
import 'package:dribbble_t1/features/screens/analytics/components/chart_details.dart';
import 'package:dribbble_t1/features/screens/analytics/components/circles_diagram.dart';
import 'package:dribbble_t1/features/screens/analytics/components/kpi_statistics.dart';
import 'package:flutter/material.dart';

import '../../../core/constants/colors.dart';

class AnalyticsScreen extends StatelessWidget {
  const AnalyticsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          children: [
            MyAppBar(
              appbarLeadingIcon: const Icon(
                Icons.arrow_back_ios,
                color: AppColors.titleColor,
              ),
              appbarText: 'ANALYTICS',
              centerTitle: true,
              onTap: () {
                Navigator.pop(context);
              },
            ),
            const SizedBox(height: 30),
            const Column(
              children: [
                Statistics(
                    text: "KPI STATISTICS[%]", containerText: 'See More'),
                SizedBox(height: 30),
                SizedBox(
                  height: 90,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(child: CirclesDiagram()),
                      ChartDetails()
                    ],
                  ),
                ),
                SizedBox(height: 80),
                Statistics(text: 'Sales Revenue', containerText: 'Monthly'),
                SizedBox(height: 30),
                MyBarChart(),
                SizedBox(height: 30),
                AnalyticsBar()
              ],
            ),
          ],
        ),
      ),
    );
  }
}
