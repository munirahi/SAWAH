import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MarkersRecord extends FirestoreRecord {
  MarkersRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "Longitude" field.
  bool? _longitude;
  bool get longitude => _longitude ?? false;
  bool hasLongitude() => _longitude != null;

  // "latitude" field.
  bool? _latitude;
  bool get latitude => _latitude ?? false;
  bool hasLatitude() => _latitude != null;

  void _initializeFields() {
    _longitude = snapshotData['Longitude'] as bool?;
    _latitude = snapshotData['latitude'] as bool?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Markers');

  static Stream<MarkersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => MarkersRecord.fromSnapshot(s));

  static Future<MarkersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => MarkersRecord.fromSnapshot(s));

  static MarkersRecord fromSnapshot(DocumentSnapshot snapshot) =>
      MarkersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static MarkersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      MarkersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'MarkersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is MarkersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createMarkersRecordData({
  bool? longitude,
  bool? latitude,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Longitude': longitude,
      'latitude': latitude,
    }.withoutNulls,
  );

  return firestoreData;
}

class MarkersRecordDocumentEquality implements Equality<MarkersRecord> {
  const MarkersRecordDocumentEquality();

  @override
  bool equals(MarkersRecord? e1, MarkersRecord? e2) {
    return e1?.longitude == e2?.longitude && e1?.latitude == e2?.latitude;
  }

  @override
  int hash(MarkersRecord? e) =>
      const ListEquality().hash([e?.longitude, e?.latitude]);

  @override
  bool isValidKey(Object? o) => o is MarkersRecord;
}
