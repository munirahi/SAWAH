import '/flutter_flow/flutter_flow_util.dart';
import 'recreate_exp_widget.dart' show RecreateExpWidget;
import 'package:flutter/material.dart';

class RecreateExpModel extends FlutterFlowModel<RecreateExpWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey4 = GlobalKey<FormState>();
  final formKey1 = GlobalKey<FormState>();
  final formKey2 = GlobalKey<FormState>();
  final formKey3 = GlobalKey<FormState>();
  final formKey5 = GlobalKey<FormState>();
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for SeatLimit widget.
  int? seatLimitValue;
  // State field(s) for TextField1 widget.
  FocusNode? textField1FocusNode;
  TextEditingController? textField1TextController;
  String? Function(BuildContext, String?)? textField1TextControllerValidator;
  DateTime? datePicked1;
  // State field(s) for TextField22 widget.
  FocusNode? textField22FocusNode;
  TextEditingController? textField22TextController;
  String? Function(BuildContext, String?)? textField22TextControllerValidator;
  DateTime? datePicked2;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textField1FocusNode?.dispose();
    textField1TextController?.dispose();

    textField22FocusNode?.dispose();
    textField22TextController?.dispose();
  }
}
