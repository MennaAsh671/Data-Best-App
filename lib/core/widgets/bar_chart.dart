import 'package:dribbble_t1/core/constants/colors.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class FLBarChart extends StatelessWidget {
  const FLBarChart({super.key});

  @override
  Widget build(BuildContext context) {
    return BarChart(
      BarChartData(
        titlesData: const FlTitlesData(
          bottomTitles: AxisTitles(
            sideTitles: SideTitles(
              reservedSize: 30,
              showTitles: true,
            ),
          ),
        ),
        barGroups: [
          BarChartGroupData(x: 0, barRods: [
            BarChartRodData(
              toY: 10,
              color: AppColors.subtitleColor,
              width: 12,
              borderRadius: BorderRadius.circular(12),
            )
          ])
        ],
        // groupsSpace: 12,
        // alignment: BarChartAlignment.center,
        backgroundColor: AppColors.appColor,
      ),
      swapAnimationDuration: const Duration(milliseconds: 150), // Optional
      swapAnimationCurve: Curves.bounceInOut,
    );
  }
}

//
// titlesData: FlTitlesData(
// show: true,
// rightTitles: const AxisTitles(
// sideTitles: SideTitles(showTitles: false),
// ),
// topTitles: const AxisTitles(
// sideTitles: SideTitles(showTitles: false),
// ),
// bottomTitles: AxisTitles(
// sideTitles: SideTitles(
// showTitles: true,
// getTitlesWidget: getTitles,
// reservedSize: 38,
// ),
// ),
// leftTitles: const AxisTitles(
// sideTitles: SideTitles(
// showTitles: false,
// ),
// ),
// ),
//
// Widget getTitles(double value, TitleMeta meta) {
//   const style = TextStyle(
//     color: Colors.white,
//     fontWeight: FontWeight.bold,
//     fontSize: 14,
//   );
//   Widget text;
//   switch (value.toInt()) {
//     case 0:
//       text = const Text('M', style: style);
//       break;
//     case 1:
//       text = const Text('T', style: style);
//       break;
//     case 2:
//       text = const Text('W', style: style);
//       break;
//     case 3:
//       text = const Text('T', style: style);
//       break;
//     case 4:
//       text = const Text('F', style: style);
//       break;
//     case 5:
//       text = const Text('S', style: style);
//       break;
//     case 6:
//       text = const Text('S', style: style);
//       break;
//     default:
//       text = const Text('', style: style);
//       break;
//   }
//   return SideTitleWidget(
//     axisSide: meta.axisSide,
//     space: 16,
//     child: text,
//   );
// }
