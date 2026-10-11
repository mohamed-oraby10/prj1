import 'package:flutter/material.dart';
import 'package:prj1/constants.dart';
import 'package:prj1/views/onboarding_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        colorScheme: .fromSeed(seedColor: kPrimaryColor),
        fontFamily: "Montserrat",
      ),
      home: const OnboardingView(),
    );
  }
}
