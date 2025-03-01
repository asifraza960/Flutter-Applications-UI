import 'package:flutter/material.dart';

import 'CustomtextField.dart';


class LoginForm extends StatelessWidget {
  final GlobalKey<FormState> formKey;
  final TextEditingController emailController;
  final TextEditingController passwordController;
  final bool showPassword;
  final VoidCallback togglePassword;

  const LoginForm({
    required this.formKey,
    required this.emailController,
    required this.passwordController,
    required this.showPassword,
    required this.togglePassword,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        children: [
          CustomTextField(
            controller: emailController,
            label: 'Email Address',
            icon: Icons.email,
            validator: (value) =>
            value!.isEmpty ? 'Please enter your email' : null,
          ),
          SizedBox(height: 20),
          CustomTextField(
            controller: passwordController,
            label: 'Password',
            icon: Icons.lock,
            obscureText: !showPassword,
            suffixIcon: IconButton(
              icon: Icon(
                showPassword ? Icons.visibility : Icons.visibility_off,
                color: Colors.white70,
              ),
              onPressed: togglePassword,
            ),
            validator: (value) =>
            value!.isEmpty ? 'Please enter your password' : null,
          ),
          SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Checkbox(
                    value: true,
                    onChanged: (value) {},
                    fillColor: MaterialStateProperty.all(Colors.white),
                    checkColor: Color(0xFF6366F1),
                  ),
                  Text(
                    'Remember me',
                    style: TextStyle(color: Colors.white70),
                  ),
                ],
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  'Forgot Password?',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}