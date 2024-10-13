import '/flutter_flow/flutter_flow_util.dart';
import 'availableexperiences_widget.dart' show AvailableexperiencesWidget;
import 'package:flutter/material.dart';

class AvailableexperiencesModel
    extends FlutterFlowModel<AvailableexperiencesWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for emailAddress widget.
  final emailAddressKey = GlobalKey();
  FocusNode? emailAddressFocusNode;
  TextEditingController? emailAddressTextController;
  String? emailAddressSelectedOption;
  String? Function(BuildContext, String?)? emailAddressTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    emailAddressFocusNode?.dispose();
  }
}
