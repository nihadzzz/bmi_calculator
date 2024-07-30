import 'splash_button.dart';
import 'package:flutter/material.dart';

class CalculateWidget extends StatelessWidget {
  const CalculateWidget({
    super.key,
    required this.onCalculate,
    required this.text,
  });

  final void Function() onCalculate;
  final String text;

  @override
  Widget build(BuildContext context) {
    return SplashButton(
      isExpand: false,
      onTap: onCalculate,
      child: Padding(
        padding: const EdgeInsets.only(top: 20, bottom: 20, right: 122, left: 122),
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 22,
          ),
        ),
      ),
    );
  }
}
