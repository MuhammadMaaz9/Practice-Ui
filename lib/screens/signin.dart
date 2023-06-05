import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
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
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur eu tellus porttitor, facilisis purus vel',
                    style: TextStyle(
                      color: Color(0xff6E7682),
                      fontSize: 15,
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: IntlPhoneField(
                      enabled: false,
                      onTap: () {},
                      flagsButtonPadding: const EdgeInsets.only(left: 10),
                      disableLengthCheck: true,
                      showDropdownIcon: true,
                      dropdownIconPosition: IconPosition.trailing,
                      decoration: const InputDecoration(
                        labelStyle: TextStyle(color: Colors.black),
                        filled: true,
                        fillColor: Colors.white,
                        hintText: '2365 2568 5645',
                        labelText: 'Mobile Number',
                        floatingLabelAlignment: FloatingLabelAlignment.start,
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(5.0)),
                          borderSide: BorderSide(
                              color: Color(0xffE4E5E7),
                              style: BorderStyle.solid),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(5.0)),
                          borderSide: BorderSide(
                              color: Color(0xffE4E5E7),
                              style: BorderStyle.solid),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(13.0)),
                          borderSide: BorderSide(
                              color: Color(0xffE4E5E7),
                              style: BorderStyle.solid),
                        ),
                      ),
                      initialCountryCode: 'US',
                    ),
                  ),
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
                          child: const Text('SIGN UP'))
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
