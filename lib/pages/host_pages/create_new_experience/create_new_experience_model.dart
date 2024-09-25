import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/pages/host_pages/navbar_forhost/navbar_forhost_widget.dart';
import 'create_new_experience_widget.dart' show CreateNewExperienceWidget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class CreateNewExperienceModel
    extends FlutterFlowModel<CreateNewExperienceWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for Experiencename1 widget.
  FocusNode? experiencename1FocusNode;
  TextEditingController? experiencename1TextController;
  String? Function(BuildContext, String?)?
      experiencename1TextControllerValidator;
  // State field(s) for PlacePicker widget.
  FFPlace placePickerValue = const FFPlace();
  // State field(s) for Experience_about1 widget.
  FocusNode? experienceAbout1FocusNode;
  TextEditingController? experienceAbout1TextController;
  String? Function(BuildContext, String?)?
      experienceAbout1TextControllerValidator;
  // State field(s) for CountController widget.
  int? countControllerValue;
  // State field(s) for AgeField1 widget.
  FocusNode? ageField1FocusNode;
  TextEditingController? ageField1TextController;
  final ageField1Mask = MaskTextInputFormatter(mask: '###');
  String? Function(BuildContext, String?)? ageField1TextControllerValidator;
  // State field(s) for AgeField2 widget.
  FocusNode? ageField2FocusNode;
  TextEditingController? ageField2TextController;
  final ageField2Mask = MaskTextInputFormatter(mask: '###');
  String? Function(BuildContext, String?)? ageField2TextControllerValidator;
  // State field(s) for PriceField1 widget.
  FocusNode? priceField1FocusNode;
  TextEditingController? priceField1TextController;
  String? Function(BuildContext, String?)? priceField1TextControllerValidator;
  // State field(s) for RadioButton1 widget.
  FormFieldController<String>? radioButton1ValueController;
  // State field(s) for TimeField1 widget.
  FocusNode? timeField1FocusNode;
  TextEditingController? timeField1TextController;
  String? Function(BuildContext, String?)? timeField1TextControllerValidator;
  // Model for navbarForhost component.
  late NavbarForhostModel navbarForhostModel;

  @override
  void initState(BuildContext context) {
    navbarForhostModel = createModel(context, () => NavbarForhostModel());
  }

  @override
  void dispose() {
    experiencename1FocusNode?.dispose();
    experiencename1TextController?.dispose();

    experienceAbout1FocusNode?.dispose();
    experienceAbout1TextController?.dispose();

    ageField1FocusNode?.dispose();
    ageField1TextController?.dispose();

    ageField2FocusNode?.dispose();
    ageField2TextController?.dispose();

    priceField1FocusNode?.dispose();
    priceField1TextController?.dispose();

    timeField1FocusNode?.dispose();
    timeField1TextController?.dispose();

    navbarForhostModel.dispose();
  }

  /// Additional helper methods.
  String? get radioButton1Value => radioButton1ValueController?.value;
}
