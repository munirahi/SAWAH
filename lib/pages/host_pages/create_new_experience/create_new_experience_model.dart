import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/pages/navbar_forhost/navbar_forhost_widget.dart';
import 'create_new_experience_widget.dart' show CreateNewExperienceWidget;
import 'package:flutter/material.dart';

class CreateNewExperienceModel
    extends FlutterFlowModel<CreateNewExperienceWidget> {
  ///  Local state fields for this page.

  LatLng? locatIon;

  ///  State fields for stateful widgets in this page.

  final formKey1 = GlobalKey<FormState>();
  final formKey3 = GlobalKey<FormState>();
  final formKey2 = GlobalKey<FormState>();
  final formKey4 = GlobalKey<FormState>();
  final formKey5 = GlobalKey<FormState>();
  // Stores action output result for [Backend Call - API (mapsString)] action in CreateNewExperience widget.
  ApiCallResponse? api;
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

  // Stores action output result for [Backend Call - API (mapsString)] action in Button widget.
  ApiCallResponse? apiResultpzy;
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

  // State field(s) for categoryPicker widget.
  FormFieldController<String>? categoryPickerValueController;
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

  // State field(s) for TextField11 widget.
  FocusNode? textField11FocusNode;
  TextEditingController? textField11TextController;
  String? Function(BuildContext, String?)? textField11TextControllerValidator;
  DateTime? datePicked1;
  // State field(s) for TextField22 widget.
  FocusNode? textField22FocusNode;
  TextEditingController? textField22TextController;
  String? Function(BuildContext, String?)? textField22TextControllerValidator;
  DateTime? datePicked2;
  // Stores action output result for [Backend Call - API (geocode)] action in Button widget.
  ApiCallResponse? address;
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

    textField11FocusNode?.dispose();
    textField11TextController?.dispose();

    textField22FocusNode?.dispose();
    textField22TextController?.dispose();

    navbarForhostModel.dispose();
  }

  /// Additional helper methods.
  String? get categoryPickerValue => categoryPickerValueController?.value;
  String? get ageField1Value => ageField1ValueController?.value;
  String? get genderValue => genderValueController?.value;
}
