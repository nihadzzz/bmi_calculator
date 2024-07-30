import 'package:bmi_calculator_app/bmi_page.dart';
import 'package:bmi_calculator_app/widgets/splash_button.dart';
import 'package:flutter/material.dart';

class ReCalculateButton extends StatelessWidget {
  const ReCalculateButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SplashButton(
      isExpand: false,
      onTap: () {
        Navigator.pop(
          context,
          MaterialPageRoute(
            builder: (_) => const BmiPage(),
          ),
        );
      },
      child: const SafeArea(
        child: Padding(
          padding: EdgeInsets.only(
            top: 20,
            bottom: 20,
            right: 122,
            left: 125,
          ),
          child: Text(
            'RE-CALCULATE',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
        ),
      ),
    );
  }
}
