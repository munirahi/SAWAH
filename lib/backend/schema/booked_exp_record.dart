import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class BookedExpRecord extends FirestoreRecord {
  BookedExpRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "User_id" field.
  DocumentReference? _userId;
  DocumentReference? get userId => _userId;
  bool hasUserId() => _userId != null;

  // "exp_id" field.
  DocumentReference? _expId;
  DocumentReference? get expId => _expId;
  bool hasExpId() => _expId != null;

  // "number_of_seats_booked" field.
  int? _numberOfSeatsBooked;
  int get numberOfSeatsBooked => _numberOfSeatsBooked ?? 0;
  bool hasNumberOfSeatsBooked() => _numberOfSeatsBooked != null;

  // "Date2" field.
  DateTime? _date2;
  DateTime? get date2 => _date2;
  bool hasDate2() => _date2 != null;

  // "CountController1" field.
  int? _countController1;
  int get countController1 => _countController1 ?? 0;
  bool hasCountController1() => _countController1 != null;

  void _initializeFields() {
    _userId = snapshotData['User_id'] as DocumentReference?;
    _expId = snapshotData['exp_id'] as DocumentReference?;
    _numberOfSeatsBooked =
        castToType<int>(snapshotData['number_of_seats_booked']);
    _date2 = snapshotData['Date2'] as DateTime?;
    _countController1 = castToType<int>(snapshotData['CountController1']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('booked_exp');

  static Stream<BookedExpRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => BookedExpRecord.fromSnapshot(s));

  static Future<BookedExpRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => BookedExpRecord.fromSnapshot(s));

  static BookedExpRecord fromSnapshot(DocumentSnapshot snapshot) =>
      BookedExpRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static BookedExpRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      BookedExpRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'BookedExpRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is BookedExpRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createBookedExpRecordData({
  DocumentReference? userId,
  DocumentReference? expId,
  int? numberOfSeatsBooked,
  DateTime? date2,
  int? countController1,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'User_id': userId,
      'exp_id': expId,
      'number_of_seats_booked': numberOfSeatsBooked,
      'Date2': date2,
      'CountController1': countController1,
    }.withoutNulls,
  );

  return firestoreData;
}

class BookedExpRecordDocumentEquality implements Equality<BookedExpRecord> {
  const BookedExpRecordDocumentEquality();

  @override
  bool equals(BookedExpRecord? e1, BookedExpRecord? e2) {
    return e1?.userId == e2?.userId &&
        e1?.expId == e2?.expId &&
        e1?.numberOfSeatsBooked == e2?.numberOfSeatsBooked &&
        e1?.date2 == e2?.date2 &&
        e1?.countController1 == e2?.countController1;
  }

  @override
  int hash(BookedExpRecord? e) => const ListEquality().hash([
        e?.userId,
        e?.expId,
        e?.numberOfSeatsBooked,
        e?.date2,
        e?.countController1
      ]);

  @override
  bool isValidKey(Object? o) => o is BookedExpRecord;
}
