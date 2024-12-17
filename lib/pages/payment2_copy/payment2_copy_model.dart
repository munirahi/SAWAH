import '/flutter_flow/flutter_flow_util.dart';
import 'payment2_copy_widget.dart' show Payment2CopyWidget;
import 'package:flutter/material.dart';

class Payment2CopyModel extends FlutterFlowModel<Payment2CopyWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for EmailsofUsers widget.
  FocusNode? emailsofUsersFocusNode;
  TextEditingController? emailsofUsersTextController;
  String? Function(BuildContext, String?)? emailsofUsersTextControllerValidator;
  String? _emailsofUsersTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (!RegExp('^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\\.[a-zA-Z]{2,}\$')
        .hasMatch(val)) {
      return 'Invalid, please enter a valid email';
    }
    return null;
  }

  @override
  void initState(BuildContext context) {
    emailsofUsersTextControllerValidator =
        _emailsofUsersTextControllerValidator;
  }

  @override
  void dispose() {
    emailsofUsersFocusNode?.dispose();
    emailsofUsersTextController?.dispose();
  }
}
