import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ExperiencesRecord extends FirestoreRecord {
  ExperiencesRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "Experiencename1" field.
  String? _experiencename1;
  String get experiencename1 => _experiencename1 ?? '';
  bool hasExperiencename1() => _experiencename1 != null;

  // "Experience_about1" field.
  String? _experienceAbout1;
  String get experienceAbout1 => _experienceAbout1 ?? '';
  bool hasExperienceAbout1() => _experienceAbout1 != null;

  // "PriceField1" field.
  double? _priceField1;
  double get priceField1 => _priceField1 ?? 0.0;
  bool hasPriceField1() => _priceField1 != null;

  // "creator" field.
  DocumentReference? _creator;
  DocumentReference? get creator => _creator;
  bool hasCreator() => _creator != null;

  // "users" field.
  List<DocumentReference>? _users;
  List<DocumentReference> get users => _users ?? const [];
  bool hasUsers() => _users != null;

  // "Image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  // "Gender" field.
  String? _gender;
  String get gender => _gender ?? '';
  bool hasGender() => _gender != null;

  // "SeatLimit" field.
  int? _seatLimit;
  int get seatLimit => _seatLimit ?? 0;
  bool hasSeatLimit() => _seatLimit != null;

  // "isFull" field.
  bool? _isFull;
  bool get isFull => _isFull ?? false;
  bool hasIsFull() => _isFull != null;

  // "remainingSeats" field.
  int? _remainingSeats;
  int get remainingSeats => _remainingSeats ?? 0;
  bool hasRemainingSeats() => _remainingSeats != null;

  // "AgeField1" field.
  String? _ageField1;
  String get ageField1 => _ageField1 ?? '';
  bool hasAgeField1() => _ageField1 != null;

  // "Date" field.
  DateTime? _date;
  DateTime? get date => _date;
  bool hasDate() => _date != null;

  // "Time" field.
  DateTime? _time;
  DateTime? get time => _time;
  bool hasTime() => _time != null;

  // "location" field.
  LatLng? _location;
  LatLng? get location => _location;
  bool hasLocation() => _location != null;

  // "EmailsofUsers" field.
  List<String>? _emailsofUsers;
  List<String> get emailsofUsers => _emailsofUsers ?? const [];
  bool hasEmailsofUsers() => _emailsofUsers != null;

  // "AddressName" field.
  String? _addressName;
  String get addressName => _addressName ?? '';
  bool hasAddressName() => _addressName != null;

  // "phone_number" field.
  List<String>? _phoneNumber;
  List<String> get phoneNumber => _phoneNumber ?? const [];
  bool hasPhoneNumber() => _phoneNumber != null;

  // "newestLocationString" field.
  String? _newestLocationString;
  String get newestLocationString => _newestLocationString ?? '';
  bool hasNewestLocationString() => _newestLocationString != null;

  // "reviewsIDs" field.
  List<DocumentReference>? _reviewsIDs;
  List<DocumentReference> get reviewsIDs => _reviewsIDs ?? const [];
  bool hasReviewsIDs() => _reviewsIDs != null;

  // "categories" field.
  List<CategoriesEnum>? _categories;
  List<CategoriesEnum> get categories => _categories ?? const [];
  bool hasCategories() => _categories != null;

  // "categoryy" field.
  String? _categoryy;
  String get categoryy => _categoryy ?? '';
  bool hasCategoryy() => _categoryy != null;

  // "oldExID" field.
  DocumentReference? _oldExID;
  DocumentReference? get oldExID => _oldExID;
  bool hasOldExID() => _oldExID != null;

  // "cateelist" field.
  List<String>? _cateelist;
  List<String> get cateelist => _cateelist ?? const [];
  bool hasCateelist() => _cateelist != null;

  void _initializeFields() {
    _experiencename1 = snapshotData['Experiencename1'] as String?;
    _experienceAbout1 = snapshotData['Experience_about1'] as String?;
    _priceField1 = castToType<double>(snapshotData['PriceField1']);
    _creator = snapshotData['creator'] as DocumentReference?;
    _users = getDataList(snapshotData['users']);
    _image = snapshotData['Image'] as String?;
    _gender = snapshotData['Gender'] as String?;
    _seatLimit = castToType<int>(snapshotData['SeatLimit']);
    _isFull = snapshotData['isFull'] as bool?;
    _remainingSeats = castToType<int>(snapshotData['remainingSeats']);
    _ageField1 = snapshotData['AgeField1'] as String?;
    _date = snapshotData['Date'] as DateTime?;
    _time = snapshotData['Time'] as DateTime?;
    _location = snapshotData['location'] as LatLng?;
    _emailsofUsers = getDataList(snapshotData['EmailsofUsers']);
    _addressName = snapshotData['AddressName'] as String?;
    _phoneNumber = getDataList(snapshotData['phone_number']);
    _newestLocationString = snapshotData['newestLocationString'] as String?;
    _reviewsIDs = getDataList(snapshotData['reviewsIDs']);
    _categories = getEnumList<CategoriesEnum>(snapshotData['categories']);
    _categoryy = snapshotData['categoryy'] as String?;
    _oldExID = snapshotData['oldExID'] as DocumentReference?;
    _cateelist = getDataList(snapshotData['cateelist']);
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
  String? experiencename1,
  String? experienceAbout1,
  double? priceField1,
  DocumentReference? creator,
  String? image,
  String? gender,
  int? seatLimit,
  bool? isFull,
  int? remainingSeats,
  String? ageField1,
  DateTime? date,
  DateTime? time,
  LatLng? location,
  String? addressName,
  String? newestLocationString,
  String? categoryy,
  DocumentReference? oldExID,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Experiencename1': experiencename1,
      'Experience_about1': experienceAbout1,
      'PriceField1': priceField1,
      'creator': creator,
      'Image': image,
      'Gender': gender,
      'SeatLimit': seatLimit,
      'isFull': isFull,
      'remainingSeats': remainingSeats,
      'AgeField1': ageField1,
      'Date': date,
      'Time': time,
      'location': location,
      'AddressName': addressName,
      'newestLocationString': newestLocationString,
      'categoryy': categoryy,
      'oldExID': oldExID,
    }.withoutNulls,
  );

  return firestoreData;
}

