import 'package:flutter/material.dart';
import 'package:mobapp/core/app_theme/app_theme.dart';
import 'package:mobapp/screen/splash_screen_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: getApplicationTheme(),
      home: const SplashScreenView(),
    );
  }
}
