// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
import '/actions/actions.dart' as action_blocks;
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/custom_code/actions/index.dart'; // Imports custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:flutter/services.dart'; // For text input filtering

class PhoneNumberPicker extends StatefulWidget {
  const PhoneNumberPicker({
    super.key,
    this.width,
    this.height,
    this.userNumber,
  });

  final double? width;
  final double? height;
  final String? userNumber;

  @override
  State<PhoneNumberPicker> createState() => _PhoneNumberPickerState();
}

class _PhoneNumberPickerState extends State<PhoneNumberPicker> {
  String initNumber = '';

  @override
  void initState() {
    super.initState();
    // Ensure initial value is processed
    initNumber = widget.userNumber?.trim().replaceAll(' ', '') ?? '';
    print("Initial Number: $initNumber");
  }

  @override
  Widget build(BuildContext context) {
    return IntlPhoneField(
      initialValue: initNumber,
      decoration: InputDecoration(
        labelText: 'Phone Number',
        labelStyle: TextStyle(
          color: Colors.black,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(40),
          borderSide: BorderSide(
            width: 2,
            color: Color(0xFFE0E3E7),
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(40),
          borderSide: BorderSide(
            width: 2,
            color: Color(0xFFE0E3E7),
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(40),
          borderSide: BorderSide(
            width: 2,
            color: Color(0xFFE0E3E7),
          ),
        ),
      ),
      dropdownIcon: Icon(
        Icons.arrow_drop_down_outlined,
        size: 35,
        color: Color(0xFF57636C),
      ),
      inputFormatters: [
        FilteringTextInputFormatter.digitsOnly, // Only allow digits
      ],
      onChanged: (phone) {
        // Update phone number state in FlutterFlow or setState
        FFAppState().update(() {
          FFAppState().phoneNumber = phone.completeNumber;
        });
        print("Phone Number: ${phone.completeNumber}");
      },
      onCountryChanged: (country) {
        print('Country changed to: ${country.name}');
      },
    );
  }
}
