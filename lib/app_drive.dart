

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'features/auth/screens/onboarding/onboarding.dart';


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      themeMode: ThemeMode.system,
       home: OnBoardingScreen()//SplashScreen(),
    );
  }
}

