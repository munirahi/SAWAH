import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _isThisAcreater = prefs.getBool('ff_isThisAcreater') ?? _isThisAcreater;
    });
    _safeInit(() {
      _isThisUser = prefs.getBool('ff_isThisUser') ?? _isThisUser;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  bool _isThisAcreater = false;
  bool get isThisAcreater => _isThisAcreater;
  set isThisAcreater(bool value) {
    _isThisAcreater = value;
    prefs.setBool('ff_isThisAcreater', value);
  }

  bool _isThisUser = false;
  bool get isThisUser => _isThisUser;
  set isThisUser(bool value) {
    _isThisUser = value;
    prefs.setBool('ff_isThisUser', value);
  }

  bool _emailState = false;
  bool get emailState => _emailState;
  set emailState(bool value) {
    _emailState = value;
  }

  bool _passwordState = false;
  bool get passwordState => _passwordState;
  set passwordState(bool value) {
    _passwordState = value;
  }

  String _phoneNumber = '';
  String get phoneNumber => _phoneNumber;
  set phoneNumber(String value) {
    _phoneNumber = value;
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
