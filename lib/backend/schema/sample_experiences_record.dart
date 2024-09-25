import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SampleExperiencesRecord extends FirestoreRecord {
  SampleExperiencesRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "price" field.
  double? _price;
  double get price => _price ?? 0.0;
  bool hasPrice() => _price != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  // "creator" field.
  DocumentReference? _creator;
  DocumentReference? get creator => _creator;
  bool hasCreator() => _creator != null;

  // "is_full" field.
  bool? _isFull;
  bool get isFull => _isFull ?? false;
  bool hasIsFull() => _isFull != null;

  void _initializeFields() {
    _title = snapshotData['title'] as String?;
    _description = snapshotData['description'] as String?;
    _price = castToType<double>(snapshotData['price']);
    _image = snapshotData['image'] as String?;
    _creator = snapshotData['creator'] as DocumentReference?;
    _isFull = snapshotData['is_full'] as bool?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('sample_experiences');

  static Stream<SampleExperiencesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => SampleExperiencesRecord.fromSnapshot(s));

  static Future<SampleExperiencesRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => SampleExperiencesRecord.fromSnapshot(s));

  static SampleExperiencesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      SampleExperiencesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static SampleExperiencesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      SampleExperiencesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'SampleExperiencesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is SampleExperiencesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createSampleExperiencesRecordData({
  String? title,
  String? description,
  double? price,
  String? image,
  DocumentReference? creator,
  bool? isFull,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'title': title,
      'description': description,
      'price': price,
      'image': image,
      'creator': creator,
      'is_full': isFull,
    }.withoutNulls,
  );

  return firestoreData;
}

class SampleExperiencesRecordDocumentEquality
    implements Equality<SampleExperiencesRecord> {
  const SampleExperiencesRecordDocumentEquality();

  @override
  bool equals(SampleExperiencesRecord? e1, SampleExperiencesRecord? e2) {
    return e1?.title == e2?.title &&
        e1?.description == e2?.description &&
        e1?.price == e2?.price &&
        e1?.image == e2?.image &&
        e1?.creator == e2?.creator &&
        e1?.isFull == e2?.isFull;
  }

  @override
  int hash(SampleExperiencesRecord? e) => const ListEquality().hash(
      [e?.title, e?.description, e?.price, e?.image, e?.creator, e?.isFull]);

  @override
  bool isValidKey(Object? o) => o is SampleExperiencesRecord;
}
