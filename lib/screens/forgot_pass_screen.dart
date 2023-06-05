import 'package:flutter/material.dart';
import 'package:uicheck/widgets/button.dart';
import 'package:uicheck/widgets/textfield.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                IconButton(
                    onPressed: () {}, icon: const Icon(Icons.arrow_back)),
                const SizedBox(
                  width: 9,
                ),
                const Text(
                  'Forgot Password',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Color(0xff0C1037),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 14),
              child: Column(
                children: [
                  const SizedBox(
                    height: 15,
                  ),
                  const Text(
                      style: TextStyle(
                        color: Color(0xff6E7682),
                        fontSize: 15,
                      ),
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur eu tellus porttitor, facilisis purus vel'),
                  const SizedBox(
                    height: 40,
                  ),
                  TextfieldWidget(
                    label: 'Email',
                    hinttext: 'janecooper@gmail.com',
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Button(
                    title: 'Reset Password',
                    ontap: () {},
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
