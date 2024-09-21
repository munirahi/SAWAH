import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ExperiencesRecord extends FirestoreRecord {
  ExperiencesRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "DropDown" field.
  List<int>? _dropDown;
  List<int> get dropDown => _dropDown ?? const [];
  bool hasDropDown() => _dropDown != null;

  // "CountController1" field.
  int? _countController1;
  int get countController1 => _countController1 ?? 0;
  bool hasCountController1() => _countController1 != null;

  // "Calendar" field.
  DateTime? _calendar;
  DateTime? get calendar => _calendar;
  bool hasCalendar() => _calendar != null;

  // "Experiencename1" field.
  String? _experiencename1;
  String get experiencename1 => _experiencename1 ?? '';
  bool hasExperiencename1() => _experiencename1 != null;

  // "Experience_about1" field.
  String? _experienceAbout1;
  String get experienceAbout1 => _experienceAbout1 ?? '';
  bool hasExperienceAbout1() => _experienceAbout1 != null;

  // "CountController" field.
  int? _countController;
  int get countController => _countController ?? 0;
  bool hasCountController() => _countController != null;

  // "AgeField1" field.
  int? _ageField1;
  int get ageField1 => _ageField1 ?? 0;
  bool hasAgeField1() => _ageField1 != null;

  // "AgeField2" field.
  int? _ageField2;
  int get ageField2 => _ageField2 ?? 0;
  bool hasAgeField2() => _ageField2 != null;

  // "PriceField1" field.
  double? _priceField1;
  double get priceField1 => _priceField1 ?? 0.0;
  bool hasPriceField1() => _priceField1 != null;

  // "TimeField1" field.
  DateTime? _timeField1;
  DateTime? get timeField1 => _timeField1;
  bool hasTimeField1() => _timeField1 != null;

  // "TimeField2" field.
  DateTime? _timeField2;
  DateTime? get timeField2 => _timeField2;
  bool hasTimeField2() => _timeField2 != null;

  // "Calendar1" field.
  DateTime? _calendar1;
  DateTime? get calendar1 => _calendar1;
  bool hasCalendar1() => _calendar1 != null;

  // "emailAddress" field.
  String? _emailAddress;
  String get emailAddress => _emailAddress ?? '';
  bool hasEmailAddress() => _emailAddress != null;

  // "CreditCardForm2" field.
  int? _creditCardForm2;
  int get creditCardForm2 => _creditCardForm2 ?? 0;
  bool hasCreditCardForm2() => _creditCardForm2 != null;

  // "PhoneNumberPicker" field.
  int? _phoneNumberPicker;
  int get phoneNumberPicker => _phoneNumberPicker ?? 0;
  bool hasPhoneNumberPicker() => _phoneNumberPicker != null;

  // "CreditCardForm1" field.
  int? _creditCardForm1;
  int get creditCardForm1 => _creditCardForm1 ?? 0;
  bool hasCreditCardForm1() => _creditCardForm1 != null;

  void _initializeFields() {
    _dropDown = getDataList(snapshotData['DropDown']);
    _countController1 = castToType<int>(snapshotData['CountController1']);
    _calendar = snapshotData['Calendar'] as DateTime?;
    _experiencename1 = snapshotData['Experiencename1'] as String?;
    _experienceAbout1 = snapshotData['Experience_about1'] as String?;
    _countController = castToType<int>(snapshotData['CountController']);
    _ageField1 = castToType<int>(snapshotData['AgeField1']);
    _ageField2 = castToType<int>(snapshotData['AgeField2']);
    _priceField1 = castToType<double>(snapshotData['PriceField1']);
    _timeField1 = snapshotData['TimeField1'] as DateTime?;
    _timeField2 = snapshotData['TimeField2'] as DateTime?;
    _calendar1 = snapshotData['Calendar1'] as DateTime?;
    _emailAddress = snapshotData['emailAddress'] as String?;
    _creditCardForm2 = castToType<int>(snapshotData['CreditCardForm2']);
    _phoneNumberPicker = castToType<int>(snapshotData['PhoneNumberPicker']);
    _creditCardForm1 = castToType<int>(snapshotData['CreditCardForm1']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Experiences');

  static Stream<ExperiencesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ExperiencesRecord.fromSnapshot(s));

  static Future<ExperiencesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ExperiencesRecord.fromSnapshot(s));

  static ExperiencesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ExperiencesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ExperiencesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ExperiencesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ExperiencesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ExperiencesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createExperiencesRecordData({
  int? countController1,
  DateTime? calendar,
  String? experiencename1,
  String? experienceAbout1,
  int? countController,
  int? ageField1,
  int? ageField2,
  double? priceField1,
  DateTime? timeField1,
  DateTime? timeField2,
  DateTime? calendar1,
  String? emailAddress,
  int? creditCardForm2,
  int? phoneNumberPicker,
  int? creditCardForm1,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'CountController1': countController1,
      'Calendar': calendar,
      'Experiencename1': experiencename1,
      'Experience_about1': experienceAbout1,
      'CountController': countController,
      'AgeField1': ageField1,
      'AgeField2': ageField2,
      'PriceField1': priceField1,
      'TimeField1': timeField1,
      'TimeField2': timeField2,
      'Calendar1': calendar1,
      'emailAddress': emailAddress,
      'CreditCardForm2': creditCardForm2,
      'PhoneNumberPicker': phoneNumberPicker,
      'CreditCardForm1': creditCardForm1,
    }.withoutNulls,
  );

  return firestoreData;
}

class ExperiencesRecordDocumentEquality implements Equality<ExperiencesRecord> {
  const ExperiencesRecordDocumentEquality();

  @override
  bool equals(ExperiencesRecord? e1, ExperiencesRecord? e2) {
    const listEquality = ListEquality();
    return listEquality.equals(e1?.dropDown, e2?.dropDown) &&
        e1?.countController1 == e2?.countController1 &&
        e1?.calendar == e2?.calendar &&
        e1?.experiencename1 == e2?.experiencename1 &&
        e1?.experienceAbout1 == e2?.experienceAbout1 &&
        e1?.countController == e2?.countController &&
        e1?.ageField1 == e2?.ageField1 &&
        e1?.ageField2 == e2?.ageField2 &&
        e1?.priceField1 == e2?.priceField1 &&
        e1?.timeField1 == e2?.timeField1 &&
        e1?.timeField2 == e2?.timeField2 &&
        e1?.calendar1 == e2?.calendar1 &&
        e1?.emailAddress == e2?.emailAddress &&
        e1?.creditCardForm2 == e2?.creditCardForm2 &&
        e1?.phoneNumberPicker == e2?.phoneNumberPicker &&
        e1?.creditCardForm1 == e2?.creditCardForm1;
  }

  @override
  int hash(ExperiencesRecord? e) => const ListEquality().hash([
        e?.dropDown,
        e?.countController1,
        e?.calendar,
        e?.experiencename1,
        e?.experienceAbout1,
        e?.countController,
        e?.ageField1,
        e?.ageField2,
        e?.priceField1,
        e?.timeField1,
        e?.timeField2,
        e?.calendar1,
        e?.emailAddress,
        e?.creditCardForm2,
        e?.phoneNumberPicker,
        e?.creditCardForm1
      ]);

  @override
  bool isValidKey(Object? o) => o is ExperiencesRecord;
}
