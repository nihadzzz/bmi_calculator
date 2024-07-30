import 'splash_button.dart';
import 'weight_or_age_box.dart';
import 'package:flutter/material.dart';

class WeightAndAge extends StatefulWidget {
  const WeightAndAge({
    super.key,
    required this.onWeightRemove,
    required this.onWeightAdd,
    required this.weight,
  });

  final int weight;
  final void Function() onWeightRemove;
  final void Function() onWeightAdd;

  @override
  State<WeightAndAge> createState() => _WeightAndAgeState();
}

class _WeightAndAgeState extends State<WeightAndAge> {
  int age = 30;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        children: [
          SplashButton(
            buttonColor: const Color(0xff1E1F32),
            child: WeightOrAgeBox(
                title: 'WEIGHT',
                count: '${widget.weight}',
                onRemove: widget.onWeightRemove,
                onAdd: widget.onWeightAdd),
          ),
          const SizedBox(
            width: 16,
          ),
          SplashButton(
            buttonColor: const Color(0xff1E1F32),
            child: WeightOrAgeBox(
              title: 'AGE',
              count: '$age',
              onRemove: () {
                age--;
                setState(() {});
              },
              onAdd: () {
                age++;
                setState(() {});
              },
            ),
          )
        ],
      ),
    );
  }
}
