import 'package:flutter/material.dart';

class LoginButton extends StatelessWidget {
  final bool isLoading;
  final AnimationController controller;
  final VoidCallback onPressed;

  const LoginButton({
    required this.isLoading,
    required this.controller,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: controller,
      builder: (context, child) {
        return Transform.translate(
          offset: Offset(0, -10 * controller.value),
          child: Container(
            width: 200,
            height: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              boxShadow: [
                BoxShadow(
                  color: Color(0xFF6366F1).withOpacity(0.4),
                  blurRadius: 20,
                  spreadRadius: 2,
                  offset: Offset(0, 10),
                ),
              ],
              gradient: LinearGradient(
                colors: [
                  Color(0xFF818CF8),
                  Color(0xFF6366F1),
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
            child: Material(
              color: Colors.transparent,
              child: InkWell(
                borderRadius: BorderRadius.circular(25),
                onTap: onPressed,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    if (!isLoading)
                      Text(
                        'SIGN IN',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1.2,
                        ),
                      ),
                    if (isLoading)
                      CircularProgressIndicator(
                        strokeWidth: 2,
                        valueColor: AlwaysStoppedAnimation(Colors.white),
                      ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}