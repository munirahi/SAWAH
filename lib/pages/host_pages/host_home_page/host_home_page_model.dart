import '/flutter_flow/flutter_flow_util.dart';
import '/pages/host_pages/navbar_forhost/navbar_forhost_widget.dart';
import 'host_home_page_widget.dart' show HostHomePageWidget;
import 'package:flutter/material.dart';

class HostHomePageModel extends FlutterFlowModel<HostHomePageWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // Model for navbarForhost component.
  late NavbarForhostModel navbarForhostModel;

  @override
  void initState(BuildContext context) {
    navbarForhostModel = createModel(context, () => NavbarForhostModel());
  }

  @override
  void dispose() {
    tabBarController?.dispose();
    navbarForhostModel.dispose();
  }
}
