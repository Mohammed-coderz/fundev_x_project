import 'package:flutter/material.dart';
import 'package:sevices/feature/on_boarding/screens/on_boarding_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'BSF App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF4285F4)),
        scaffoldBackgroundColor: Colors.white,
      ),
      home: OnBoardingScreen(),
    );
  }
}