class ExperiencesRecordDocumentEquality implements Equality<ExperiencesRecord> {
  const ExperiencesRecordDocumentEquality();

  @override
  bool equals(ExperiencesRecord? e1, ExperiencesRecord? e2) {
    const listEquality = ListEquality();
    return e1?.experiencename1 == e2?.experiencename1 &&
        e1?.experienceAbout1 == e2?.experienceAbout1 &&
        e1?.priceField1 == e2?.priceField1 &&
        e1?.creator == e2?.creator &&
        listEquality.equals(e1?.users, e2?.users) &&
        e1?.image == e2?.image &&
        e1?.gender == e2?.gender &&
        e1?.seatLimit == e2?.seatLimit &&
        e1?.isFull == e2?.isFull &&
        e1?.remainingSeats == e2?.remainingSeats &&
        e1?.ageField1 == e2?.ageField1 &&
        e1?.date == e2?.date &&
        e1?.time == e2?.time &&
        e1?.location == e2?.location &&
        listEquality.equals(e1?.emailsofUsers, e2?.emailsofUsers) &&
        e1?.addressName == e2?.addressName &&
        listEquality.equals(e1?.phoneNumber, e2?.phoneNumber) &&
        e1?.newestLocationString == e2?.newestLocationString &&
        listEquality.equals(e1?.reviewsIDs, e2?.reviewsIDs) &&
        listEquality.equals(e1?.categories, e2?.categories) &&
        e1?.categoryy == e2?.categoryy &&
        e1?.oldExID == e2?.oldExID &&
        listEquality.equals(e1?.cateelist, e2?.cateelist);
  }

  @override
  int hash(ExperiencesRecord? e) => const ListEquality().hash([
        e?.experiencename1,
        e?.experienceAbout1,
        e?.priceField1,
        e?.creator,
        e?.users,
        e?.image,
        e?.gender,
        e?.seatLimit,
        e?.isFull,
        e?.remainingSeats,
        e?.ageField1,
        e?.date,
        e?.time,
        e?.location,
        e?.emailsofUsers,
        e?.addressName,
        e?.phoneNumber,
        e?.newestLocationString,
        e?.reviewsIDs,
        e?.categories,
        e?.categoryy,
        e?.oldExID,
        e?.cateelist
      ]);

  @override
  bool isValidKey(Object? o) => o is ExperiencesRecord;
}
