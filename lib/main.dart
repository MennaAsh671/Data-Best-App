import 'package:flutter/material.dart';

import 'core/constants/colors.dart';
import 'features/screens/Intro/intro_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: AppColors.appColor,
      ),
      home: const Introduction(),
    );
  }
}
