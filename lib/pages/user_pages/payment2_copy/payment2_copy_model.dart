import '/flutter_flow/flutter_flow_util.dart';
import 'payment2_copy_widget.dart' show Payment2CopyWidget;
import 'package:flutter/material.dart';

class Payment2CopyModel extends FlutterFlowModel<Payment2CopyWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for emailAddressGuest widget.
  FocusNode? emailAddressGuestFocusNode;
  TextEditingController? emailAddressGuestTextController;
  String? Function(BuildContext, String?)?
      emailAddressGuestTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    emailAddressGuestFocusNode?.dispose();
    emailAddressGuestTextController?.dispose();
  }
}
