import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class PhoneNumberField extends StatelessWidget {
  const PhoneNumberField({super.key});

  @override
  Widget build(BuildContext context) {
    return IntlPhoneField(
      dropdownDecoration: const BoxDecoration(
        shape: BoxShape.rectangle,
      ),
      disableLengthCheck: true,
      flagsButtonMargin: const EdgeInsets.only(left: 10),
      dropdownIcon: const Icon(
        Icons.keyboard_arrow_down,
        color: Colors.brown,
      ),
      dropdownIconPosition: IconPosition.trailing,
      decoration: const InputDecoration(
        alignLabelWithHint: true,
        floatingLabelBehavior: FloatingLabelBehavior.always,
        floatingLabelAlignment: FloatingLabelAlignment.start,
        label: Text('Mobile Phone'),
        labelStyle: TextStyle(
          color: Colors.black,
          fontSize: 20,
        ),
        border: OutlineInputBorder(borderSide: BorderSide()),
        hintText: ' 2365 2568 5645',
      ),
    );
  }
}
