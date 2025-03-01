import 'package:flutter/material.dart';

class ShakeWidget extends StatelessWidget {
  final AnimationController shakeController;
  final Widget child;

  const ShakeWidget({required this.shakeController, required this.child});

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: shakeController,
      builder: (context, child) {
        final offset = shakeController.value * 10;
        return Transform.translate(
          offset: Offset(offset, 0),
          child: child,
        );
      },
      child: child,
    );
  }
}