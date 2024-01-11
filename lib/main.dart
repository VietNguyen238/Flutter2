import 'package:b1/Configs/app_router.dart';
import 'package:b1/styles/app_colors.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Student',
      theme: ThemeData(
        scaffoldBackgroundColor: AppColors.white,
      ),
      routes: AppRouter.pages,
      initialRoute: AppRouter.mainPage,
    );
  }
}
