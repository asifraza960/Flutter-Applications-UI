import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Customtextfield extends StatefulWidget {

  final TextEditingController controller;
  final String label;
  final IconData icon;
  final bool obcursetText;
  final Widget? suffixIcon;
  final String? Function(String)? Validator;

  const Customtextfield({
    required this.controller,
    required this.label,
    required this.icon,
    this.obcursetText = false,
    this.suffixIcon,
    this.Validator
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText:obcursetText,
      style: TextStyle(
        
      ),

    );
  }

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    throw UnimplementedError();
  }
