import '/flutter_flow/flutter_flow_util.dart';
import 'review_for_user_widget.dart' show ReviewForUserWidget;
import 'package:flutter/material.dart';

class ReviewForUserModel extends FlutterFlowModel<ReviewForUserWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for RatingBar widget.
  double? ratingBarValue;
  // State field(s) for myBio widget.
  FocusNode? myBioFocusNode;
  TextEditingController? myBioTextController;
  String? Function(BuildContext, String?)? myBioTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    myBioFocusNode?.dispose();
    myBioTextController?.dispose();
  }
}
