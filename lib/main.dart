import 'package:flutter/material.dart';
import 'package:purpose_health/Pages/content.dart';
import 'package:purpose_health/Pages/details_page.dart';
import 'package:purpose_health/Pages/home.dart';
import 'package:purpose_health/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Purpose Health Solutions',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        primaryColor: Appcolors.primary
      ),
      home: const home(),
    );
  }
}
