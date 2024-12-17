import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ReviewsRecord extends FirestoreRecord {
  ReviewsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "reviewText" field.
  String? _reviewText;
  String get reviewText => _reviewText ?? '';
  bool hasReviewText() => _reviewText != null;

  // "rate" field.
  int? _rate;
  int get rate => _rate ?? 0;
  bool hasRate() => _rate != null;

  // "userID" field.
  DocumentReference? _userID;
  DocumentReference? get userID => _userID;
  bool hasUserID() => _userID != null;

  // "creatorID" field.
  DocumentReference? _creatorID;
  DocumentReference? get creatorID => _creatorID;
  bool hasCreatorID() => _creatorID != null;

  // "ExpID" field.
  DocumentReference? _expID;
  DocumentReference? get expID => _expID;
  bool hasExpID() => _expID != null;

  // "date" field.
  DateTime? _date;
  DateTime? get date => _date;
  bool hasDate() => _date != null;

  void _initializeFields() {
    _reviewText = snapshotData['reviewText'] as String?;
    _rate = castToType<int>(snapshotData['rate']);
    _userID = snapshotData['userID'] as DocumentReference?;
    _creatorID = snapshotData['creatorID'] as DocumentReference?;
    _expID = snapshotData['ExpID'] as DocumentReference?;
    _date = snapshotData['date'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('reviews');

  static Stream<ReviewsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ReviewsRecord.fromSnapshot(s));

  static Future<ReviewsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ReviewsRecord.fromSnapshot(s));

  static ReviewsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ReviewsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ReviewsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ReviewsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ReviewsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ReviewsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createReviewsRecordData({
  String? reviewText,
  int? rate,
  DocumentReference? userID,
  DocumentReference? creatorID,
  DocumentReference? expID,
  DateTime? date,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'reviewText': reviewText,
      'rate': rate,
      'userID': userID,
      'creatorID': creatorID,
      'ExpID': expID,
      'date': date,
    }.withoutNulls,
  );

  return firestoreData;
}

class ReviewsRecordDocumentEquality implements Equality<ReviewsRecord> {
  const ReviewsRecordDocumentEquality();

  @override
  bool equals(ReviewsRecord? e1, ReviewsRecord? e2) {
    return e1?.reviewText == e2?.reviewText &&
        e1?.rate == e2?.rate &&
        e1?.userID == e2?.userID &&
        e1?.creatorID == e2?.creatorID &&
        e1?.expID == e2?.expID &&
        e1?.date == e2?.date;
  }

  @override
  int hash(ReviewsRecord? e) => const ListEquality().hash(
      [e?.reviewText, e?.rate, e?.userID, e?.creatorID, e?.expID, e?.date]);

  @override
  bool isValidKey(Object? o) => o is ReviewsRecord;
}
