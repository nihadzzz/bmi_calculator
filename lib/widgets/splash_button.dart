import 'package:flutter/material.dart';

class SplashButton extends StatelessWidget {
  const SplashButton({
    super.key,
    required this.child,
    this.onTap,
    this.buttonColor = Colors.pink,
    this.buttonRadius = 12,
    this.isExpand = true,
  });

  final Widget child;
  final void Function()? onTap;
  final Color? buttonColor;
  final double buttonRadius;
  final bool isExpand;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: isExpand ? 1 : 0,
      child: Ink(
        decoration: BoxDecoration(
          color: buttonColor,
          borderRadius: BorderRadius.all(
            Radius.circular(buttonRadius),
          ),
        ),
        child: InkWell(
          borderRadius: BorderRadius.all(
            Radius.circular(buttonRadius),
          ),
          splashFactory: InkRipple.splashFactory,
          onTap: onTap,
          child: child,
        ),
      ),
    );
  }
}
