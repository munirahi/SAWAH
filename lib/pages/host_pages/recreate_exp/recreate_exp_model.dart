import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/pages/navbar_forhost/navbar_forhost_widget.dart';
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
  // State field(s) for AgeField1 widget.
  FormFieldController<String>? ageField1ValueController;
  // State field(s) for Gender widget.
  FormFieldController<String>? genderValueController;
  DateTime? datePicked1;
  DateTime? datePicked2;
  // Model for navbarForhost component.
  late NavbarForhostModel navbarForhostModel;

  @override
  void initState(BuildContext context) {
    navbarForhostModel = createModel(context, () => NavbarForhostModel());
  }

  @override
  void dispose() {
    navbarForhostModel.dispose();
  }

  /// Additional helper methods.
  String? get ageField1Value => ageField1ValueController?.value;
  String? get genderValue => genderValueController?.value;
}
