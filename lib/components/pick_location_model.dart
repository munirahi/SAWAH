import '/flutter_flow/flutter_flow_google_map.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'pick_location_widget.dart' show PickLocationWidget;
import 'package:flutter/material.dart';

class PickLocationModel extends FlutterFlowModel<PickLocationWidget> {
  ///  Local state fields for this component.

  LatLng? location;

  ///  State fields for stateful widgets in this component.

  // State field(s) for Location widget.
  FFPlace locationValue = const FFPlace();
  // State field(s) for GoogleMap widget.
  LatLng? googleMapsCenter;
  final googleMapsController = Completer<GoogleMapController>();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
