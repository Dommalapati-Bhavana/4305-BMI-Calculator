import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  final double bmi;

  const ResultPage({super.key, required this.bmi});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI Result'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Your BMI is:',
              style: TextStyle(fontSize: 24.0),
            ),
            const SizedBox(height: 10.0),
            Text(
              bmi.toStringAsFixed(1),
              style:
                  const TextStyle(fontSize: 48.0, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Go Back'),
            ),
          ],
        ),
      ),
    );
  }
}
