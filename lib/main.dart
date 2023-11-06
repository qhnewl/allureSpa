import 'package:allurespa/Home/Home.dart';
import 'package:flutter/material.dart';

import 'Welcome/onboarding.dart';

void main() {
  runApp(const allaurespa());
}

class allaurespa extends StatelessWidget {
  const allaurespa({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}