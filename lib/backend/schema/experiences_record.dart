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

  // "PhoneNumberPicker" field.
  int? _phoneNumberPicker;
  int get phoneNumberPicker => _phoneNumberPicker ?? 0;
  bool hasPhoneNumberPicker() => _phoneNumberPicker != null;

  // "TimeField1" field.
  String? _timeField1;
  String get timeField1 => _timeField1 ?? '';
  bool hasTimeField1() => _timeField1 != null;

  // "TimeField2" field.
  String? _timeField2;
  String get timeField2 => _timeField2 ?? '';
  bool hasTimeField2() => _timeField2 != null;

  // "RadioButton1" field.
  String? _radioButton1;
  String get radioButton1 => _radioButton1 ?? '';
  bool hasRadioButton1() => _radioButton1 != null;

  // "event_date1" field.
  String? _eventDate1;
  String get eventDate1 => _eventDate1 ?? '';
  bool hasEventDate1() => _eventDate1 != null;

  // "event_date2" field.
  String? _eventDate2;
  String get eventDate2 => _eventDate2 ?? '';
  bool hasEventDate2() => _eventDate2 != null;

  // "PriceField1" field.
  double? _priceField1;
  double get priceField1 => _priceField1 ?? 0.0;
  bool hasPriceField1() => _priceField1 != null;

  // "PhotoButton" field.
  String? _photoButton;
  String get photoButton => _photoButton ?? '';
  bool hasPhotoButton() => _photoButton != null;

  // "creator" field.
  DocumentReference? _creator;
  DocumentReference? get creator => _creator;
  bool hasCreator() => _creator != null;

  // "users" field.
  List<DocumentReference>? _users;
  List<DocumentReference> get users => _users ?? const [];
  bool hasUsers() => _users != null;

  // "BookingDate" field.
  String? _bookingDate;
  String get bookingDate => _bookingDate ?? '';
  bool hasBookingDate() => _bookingDate != null;

  // "BookingTime" field.
  String? _bookingTime;
  String get bookingTime => _bookingTime ?? '';
  bool hasBookingTime() => _bookingTime != null;

  // "emailAddressGuest" field.
  String? _emailAddressGuest;
  String get emailAddressGuest => _emailAddressGuest ?? '';
  bool hasEmailAddressGuest() => _emailAddressGuest != null;

  void _initializeFields() {
    _dropDown = getDataList(snapshotData['DropDown']);
    _countController1 = castToType<int>(snapshotData['CountController1']);
    _experiencename1 = snapshotData['Experiencename1'] as String?;
    _experienceAbout1 = snapshotData['Experience_about1'] as String?;
    _countController = castToType<int>(snapshotData['CountController']);
    _ageField1 = castToType<int>(snapshotData['AgeField1']);
    _ageField2 = castToType<int>(snapshotData['AgeField2']);
    _phoneNumberPicker = castToType<int>(snapshotData['PhoneNumberPicker']);
    _timeField1 = snapshotData['TimeField1'] as String?;
    _timeField2 = snapshotData['TimeField2'] as String?;
    _radioButton1 = snapshotData['RadioButton1'] as String?;
    _eventDate1 = snapshotData['event_date1'] as String?;
    _eventDate2 = snapshotData['event_date2'] as String?;
    _priceField1 = castToType<double>(snapshotData['PriceField1']);
    _photoButton = snapshotData['PhotoButton'] as String?;
    _creator = snapshotData['creator'] as DocumentReference?;
    _users = getDataList(snapshotData['users']);
    _bookingDate = snapshotData['BookingDate'] as String?;
    _bookingTime = snapshotData['BookingTime'] as String?;
    _emailAddressGuest = snapshotData['emailAddressGuest'] as String?;
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
  String? experiencename1,
  String? experienceAbout1,
  int? countController,
  int? ageField1,
  int? ageField2,
  int? phoneNumberPicker,
  String? timeField1,
  String? timeField2,
  String? radioButton1,
  String? eventDate1,
  String? eventDate2,
  double? priceField1,
  String? photoButton,
  DocumentReference? creator,
  String? bookingDate,
  String? bookingTime,
  String? emailAddressGuest,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'CountController1': countController1,
      'Experiencename1': experiencename1,
      'Experience_about1': experienceAbout1,
      'CountController': countController,
      'AgeField1': ageField1,
      'AgeField2': ageField2,
      'PhoneNumberPicker': phoneNumberPicker,
      'TimeField1': timeField1,
      'TimeField2': timeField2,
      'RadioButton1': radioButton1,
      'event_date1': eventDate1,
      'event_date2': eventDate2,
      'PriceField1': priceField1,
      'PhotoButton': photoButton,
      'creator': creator,
      'BookingDate': bookingDate,
      'BookingTime': bookingTime,
      'emailAddressGuest': emailAddressGuest,
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
        e1?.experiencename1 == e2?.experiencename1 &&
        e1?.experienceAbout1 == e2?.experienceAbout1 &&
        e1?.countController == e2?.countController &&
        e1?.ageField1 == e2?.ageField1 &&
        e1?.ageField2 == e2?.ageField2 &&
        e1?.phoneNumberPicker == e2?.phoneNumberPicker &&
        e1?.timeField1 == e2?.timeField1 &&
        e1?.timeField2 == e2?.timeField2 &&
        e1?.radioButton1 == e2?.radioButton1 &&
        e1?.eventDate1 == e2?.eventDate1 &&
        e1?.eventDate2 == e2?.eventDate2 &&
        e1?.priceField1 == e2?.priceField1 &&
        e1?.photoButton == e2?.photoButton &&
        e1?.creator == e2?.creator &&
        listEquality.equals(e1?.users, e2?.users) &&
        e1?.bookingDate == e2?.bookingDate &&
        e1?.bookingTime == e2?.bookingTime &&
        e1?.emailAddressGuest == e2?.emailAddressGuest;
  }

  @override
  int hash(ExperiencesRecord? e) => const ListEquality().hash([
        e?.dropDown,
        e?.countController1,
        e?.experiencename1,
        e?.experienceAbout1,
        e?.countController,
        e?.ageField1,
        e?.ageField2,
        e?.phoneNumberPicker,
        e?.timeField1,
        e?.timeField2,
        e?.radioButton1,
        e?.eventDate1,
        e?.eventDate2,
        e?.priceField1,
        e?.photoButton,
        e?.creator,
        e?.users,
        e?.bookingDate,
        e?.bookingTime,
        e?.emailAddressGuest
      ]);

  @override
  bool isValidKey(Object? o) => o is ExperiencesRecord;
}
