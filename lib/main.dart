import 'package:flutter/material.dart';
import 'input-page.dart';

void main() {
  runApp(const BMICalculator());
}

class BMICalculator extends StatelessWidget {
  const BMICalculator({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: const Color.fromARGB(255, 62, 228, 170),
        scaffoldBackgroundColor: const Color.fromARGB(255, 18, 74, 216),
      ),
      home: const InputPage(),
    );
  }
}
