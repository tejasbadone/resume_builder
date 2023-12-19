import 'package:flutter/material.dart';
import 'package:resume_builder/presentation/home_screen.dart';
import 'package:resume_builder/presentation/step_four_screen.dart';
import 'package:resume_builder/presentation/step_three_screen.dart';
import 'package:resume_builder/presentation/step_two_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}
