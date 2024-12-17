import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ReservedRecord extends FirestoreRecord {
  ReservedRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "expID" field.
  DocumentReference? _expID;
  DocumentReference? get expID => _expID;
  bool hasExpID() => _expID != null;

  // "userID" field.
  DocumentReference? _userID;
  DocumentReference? get userID => _userID;
  bool hasUserID() => _userID != null;

  // "NumberOfReservedSeats" field.
  int? _numberOfReservedSeats;
  int get numberOfReservedSeats => _numberOfReservedSeats ?? 0;
  bool hasNumberOfReservedSeats() => _numberOfReservedSeats != null;

  void _initializeFields() {
    _expID = snapshotData['expID'] as DocumentReference?;
    _userID = snapshotData['userID'] as DocumentReference?;
    _numberOfReservedSeats =
        castToType<int>(snapshotData['NumberOfReservedSeats']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Reserved');

  static Stream<ReservedRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ReservedRecord.fromSnapshot(s));

  static Future<ReservedRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ReservedRecord.fromSnapshot(s));

  static ReservedRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ReservedRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ReservedRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ReservedRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ReservedRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ReservedRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createReservedRecordData({
  DocumentReference? expID,
  DocumentReference? userID,
  int? numberOfReservedSeats,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'expID': expID,
      'userID': userID,
      'NumberOfReservedSeats': numberOfReservedSeats,
    }.withoutNulls,
  );

  return firestoreData;
}

class ReservedRecordDocumentEquality implements Equality<ReservedRecord> {
  const ReservedRecordDocumentEquality();

  @override
  bool equals(ReservedRecord? e1, ReservedRecord? e2) {
    return e1?.expID == e2?.expID &&
        e1?.userID == e2?.userID &&
        e1?.numberOfReservedSeats == e2?.numberOfReservedSeats;
  }

  @override
  int hash(ReservedRecord? e) => const ListEquality()
      .hash([e?.expID, e?.userID, e?.numberOfReservedSeats]);

  @override
  bool isValidKey(Object? o) => o is ReservedRecord;
}
