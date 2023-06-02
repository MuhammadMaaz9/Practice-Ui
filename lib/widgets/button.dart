import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String title;
  final VoidCallback ontap;

  const Button({
    super.key,
    required this.title,
    required this.ontap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Container(
        height: 60,
        decoration: BoxDecoration(
          color: Colors.purple,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Center(
          child: Text(title,
              style: const TextStyle(
                fontSize: 22,
                color: Colors.white,
              )),
        ),
      ),
    );
  }
}
