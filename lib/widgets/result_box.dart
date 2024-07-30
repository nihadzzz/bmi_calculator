import 'package:bmi_calculator_app/widgets/splash_button.dart';
import 'package:flutter/material.dart';

class ResultBox extends StatelessWidget {
  const ResultBox({
    super.key,
    required this.bmiResult,
    required this.resultTitle,
    required this.resultColor,
    required this.resultDescription,
  });

  final double bmiResult;
  final String resultTitle;
  final Color resultColor;
  final String resultDescription;
  @override
  Widget build(BuildContext context) {
    return SplashButton(
      isExpand: true,
      buttonColor: const Color(0xff1E1F32),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            resultTitle,
            style: TextStyle(
              color: resultColor,
              fontSize: 30,
            ),
          ),
          Text(
            bmiResult.toStringAsFixed(1),
            style: const TextStyle(
                color: Colors.white,
                fontSize: 65,
                fontWeight: FontWeight.bold),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 70,right: 70),
            child: Text(
              resultDescription,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),
            ),
          )
        ],
      ),
    );
  }
}
