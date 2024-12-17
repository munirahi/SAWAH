import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'user_reserved_experiences_widget.dart'
    show UserReservedExperiencesWidget;
import 'package:flutter/material.dart';

class UserReservedExperiencesModel
    extends FlutterFlowModel<UserReservedExperiencesWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // Stores action output result for [Action Block - createOrUpdateChatDoc] action in Button widget.
  ChatsRecord? chatDoc;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    tabBarController?.dispose();
  }
}
