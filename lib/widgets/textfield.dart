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
        focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(
          width: 1,
          color: Color(0xffE4E5E7),
        )),
        enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(
          width: 1,
          color: Color(0xffE4E5E7),
        )),
        suffixIcon: Icon(icon),
        border: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Color(0xffE4E5E7),
          ),
        ),
        labelText: label,
        hintText: hinttext,
        hintStyle: const TextStyle(color: Color(0xff6E7682)),
        labelStyle: const TextStyle(
          color: Colors.black,
        ),
        floatingLabelAlignment: FloatingLabelAlignment.start,
        floatingLabelBehavior: FloatingLabelBehavior.always,
      ),
    );
  }
}
