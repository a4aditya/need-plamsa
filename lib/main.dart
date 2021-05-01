import 'package:flutter/material.dart';
import 'package:flutter_app/screens/details/donor_details.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_app/screens/onboarding_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Khoj',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: Theme.of(context).textTheme,
      ),
      home: OnboardingScreen(),
    );
  }
}
