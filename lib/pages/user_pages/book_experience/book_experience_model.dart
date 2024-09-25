import '/flutter_flow/flutter_flow_calendar.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'book_experience_widget.dart' show BookExperienceWidget;
import 'package:flutter/material.dart';

class BookExperienceModel extends FlutterFlowModel<BookExperienceWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for CountController1 widget.
  int? countController1Value;
  // State field(s) for Calendar widget.
  DateTimeRange? calendarSelectedDay;

  @override
  void initState(BuildContext context) {
    calendarSelectedDay = DateTimeRange(
      start: DateTime.now().startOfDay,
      end: DateTime.now().endOfDay,
    );
  }

  @override
  void dispose() {}
}
