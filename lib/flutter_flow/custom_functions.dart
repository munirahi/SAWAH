import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
import '/auth/firebase_auth/auth_util.dart';

String? validatePassword(String? password) {
  // Check if the password is null
  if (password == null || password.isEmpty) {
    return 'Password cannot be empty.';
  }

  String errorMessage = '';

  // Check password length greater than 6
  if (password.length < 6) {
    errorMessage += 'Password must be longer than 6 characters.\n';
  }

  // Check for at least one uppercase letter
  if (!password.contains(RegExp(r'[A-Z]'))) {
    errorMessage += '• Uppercase letter is missing.\n';
  }

  // Check for at least one lowercase letter
  if (!password.contains(RegExp(r'[a-z]'))) {
    errorMessage += '• Lowercase letter is missing.\n';
  }

  // Check for at least one digit
  if (!password.contains(RegExp(r'[0-9]'))) {
    errorMessage += '• Digit is missing.\n';
  }

  // Check for at least one special character
  if (!password.contains(RegExp(r'[!@#%^&*(),.?":{}|<>]'))) {
    errorMessage += '• Special character is missing.\n';
  }

  // Return error message if there are any issues
  if (errorMessage.isNotEmpty) {
    return errorMessage;
  }

  // If no errors, return null indicating password is valid
  return null;
}

bool isSubString(
  String? x,
  String? y,
) {
  x = x?.trim().toLowerCase() ?? '';
  y = y?.trim().toLowerCase() ?? '';
  return x.contains(y);
}
