import '/flutter_flow/flutter_flow_util.dart';
import '/pages/host_pages/navbar_forhost/navbar_forhost_widget.dart';
import 'profile_settings_host_widget.dart' show ProfileSettingsHostWidget;
import 'package:flutter/material.dart';

class ProfileSettingsHostModel
    extends FlutterFlowModel<ProfileSettingsHostWidget> {
  ///  State fields for stateful widgets in this page.

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
}
