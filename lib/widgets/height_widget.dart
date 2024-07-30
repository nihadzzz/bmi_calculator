import 'package:bmi_calculator_app/widgets/splash_button.dart';
import 'package:flutter/material.dart';

class HeightWidget extends StatelessWidget {
  const HeightWidget({
    super.key,
    required this.onSlide,
    required this.height,
  });

  final void Function(double) onSlide;
  final double height;

  @override
  Widget build(BuildContext context) {
    return SplashButton(
      buttonColor: const Color(0xff1E1F32),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            'HEIGHT',
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.baseline,
            textBaseline: TextBaseline.alphabetic,
            children: [
              Text(
                height.toStringAsFixed(1),
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 45,
                ),
              ),
              const Text(
                'cm',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              )
            ],
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Slider.adaptive(
              thumbColor: Colors.pink,
              activeColor: Colors.white,
              inactiveColor: Colors.white38,
              min: 150,
              max: 200,
              value: height,
              onChanged: onSlide,
            ),
          )
        ],
      ),
    );
  }
}
