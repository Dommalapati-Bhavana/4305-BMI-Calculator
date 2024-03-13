// ignore: file_names
import 'package:flutter/material.dart';
import 'result_page.dart';

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  TextEditingController weightController = TextEditingController();
  TextEditingController heightController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI Calculator'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              controller: weightController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: 'Weight (kg)',
              ),
            ),
            const SizedBox(height: 20.0),
            TextField(
              controller: heightController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: 'Height (cm)',
              ),
            ),
            const SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                double weight = double.parse(weightController.text);
                double height = double.parse(heightController.text) / 100;
                double bmi = weight / (height * height);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ResultPage(bmi: bmi),
                  ),
                );
              },
              child: const Text('Calculate BMI'),
            ),
          ],
        ),
      ),
    );
  }
}
