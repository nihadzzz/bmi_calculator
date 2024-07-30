import 'package:flutter/material.dart';

class GenderBoxWidget extends StatelessWidget {
  const GenderBoxWidget({
    super.key,
    required this.icon,
    required this.title,
  });

  final IconData icon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          size: 135,
          color: Colors.white,
        ),
        const SizedBox(
          height: 4,
        ),
        Text(
          title,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 18,
          ),
        ),
      ],
    );
  }
}
