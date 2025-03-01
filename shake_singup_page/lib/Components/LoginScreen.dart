import 'package:flutter/material.dart';

import 'LoginButton.dart';
import 'LoginForm.dart';
import 'LoginSection.dart';
import 'Shake_Widget.dart';


class PremiumLoginScreen extends StatefulWidget {
  @override
  _PremiumLoginScreenState createState() => _PremiumLoginScreenState();
}

class _PremiumLoginScreenState extends State<PremiumLoginScreen>
    with TickerProviderStateMixin {
  final _formKey = GlobalKey<FormState>();
  late AnimationController _shakeController;
  late AnimationController _buttonController;
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  bool _showPassword = false;
  bool _isLoading = false;

  @override
  void initState() {
    super.initState();
    _shakeController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 100),
    );
    _buttonController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 300),
    );
  }

  void _shake() {
    _shakeController.repeat(reverse: true, period: Duration(milliseconds: 50));
    Future.delayed(Duration(milliseconds: 300), () => _shakeController.reset());
  }

  void _submitForm() async {
    if (_formKey.currentState!.validate()) {
      setState(() => _isLoading = true);
      await _buttonController.forward();

      await Future.delayed(Duration(seconds: 2));
      setState(() => _isLoading = false);
      _buttonController.reverse();
    } else {
      _shake();
    }
  }

  @override
  void dispose() {
    _shakeController.dispose();
    _buttonController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedContainer(
        duration: Duration(milliseconds: 500),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color(0xFF6366F1),
              Color(0xFF8B5CF6),
            ],
          ),
        ),
        child: Stack(
          children: [
            Positioned(
              top: -100,
              left: -100,
              child: _AnimatedBlob(size: 250, color: Color(0x506B21A8)),
            ),
            Positioned(
              bottom: -150,
              right: -100,
              child: _AnimatedBlob(size: 300, color: Color(0x5037B1E3)),
            ),
            Center(
              child: SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.all(24),
                  child: ShakeWidget(
                    shakeController: _shakeController,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        _LoginHeader(),
                        SizedBox(height: 40),
                        LoginForm(
                          formKey: _formKey,
                          emailController: _emailController,
                          passwordController: _passwordController,
                          showPassword: _showPassword,
                          togglePassword: () =>
                              setState(() => _showPassword = !_showPassword),
                        ),
                        SizedBox(height: 30),
                        LoginButton(
                          isLoading: _isLoading,
                          controller: _buttonController,
                          onPressed: _submitForm,
                        ),
                        SizedBox(height: 30),
                        SocialLoginSection(),
                        SizedBox(height: 20),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            'Create New Account',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _AnimatedBlob extends StatelessWidget {
  final double size;
  final Color color;

  const _AnimatedBlob({required this.size, required this.color});

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(seconds: 10),
      curve: Curves.easeInOut,
      width: size,
      height: size,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: color,
      ),
    );
  }
}

class _LoginHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.1),
            shape: BoxShape.circle,
            border: Border.all(color: Colors.white.withOpacity(0.2), width: 2),
          ),
          child: Icon(Icons.person, size: 40, color: Colors.white),
        ),
        SizedBox(height: 20),
        Text(
          'Welcome Back!',
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
            color: Colors.white,
            letterSpacing: 1.2,
          ),
        ),
        SizedBox(height: 10),
        Text(
          'Please sign in to continue',
          style: TextStyle(
            fontSize: 16,
            color: Colors.white70,
          ),
        ),
      ],
    );
  }
}