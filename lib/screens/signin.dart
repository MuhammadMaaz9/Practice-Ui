import 'package:flutter/material.dart';
import 'package:uicheck/screens/signup.dart';
import 'package:uicheck/widgets/button.dart';
import 'package:uicheck/widgets/phone_number_field.dart';
import 'package:uicheck/widgets/textfield.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
                  'Sign In',
                  style: TextStyle(
                    fontSize: 18,
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
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur eu tellus porttitor, facilisis purus vel'),
                  const SizedBox(
                    height: 40,
                  ),
                  const PhoneNumberField(),
                  const SizedBox(
                    height: 25,
                  ),
                  TextfieldWidget(
                      label: 'Password',
                      obscureText: true,
                      icon: Icons.remove_red_eye_sharp),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      GestureDetector(
                          onTap: () {}, child: const Text('Forgot Password?'))
                    ],
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Button(
                    title: 'Sign In',
                    ontap: () {
                      debugPrint('Sign in button tap');
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Don't have an account?"),
                      TextButton(
                          onPressed: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => const SignUp(),
                              ),
                            );
                          },
                          child: Text('SIGN UP'))
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
