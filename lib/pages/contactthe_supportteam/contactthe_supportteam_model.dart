import '/flutter_flow/flutter_flow_util.dart';
import 'contactthe_supportteam_widget.dart' show ContacttheSupportteamWidget;
import 'package:flutter/material.dart';

class ContacttheSupportteamModel
    extends FlutterFlowModel<ContacttheSupportteamWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for description widget.
  FocusNode? descriptionFocusNode;
  TextEditingController? descriptionTextController;
  String? Function(BuildContext, String?)? descriptionTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    descriptionFocusNode?.dispose();
    descriptionTextController?.dispose();
  }
}
