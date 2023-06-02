import 'package:flutter/material.dart';

class TextfieldWidget extends StatelessWidget {
  final String label;
  bool obscureText;
  final icon;
  final hinttext;
  TextfieldWidget(
      {super.key,
      required this.label,
      this.obscureText = false,
      this.icon,
      this.hinttext});

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: obscureText,
      decoration: InputDecoration(
        suffixIcon: Icon(icon),
        border: const OutlineInputBorder(),
        labelText: label,
        hintText: hinttext,
        labelStyle: TextStyle(
          color: Colors.black,
        ),
        floatingLabelAlignment: FloatingLabelAlignment.start,
        floatingLabelBehavior: FloatingLabelBehavior.always,
      ),
    );
  }
}
