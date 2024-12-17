import 'dart:convert';

import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start BF - email Group Code

class BFEmailGroup {
  static String getBaseUrl() => 'https://api.backendflow.io/v1';
  static Map<String, String> headers = {};
  static EmailCall emailCall = EmailCall();
}

class EmailCall {
  Future<ApiCallResponse> call({
    String? to = '',
    String? subject = '',
    String? attachmentLink = '',
    String? attachmentName = '',
  }) async {
    final baseUrl = BFEmailGroup.getBaseUrl();

    const ffApiRequestBody = '''
{
  "sk-bf-ee0e8525-8239-4ddb-a726-2ec9f69ea15d": ""
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'email',
      apiUrl:
          '$baseUrl/email?templateId=gljgcRL1EGCzq6JTaAP7&to=$to&subject=$subject&attachmentLink=$attachmentLink&attachmentName=$attachmentName',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End BF - email Group Code

class NearbyPlacesCall {
  static Future<ApiCallResponse> call({
    String? latLng = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'nearbyPlaces',
      apiUrl:
          'https://maps.googleapis.com/maps/api/place/nearbysearch/output?parameters',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'key_ios': "AIzaSyCmb7_kKXT2DKqkNxdqwL7n32l_5E_vXfc",
        'radius': "2000",
        'location': latLng,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GeocodeCall {
  static Future<ApiCallResponse> call({
    String? latlong = '',
    String? apikey = 'AIzaSyCvg7tptaoj20DqcEcmZrf46dmwMq3yG9s',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'geocode',
      apiUrl:
          'https://maps.googleapis.com/maps/api/geocode/json?latlng=$latlong&key=AIzaSyCvg7tptaoj20DqcEcmZrf46dmwMq3yG9s',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List? mm(dynamic response) => getJsonField(
        response,
        r'''$.results''',
        true,
      ) as List?;
  static String? address(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.plus_code.compound_code''',
      ));
}

class MapsStringCall {
  static Future<ApiCallResponse> call({
    double? lat = 24.774265,
    double? long = 46.738586,
    String? lat2 = '',
    String? long2 = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'mapsString',
      apiUrl: 'https://geocode.maps.co/reverse?lat=$lat&lon=$long',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _toEncodable(dynamic item) {
  if (item is DocumentReference) {
    return item.path;
  }
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}
