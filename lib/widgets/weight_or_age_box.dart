import 'increment_and_decrement_buttons.dart';
import 'package:flutter/material.dart';

class WeightOrAgeBox extends StatelessWidget {
  const WeightOrAgeBox({
    super.key,
    required this.title,
    required this.count,
    this.onRemove,
    this.onAdd,
  });

  final String title;
  final String count;
  final void Function()? onRemove;
  final void Function()? onAdd;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 18, top: 18),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            title,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 18,
            ),
          ),
          Text(
            count,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 38,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              IncrementAndDecrementButtons(
                icon: Icons.remove,
                onPressed: onRemove,
              ),
              const SizedBox(width: 30),
              IncrementAndDecrementButtons(
                icon: Icons.add,
                onPressed: onAdd,
              )
            ],
          )
        ],
      ),
    );
  }
}
