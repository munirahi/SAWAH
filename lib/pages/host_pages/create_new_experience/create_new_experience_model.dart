import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/pages/navbar_forhost/navbar_forhost_widget.dart';
import 'create_new_experience_widget.dart' show CreateNewExperienceWidget;
import 'package:flutter/material.dart';

class CreateNewExperienceModel
    extends FlutterFlowModel<CreateNewExperienceWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey1 = GlobalKey<FormState>();
  final formKey3 = GlobalKey<FormState>();
  final formKey2 = GlobalKey<FormState>();
  final formKey4 = GlobalKey<FormState>();
  final formKey5 = GlobalKey<FormState>();
  // State field(s) for Experiencename1 widget.
  FocusNode? experiencename1FocusNode;
  TextEditingController? experiencename1TextController;
  String? Function(BuildContext, String?)?
      experiencename1TextControllerValidator;
  String? _experiencename1TextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'This field is required';
    }

    if (val.length < 3) {
      return 'Enter at least 3 characters';
    }

    return null;
  }

  // State field(s) for Location widget.
  FFPlace locationValue = const FFPlace();
  // State field(s) for Experience_about1 widget.
  FocusNode? experienceAbout1FocusNode;
  TextEditingController? experienceAbout1TextController;
  String? Function(BuildContext, String?)?
      experienceAbout1TextControllerValidator;
  String? _experienceAbout1TextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'This field is required';
    }

    if (val.length < 3) {
      return 'Description should be at least 3 characters';
    }

    return null;
  }

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
  // State field(s) for PriceField1 widget.
  FocusNode? priceField1FocusNode;
  TextEditingController? priceField1TextController;
  String? Function(BuildContext, String?)? priceField1TextControllerValidator;
  String? _priceField1TextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'This field is required ';
    }

    if (val.isEmpty) {
      return 'Enter at least 1 character';
    }
    if (val.length > 8) {
      return 'Enter less than 8 characters';
    }

    return null;
  }

  DateTime? datePicked1;
  DateTime? datePicked2;
  // Model for navbarForhost component.
  late NavbarForhostModel navbarForhostModel;

  @override
  void initState(BuildContext context) {
    experiencename1TextControllerValidator =
        _experiencename1TextControllerValidator;
    experienceAbout1TextControllerValidator =
        _experienceAbout1TextControllerValidator;
    priceField1TextControllerValidator = _priceField1TextControllerValidator;
    navbarForhostModel = createModel(context, () => NavbarForhostModel());
  }

  @override
  void dispose() {
    experiencename1FocusNode?.dispose();
    experiencename1TextController?.dispose();

    experienceAbout1FocusNode?.dispose();
    experienceAbout1TextController?.dispose();

    priceField1FocusNode?.dispose();
    priceField1TextController?.dispose();

    navbarForhostModel.dispose();
  }

  /// Additional helper methods.
  String? get ageField1Value => ageField1ValueController?.value;
  String? get genderValue => genderValueController?.value;
}
