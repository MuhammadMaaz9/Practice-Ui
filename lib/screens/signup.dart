import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:uicheck/screens/verfication_screen.dart';
import 'package:uicheck/widgets/button.dart';
import 'package:uicheck/widgets/textfield.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    bool minvalue = false;
    List code = ['+1', '+44', '+49', '+33', '+880', '+91', '+1'];
    List flagimage = [
      'asset/us.png',
      'asset/uk.png',
      'asset/canada.png',
      'asset/bangladesh.png',
      'asset/france.png',
      'asset/germany.png',
      'asset/india.png',
    ];
    List countryname = [
      'United States',
      'United Kingdom',
      'Germany',
      'France',
      'India',
      'Bangladesh',
      'Canada'
    ];
    List icon = [
      Icons.radio_button_checked,
      Icons.radio_button_off,
      Icons.radio_button_off,
      Icons.radio_button_off,
      Icons.radio_button_off,
      Icons.radio_button_off,
      Icons.radio_button_off
    ];

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Row(
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                        debugPrint('Back tapped');
                      },
                      icon: const Icon(Icons.arrow_back)),
                  const SizedBox(
                    width: 9,
                  ),
                  const Text(
                    'Sign Up',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Color(0xff0C1037),
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
                        style: TextStyle(
                          color: Color(0xff6E7682),
                          fontSize: 15,
                        ),
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur eu tellus porttitor, facilisis purus vel'),
                    const SizedBox(
                      height: 40,
                    ),
                    TextfieldWidget(
                        label: 'Full Name', hinttext: 'Jane Cooper'),
                    const SizedBox(
                      height: 25,
                    ),
                    TextfieldWidget(
                        label: 'Email', hinttext: 'janecooper@gmail.com'),
                    const SizedBox(
                      height: 25,
                    ),
                    // TextField(
                    //   decoration: InputDecoration(
                    //     prefix: flag(),
                    //     labelText: 'Mobile Number',

                    //   ),
                    // ),
                    GestureDetector(
                      onTap: () {
                        showModalBottomSheet(
                          shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30),
                            topRight: Radius.circular(30),
                          )),
                          context: context,
                          builder: (context) {
                            return Column(
                              //mainAxisSize: MainAxisSize.min,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Padding(
                                      padding: EdgeInsets.only(left: 25),
                                      child: Text(
                                        'Select Country Code',
                                        style: TextStyle(
                                            fontSize: 20,
                                            color: Color(0xff0C1037)),
                                      ),
                                    ),
                                    IconButton(
                                        onPressed: () {},
                                        icon: Image.asset('asset/x.png'))
                                  ],
                                ),
                                Expanded(
                                  child: ListView.builder(
                                    itemCount: code.length,
                                    itemBuilder: (context, index) {
                                      return ListTile(
                                        leading: Image.asset(flagimage[index]),
                                        title: Text(
                                            '${code[index]}     ${countryname[index]}'),
                                        trailing: Icon(icon[index]),
                                      );
                                      // Row(
                                      //   mainAxisAlignment:
                                      //       MainAxisAlignment.spaceEvenly,
                                      //   crossAxisAlignment:
                                      //       CrossAxisAlignment.start,
                                      //   children: [
                                      //     Image.asset(flagimage[index]),
                                      //     Text(code[index].toString()),
                                      //     Text(countryname[index]),
                                      //     Icon(icon[index])
                                      //   ],
                                      // );
                                    },
                                  ),
                                )
                              ],
                            );
                          },
                        );
                      },
                      child: SizedBox(
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
                            floatingLabelAlignment:
                                FloatingLabelAlignment.start,
                            floatingLabelBehavior: FloatingLabelBehavior.always,
                            focusedBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5.0)),
                              borderSide: BorderSide(
                                  color: Color(0xffE4E5E7),
                                  style: BorderStyle.solid),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5.0)),
                              borderSide: BorderSide(
                                  color: Color(0xffE4E5E7),
                                  style: BorderStyle.solid),
                            ),
                            border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(13.0)),
                              borderSide: BorderSide(
                                  color: Color(0xffE4E5E7),
                                  style: BorderStyle.solid),
                            ),
                          ),
                          initialCountryCode: 'US',
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    TextfieldWidget(
                      label: 'Password',
                      obscureText: true,
                      icon: Icons.remove_red_eye_sharp,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            SizedBox(
                              height: 20,
                              child: Checkbox(
                                value: minvalue,
                                onChanged: (value) {},
                              ),
                            ),
                            const Text(
                              'I have read and agree to the',
                              style: TextStyle(
                                fontSize: 16,
                              ),
                            ),
                            TextButton(
                                onPressed: () {},
                                child: const Text(
                                  'privacy policy',
                                  style: TextStyle(fontSize: 16),
                                )),
                            const Text(
                              '&',
                              style: TextStyle(
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 22),
                          child: TextButton(
                              onPressed: () {},
                              child: const Text(
                                'Terms & Conditions',
                                style: TextStyle(
                                  fontSize: 16,
                                ),
                              )),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Button(
                      title: 'Sign Up',
                      ontap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => const VerificationScreen(),
                          ),
                        );
                      },
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text("Already have an account?"),
                        TextButton(
                            onPressed: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => const SignUp(),
                                ),
                              );
                            },
                            child: const Text('SIGN IN'))
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
