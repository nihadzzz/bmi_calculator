import 'package:bmi_calculator_app/result_page.dart';
import 'widgets/genders_boxes.dart';
import 'widgets/height_widget.dart';
import 'widgets/calculate_widget.dart';
import 'widgets/weight_and_age_boxes.dart';
import 'package:flutter/material.dart';

class BmiPage extends StatefulWidget {
  const BmiPage({super.key});

  @override
  State<BmiPage> createState() => _BmiPageState();
}

class _BmiPageState extends State<BmiPage> {
  double height = 177.4;
  int weight = 75;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff0a0e21),
      appBar: AppBar(
        backgroundColor: const Color(0xff0a0e21),
        title: const Text('BMI Calculator'),
        centerTitle: true,
        titleTextStyle: const TextStyle(
          fontSize: 24,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            const GendersBoxes(),
            const SizedBox(height: 20),
            HeightWidget(
              onSlide: (v) {
                height = v;
                setState(() {});
              },
              height: height,
            ),
            const SizedBox(height: 20),
            WeightAndAge(
              onWeightRemove: () {
                weight--;
                setState(() {});
              },
              onWeightAdd: () {
                weight++;
                setState(() {});
              },
              weight: weight,
            ),
            const SizedBox(height: 20),
            CalculateWidget(
              text: 'CALCULATE',
              onCalculate: () {
                final bmiResult = weight / (height/100 * height/100);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) =>  ResultPage(bmiResult: bmiResult),
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
