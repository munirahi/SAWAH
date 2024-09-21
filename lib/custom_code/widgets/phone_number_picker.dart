// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/enums/enums.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:intl_phone_field/intl_phone_field.dart';

class PhoneNumberPicker extends StatefulWidget {
  const PhoneNumberPicker({
    super.key,
    this.width,
    this.height,
  });

  final double? width;
  final double? height;

  @override
  State<PhoneNumberPicker> createState() => _PhoneNumberPickerState();
}

class _PhoneNumberPickerState extends State<PhoneNumberPicker> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: IntlPhoneField(
        decoration: InputDecoration(
          labelText: 'Phone Number',
          border: OutlineInputBorder(
            borderSide: BorderSide(),
          ),
        ),
        languageCode: "en",
        onChanged: (phone) {
          FFAppState().update(() {
            FFAppState().phoneNumber = phone.completeNumber;
          });
          print(phone.completeNumber);
        },
        onCountryChanged: (country) {
          print('Country changed to: ' + country.name);
        },
      ),
    );
  }
}
