import 'package:flutter/material.dart';
import 'package:uicheck/widgets/phone_number_field.dart';
import 'package:uicheck/widgets/textfield.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    bool minvalue = false;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                IconButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    icon: const Icon(Icons.arrow_back)),
                const SizedBox(
                  width: 9,
                ),
                const Text(
                  'Sign Up',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
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
                  TextfieldWidget(label: 'Full Name', hinttext: 'Jane Cooper'),
                  const SizedBox(
                    height: 25,
                  ),
                  TextfieldWidget(
                      label: 'Email', hinttext: 'janecooper@gmail.com'),
                  const SizedBox(
                    height: 25,
                  ),
                  const PhoneNumberField(),
                  const SizedBox(
                    height: 25,
                  ),
                  TextfieldWidget(
                    label: 'Password',
                    obscureText: true,
                    icon: Icons.remove_red_eye_sharp,
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Checkbox(
                  value: minvalue,
                  onChanged: (value) {},
                ),
                Text('I have read and agree to the'),
                TextButton(onPressed: () {}, child: Text('privacy policy')),
                Text(
                  '&',
                ),
                Flexible(
                  child: TextButton(
                      onPressed: () {},
                      child: Text(
                        'Terms & Conditions',
                      )),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
