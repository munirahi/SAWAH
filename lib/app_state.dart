import 'package:flutter/material.dart';
import 'flutter_flow/request_manager.dart';
import '/backend/backend.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

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
    _safeInit(() {
      _CurrentDate = prefs.containsKey('ff_CurrentDate')
          ? DateTime.fromMillisecondsSinceEpoch(prefs.getInt('ff_CurrentDate')!)
          : _CurrentDate;
    });
    _safeInit(() {
      _multipleUsers = prefs
              .getStringList('ff_multipleUsers')
              ?.map((path) => path.ref)
              .toList() ??
          _multipleUsers;
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

  bool _searchActive = false;
  bool get searchActive => _searchActive;
  set searchActive(bool value) {
    _searchActive = value;
  }

  bool _verfiyEmail = false;
  bool get verfiyEmail => _verfiyEmail;
  set verfiyEmail(bool value) {
    _verfiyEmail = value;
  }

  DateTime? _CurrentDate = DateTime.fromMillisecondsSinceEpoch(1729011900000);
  DateTime? get CurrentDate => _CurrentDate;
  set CurrentDate(DateTime? value) {
    _CurrentDate = value;
    value != null
        ? prefs.setInt('ff_CurrentDate', value.millisecondsSinceEpoch)
        : prefs.remove('ff_CurrentDate');
  }

  List<SitesDatatypeStruct> _siteAppstate = [];
  List<SitesDatatypeStruct> get siteAppstate => _siteAppstate;
  set siteAppstate(List<SitesDatatypeStruct> value) {
    _siteAppstate = value;
  }

  void addToSiteAppstate(SitesDatatypeStruct value) {
    siteAppstate.add(value);
  }

  void removeFromSiteAppstate(SitesDatatypeStruct value) {
    siteAppstate.remove(value);
  }

  void removeAtIndexFromSiteAppstate(int index) {
    siteAppstate.removeAt(index);
  }

  void updateSiteAppstateAtIndex(
    int index,
    SitesDatatypeStruct Function(SitesDatatypeStruct) updateFn,
  ) {
    siteAppstate[index] = updateFn(_siteAppstate[index]);
  }

  void insertAtIndexInSiteAppstate(int index, SitesDatatypeStruct value) {
    siteAppstate.insert(index, value);
  }

  double _userlat = 0.0;
  double get userlat => _userlat;
  set userlat(double value) {
    _userlat = value;
  }

  double _userLong = 0.0;
  double get userLong => _userLong;
  set userLong(double value) {
    _userLong = value;
  }

  LatLng? _location = const LatLng(24.7222078, 46.6258804);
  LatLng? get location => _location;
  set location(LatLng? value) {
    _location = value;
  }

  double _isApiHasrResponse = 0.0;
  double get isApiHasrResponse => _isApiHasrResponse;
  set isApiHasrResponse(double value) {
    _isApiHasrResponse = value;
  }

  bool _conformLocation = false;
  bool get conformLocation => _conformLocation;
  set conformLocation(bool value) {
    _conformLocation = value;
  }

  List<DocumentReference> _multipleUsers = [];
  List<DocumentReference> get multipleUsers => _multipleUsers;
  set multipleUsers(List<DocumentReference> value) {
    _multipleUsers = value;
    prefs.setStringList('ff_multipleUsers', value.map((x) => x.path).toList());
  }

  void addToMultipleUsers(DocumentReference value) {
    multipleUsers.add(value);
    prefs.setStringList(
        'ff_multipleUsers', _multipleUsers.map((x) => x.path).toList());
  }

  void removeFromMultipleUsers(DocumentReference value) {
    multipleUsers.remove(value);
    prefs.setStringList(
        'ff_multipleUsers', _multipleUsers.map((x) => x.path).toList());
  }

  void removeAtIndexFromMultipleUsers(int index) {
    multipleUsers.removeAt(index);
    prefs.setStringList(
        'ff_multipleUsers', _multipleUsers.map((x) => x.path).toList());
  }

  void updateMultipleUsersAtIndex(
    int index,
    DocumentReference Function(DocumentReference) updateFn,
  ) {
    multipleUsers[index] = updateFn(_multipleUsers[index]);
    prefs.setStringList(
        'ff_multipleUsers', _multipleUsers.map((x) => x.path).toList());
  }

  void insertAtIndexInMultipleUsers(int index, DocumentReference value) {
    multipleUsers.insert(index, value);
    prefs.setStringList(
        'ff_multipleUsers', _multipleUsers.map((x) => x.path).toList());
  }

  String _searchQuery = '\" \"';
  String get searchQuery => _searchQuery;
  set searchQuery(String value) {
    _searchQuery = value;
  }

  String _filterList = '';
  String get filterList => _filterList;
  set filterList(String value) {
    _filterList = value;
  }

  bool _filterActive = false;
  bool get filterActive => _filterActive;
  set filterActive(bool value) {
    _filterActive = value;
  }

  List<DocumentReference> _revrecreate = [];
  List<DocumentReference> get revrecreate => _revrecreate;
  set revrecreate(List<DocumentReference> value) {
    _revrecreate = value;
  }

  void addToRevrecreate(DocumentReference value) {
    revrecreate.add(value);
  }

  void removeFromRevrecreate(DocumentReference value) {
    revrecreate.remove(value);
  }

  void removeAtIndexFromRevrecreate(int index) {
    revrecreate.removeAt(index);
  }

  void updateRevrecreateAtIndex(
    int index,
    DocumentReference Function(DocumentReference) updateFn,
  ) {
    revrecreate[index] = updateFn(_revrecreate[index]);
  }

  void insertAtIndexInRevrecreate(int index, DocumentReference value) {
    revrecreate.insert(index, value);
  }

  final _exDetailsManager = StreamRequestManager<List<ExperiencesRecord>>();
  Stream<List<ExperiencesRecord>> exDetails({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Stream<List<ExperiencesRecord>> Function() requestFn,
  }) =>
      _exDetailsManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearExDetailsCache() => _exDetailsManager.clear();
  void clearExDetailsCacheKey(String? uniqueKey) =>
      _exDetailsManager.clearRequest(uniqueKey);

  final _userDocQueryManager = FutureRequestManager<UsersRecord>();
  Future<UsersRecord> userDocQuery({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<UsersRecord> Function() requestFn,
  }) =>
      _userDocQueryManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearUserDocQueryCache() => _userDocQueryManager.clear();
  void clearUserDocQueryCacheKey(String? uniqueKey) =>
      _userDocQueryManager.clearRequest(uniqueKey);
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
