// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class SitesDatatypeStruct extends FFFirebaseStruct {
  SitesDatatypeStruct({
    String? sitename,
    double? distance,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _sitename = sitename,
        _distance = distance,
        super(firestoreUtilData);

  // "sitename" field.
  String? _sitename;
  String get sitename => _sitename ?? '';
  set sitename(String? val) => _sitename = val;

  bool hasSitename() => _sitename != null;

  // "distance" field.
  double? _distance;
  double get distance => _distance ?? 0.0;
  set distance(double? val) => _distance = val;

  void incrementDistance(double amount) => distance = distance + amount;

  bool hasDistance() => _distance != null;

  static SitesDatatypeStruct fromMap(Map<String, dynamic> data) =>
      SitesDatatypeStruct(
        sitename: data['sitename'] as String?,
        distance: castToType<double>(data['distance']),
      );

  static SitesDatatypeStruct? maybeFromMap(dynamic data) => data is Map
      ? SitesDatatypeStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'sitename': _sitename,
        'distance': _distance,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'sitename': serializeParam(
          _sitename,
          ParamType.String,
        ),
        'distance': serializeParam(
          _distance,
          ParamType.double,
        ),
      }.withoutNulls;

  static SitesDatatypeStruct fromSerializableMap(Map<String, dynamic> data) =>
      SitesDatatypeStruct(
        sitename: deserializeParam(
          data['sitename'],
          ParamType.String,
          false,
        ),
        distance: deserializeParam(
          data['distance'],
          ParamType.double,
          false,
        ),
      );

  @override
  String toString() => 'SitesDatatypeStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is SitesDatatypeStruct &&
        sitename == other.sitename &&
        distance == other.distance;
  }

  @override
  int get hashCode => const ListEquality().hash([sitename, distance]);
}

SitesDatatypeStruct createSitesDatatypeStruct({
  String? sitename,
  double? distance,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    SitesDatatypeStruct(
      sitename: sitename,
      distance: distance,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

SitesDatatypeStruct? updateSitesDatatypeStruct(
  SitesDatatypeStruct? sitesDatatype, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    sitesDatatype
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addSitesDatatypeStructData(
  Map<String, dynamic> firestoreData,
  SitesDatatypeStruct? sitesDatatype,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (sitesDatatype == null) {
    return;
  }
  if (sitesDatatype.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && sitesDatatype.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final sitesDatatypeData =
      getSitesDatatypeFirestoreData(sitesDatatype, forFieldValue);
  final nestedData =
      sitesDatatypeData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = sitesDatatype.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getSitesDatatypeFirestoreData(
  SitesDatatypeStruct? sitesDatatype, [
  bool forFieldValue = false,
]) {
  if (sitesDatatype == null) {
    return {};
  }
  final firestoreData = mapToFirestore(sitesDatatype.toMap());

  // Add any Firestore field values
  sitesDatatype.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getSitesDatatypeListFirestoreData(
  List<SitesDatatypeStruct>? sitesDatatypes,
) =>
    sitesDatatypes
        ?.map((e) => getSitesDatatypeFirestoreData(e, true))
        .toList() ??
    [];
