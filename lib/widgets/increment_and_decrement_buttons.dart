import 'package:flutter/material.dart';

class IncrementAndDecrementButtons extends StatelessWidget {
  const IncrementAndDecrementButtons({
    super.key,
    required this.icon,
    this.onPressed,
  });

  final IconData icon;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      heroTag: DateTime.now(),
      backgroundColor: const Color.fromARGB(255, 52, 51, 51),
      foregroundColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
      ),
      onPressed: onPressed,
      child: Icon(icon),
    );
  }
}
