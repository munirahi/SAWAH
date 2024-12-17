import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import 'package:flutter/material.dart';
import 'update_phone_num_model.dart';
export 'update_phone_num_model.dart';

class UpdatePhoneNumWidget extends StatefulWidget {
  const UpdatePhoneNumWidget({
    super.key,
    required this.userref,
    required this.newPhoneNumber,
  });

  final DocumentReference? userref;
  final String? newPhoneNumber;

  @override
  State<UpdatePhoneNumWidget> createState() => _UpdatePhoneNumWidgetState();
}

class _UpdatePhoneNumWidgetState extends State<UpdatePhoneNumWidget> {
  late UpdatePhoneNumModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => UpdatePhoneNumModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 426.0,
      height: 343.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Align(
                alignment: const AlignmentDirectional(0.0, 0.0),
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(20.0, 20.0, 0.0, 0.0),
                  child: Text(
                    'Update Phone Number',
                    textAlign: TextAlign.center,
                    style: FlutterFlowTheme.of(context).labelLarge.override(
                          fontFamily: 'Inter',
                          color: FlutterFlowTheme.of(context).primaryText,
                          fontSize: 20.0,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.w600,
                        ),
                  ),
                ),
              ),
            ],
          ),
          Align(
            alignment: const AlignmentDirectional(0.0, 0.0),
            child: InkWell(
              splashColor: Colors.transparent,
              focusColor: Colors.transparent,
              hoverColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onTap: () async {
                FFAppState().phoneNumber = '';
                safeSetState(() {});
              },
              child: SizedBox(
                width: MediaQuery.sizeOf(context).width * 0.9,
                height: 70.0,
                child: custom_widgets.PhoneNumberPicker(
                  width: MediaQuery.sizeOf(context).width * 0.9,
                  height: 70.0,
                ),
              ),
            ),
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Align(
                alignment: const AlignmentDirectional(0.0, 0.0),
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(110.0, 0.0, 0.0, 0.0),
                  child: StreamBuilder<List<UsersRecord>>(
                    stream: queryUsersRecord(
                      queryBuilder: (usersRecord) => usersRecord.where(
                        'uid',
                        isEqualTo: currentUserUid,
                      ),
                      singleRecord: true,
                    )..listen((snapshot) {
                        List<UsersRecord> buttonUsersRecordList = snapshot;
                        final buttonUsersRecord =
                            buttonUsersRecordList.isNotEmpty
                                ? buttonUsersRecordList.first
                                : null;
                        if (_model.buttonPreviousSnapshot != null &&
                            !const ListEquality(UsersRecordDocumentEquality())
                                .equals(buttonUsersRecordList,
                                    _model.buttonPreviousSnapshot)) {
                          () async {
                            FFAppState().phoneNumber = widget.newPhoneNumber!;
                            safeSetState(() {});

                            await buttonUsersRecord!.reference
                                .update(createUsersRecordData(
                              phoneNumber: currentPhoneNumber,
                              uid: buttonUsersRecord.reference.id,
                            ));

                            safeSetState(() {});
                          }();
                        }
                        _model.buttonPreviousSnapshot = snapshot;
                      }),
                    builder: (context, snapshot) {
                      // Customize what your widget looks like when it's loading.
                      if (!snapshot.hasData) {
                        return Center(
                          child: SizedBox(
                            width: 50.0,
                            height: 50.0,
                            child: CircularProgressIndicator(
                              valueColor: AlwaysStoppedAnimation<Color>(
                                FlutterFlowTheme.of(context).primary,
                              ),
                            ),
                          ),
                        );
                      }
                      List<UsersRecord> buttonUsersRecordList = snapshot.data!;
                      // Return an empty Container when the item does not exist.
                      if (snapshot.data!.isEmpty) {
                        return Container();
                      }
                      final buttonUsersRecord = buttonUsersRecordList.isNotEmpty
                          ? buttonUsersRecordList.first
                          : null;

                      return FFButtonWidget(
                        onPressed: () {
                          print('Button pressed ...');
                        },
                        text: 'Save Changes',
                        options: FFButtonOptions(
                          height: 40.0,
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              16.0, 0.0, 16.0, 0.0),
                          iconPadding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          color: FlutterFlowTheme.of(context).primary,
                          textStyle:
                              FlutterFlowTheme.of(context).titleSmall.override(
                                    fontFamily: 'Inter Tight',
                                    letterSpacing: 0.0,
                                  ),
                          elevation: 0.0,
                          borderRadius: BorderRadius.circular(22.0),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
