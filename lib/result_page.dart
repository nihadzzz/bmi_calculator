import 'package:bmi_calculator_app/bmi_page.dart';
import 'package:bmi_calculator_app/widgets/re_calculate_button.dart';
import 'package:bmi_calculator_app/widgets/result_box.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatefulWidget {
  const ResultPage({
    super.key,
    required this.bmiResult,
  });
  final double bmiResult;

  @override
  State<ResultPage> createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  @override
  void initState() {
    startCheck();
    super.initState();
  }

  String? resultTitle;
  String? descriptionTite;
  Color? color;

  void startCheck() {
    if (widget.bmiResult > 18 && widget.bmiResult < 25) {
      // normal
      resultTitle = 'Normal';
      descriptionTite = 'Completely Normal. Good Job!';
      color = Colors.green;
    } else if (widget.bmiResult < 18) {
      // underweight
      resultTitle = 'underweight';
      descriptionTite = 'You Should Gain Weight';
      color = Colors.red;
    } else {
      // overweight
      resultTitle = 'overweight';
      descriptionTite = 'You Should lose Weight.';
      color = Colors.red;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff0a0e21),
      appBar: AppBar(
        backgroundColor: const Color(0xff0a0e21),
        leading: BackButton(
          color: Colors.white,
          onPressed: () {
            Navigator.pop(context, (_) => const BmiPage());
          },
        ),
        title: const Text('BMI Calculator'),
        titleTextStyle: const TextStyle(
          fontSize: 24,
        ),
      ),
      body: Column(
        children: [
          const Text(
            'YOUR RESULT',
            textAlign: TextAlign.start,
            style: TextStyle(
              color: Colors.white,
              fontSize: 40,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 18,
          ),
          ResultBox(
            bmiResult: widget.bmiResult,
            resultTitle: resultTitle!,
            resultColor: color!,
            resultDescription: descriptionTite!,
          ),
          const SizedBox(
            height: 30,
          ),
          const ReCalculateButton()
        ],
      ),
    );
  }
}
