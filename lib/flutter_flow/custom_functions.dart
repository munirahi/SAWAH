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

bool isSubString(
  String? x,
  String? y,
) {
  x = x?.trim().toLowerCase() ?? '';
  y = y?.trim().toLowerCase() ?? '';
  return x.contains(y);
}

String fCMToken(LatLng latlng) {
  return '${latlng.latitude},${latlng.longitude}';
}

String convert(LatLng latlng) {
  return '${latlng.latitude},${latlng.longitude}';
}

String? maptext(
  LatLng? location,
  bool? isLat,
) {
  // Check if location is null
  if (location == null) {
    return null; // or return an appropriate message, e.g., 'Location not provided.'
  }

  // Check if isLat is not null and true
  if (isLat == true) {
    return '${location.latitude.toString()}';
  } else {
    return '${location.longitude.toString()}';
  }
}

List<DocumentReference>? sortExperience(List<DocumentReference>? data) {
  return data!.toSet().toList();
}

List<String>? clearStrListFn(List<String>? inputList) {
  if (inputList == null || inputList.isEmpty) {
    return [];
  }
// Filter out empty string values, and return the cleaned list
  var filteredList = inputList.where((item) => item.isNotEmpty).toList();
  return filteredList.isEmpty ? [] : filteredList;
}
