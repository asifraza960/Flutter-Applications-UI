import 'package:flutter/material.dart';

class SocialLoginSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Or continue with',
          style: TextStyle(color: Colors.white70),
        ),
        SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _SocialButton(
              icon: Icons.g_mobiledata,
              onPressed: () {},
            ),
            SizedBox(width: 20),
            _SocialButton(
              icon: Icons.apple,
              onPressed: () {},
            ),
            SizedBox(width: 20),
            _SocialButton(
              icon: Icons.facebook,
              onPressed: () {},
            ),
          ],
        ),
      ],
    );
  }
}

class _SocialButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback onPressed;

  const _SocialButton({required this.icon, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.1),
        shape: BoxShape.circle,
      ),
      child: IconButton(
        icon: Icon(icon, color: Colors.white),
        onPressed: onPressed,
      ),
    );
  }
}