import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'survey_model.dart';
export 'survey_model.dart';

class SurveyWidget extends StatefulWidget {
  const SurveyWidget({
    super.key,
    Color? starColor,
  }) : this.starColor = starColor ?? const Color(0xFFA0A0A0);

  /// change the color of the star when clicked
  final Color starColor;

  @override
  State<SurveyWidget> createState() => _SurveyWidgetState();
}

class _SurveyWidgetState extends State<SurveyWidget> {
  late SurveyModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SurveyModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            color: Colors.transparent,
          ),
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(24.0, 24.0, 24.0, 24.0),
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).secondaryBackground,
                boxShadow: [
                  BoxShadow(
                    blurRadius: 4.0,
                    color: Color(0x33000000),
                    offset: Offset(
                      0.0,
                      2.0,
                    ),
                    spreadRadius: 0.0,
                  )
                ],
                borderRadius: BorderRadius.circular(16.0),
              ),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 16.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
                      child: Text(
                        'How likely are you to recommend this app to a friend?',
                        textAlign: TextAlign.center,
                        style:
                            FlutterFlowTheme.of(context).headlineSmall.override(
                                  fontFamily: 'Cardo',
                                  letterSpacing: 0.0,
                                ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          FlutterFlowIconButton(
                            borderColor: Colors.transparent,
                            borderRadius: 30.0,
                            borderWidth: 1.0,
                            buttonSize: 40.0,
                            icon: Icon(
                              Icons.star_border,
                              color: _model.selectedRating == 1
                                  ? FlutterFlowTheme.of(context).warning
                                  : Color(0xFFA0A0A0),
                              size: 24.0,
                            ),
                            onPressed: () async {
                              logFirebaseEvent(
                                  'SURVEY_COMP_star_border_ICN_ON_TAP');
                              logFirebaseEvent(
                                  'IconButton_update_component_state');
                              _model.selectedRating = 1;
                              safeSetState(() {});
                            },
                          ),
                          FlutterFlowIconButton(
                            borderColor: Colors.transparent,
                            borderRadius: 30.0,
                            borderWidth: 1.0,
                            buttonSize: 40.0,
                            icon: Icon(
                              Icons.star_border,
                              color: _model.selectedRating == 2
                                  ? FlutterFlowTheme.of(context).warning
                                  : Color(0xFFA0A0A0),
                              size: 24.0,
                            ),
                            onPressed: () async {
                              logFirebaseEvent(
                                  'SURVEY_COMP_star_border_ICN_ON_TAP');
                              logFirebaseEvent(
                                  'IconButton_update_component_state');
                              _model.selectedRating = 2;
                              safeSetState(() {});
                            },
                          ),
                          FlutterFlowIconButton(
                            borderColor: Colors.transparent,
                            borderRadius: 30.0,
                            borderWidth: 1.0,
                            buttonSize: 40.0,
                            icon: Icon(
                              Icons.star_border,
                              color: _model.selectedRating == 3
                                  ? FlutterFlowTheme.of(context).warning
                                  : Color(0xFFA0A0A0),
                              size: 24.0,
                            ),
                            onPressed: () async {
                              logFirebaseEvent(
                                  'SURVEY_COMP_star_border_ICN_ON_TAP');
                              logFirebaseEvent(
                                  'IconButton_update_component_state');
                              _model.selectedRating = 3;
                              safeSetState(() {});
                            },
                          ),
                          FlutterFlowIconButton(
                            borderColor: Colors.transparent,
                            borderRadius: 30.0,
                            borderWidth: 1.0,
                            buttonSize: 40.0,
                            icon: Icon(
                              Icons.star_border,
                              color: _model.selectedRating == 4
                                  ? FlutterFlowTheme.of(context).warning
                                  : Color(0xFFA0A0A0),
                              size: 24.0,
                            ),
                            onPressed: () async {
                              logFirebaseEvent(
                                  'SURVEY_COMP_star_border_ICN_ON_TAP');
                              logFirebaseEvent(
                                  'IconButton_update_component_state');
                              _model.selectedRating = 4;
                              safeSetState(() {});
                            },
                          ),
                          FlutterFlowIconButton(
                            borderColor: Colors.transparent,
                            borderRadius: 30.0,
                            borderWidth: 1.0,
                            buttonSize: 40.0,
                            icon: Icon(
                              Icons.star_border,
                              color: _model.selectedRating == 5
                                  ? FlutterFlowTheme.of(context).warning
                                  : Color(0xFFA0A0A0),
                              size: 24.0,
                            ),
                            onPressed: () async {
                              logFirebaseEvent(
                                  'SURVEY_COMP_star_border_ICN_ON_TAP');
                              logFirebaseEvent(
                                  'IconButton_update_component_state');
                              _model.selectedRating = 5;
                              safeSetState(() {});
                            },
                          ),
                        ].divide(SizedBox(width: 8.0)),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
                      child: FFButtonWidget(
                        onPressed: () async {
                          logFirebaseEvent('SURVEY_COMP_SUBMIT_BTN_ON_TAP');
                          logFirebaseEvent('Button_backend_call');

                          await SurveyResponsesRecord.collection
                              .doc()
                              .set(createSurveyResponsesRecordData(
                                rating: _model.selectedRating,
                                timeSubmitted: getCurrentTimestamp,
                                userID: currentUserUid,
                              ));
                          logFirebaseEvent('Button_navigate_back');
                          context.safePop();
                        },
                        text: 'Submit',
                        options: FFButtonOptions(
                          width: double.infinity,
                          height: 50.0,
                          padding: EdgeInsets.all(8.0),
                          iconPadding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          color: FlutterFlowTheme.of(context).primary,
                          textStyle:
                              FlutterFlowTheme.of(context).titleSmall.override(
                                    fontFamily: 'Cardo',
                                    color: FlutterFlowTheme.of(context).info,
                                    letterSpacing: 0.0,
                                  ),
                          elevation: 0.0,
                          borderSide: BorderSide(
                            color: Colors.transparent,
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                    ),
                  ].divide(SizedBox(height: 16.0)),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
