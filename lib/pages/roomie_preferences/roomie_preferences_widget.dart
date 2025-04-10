import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'roomie_preferences_model.dart';
export 'roomie_preferences_model.dart';

class RoomiePreferencesWidget extends StatefulWidget {
  const RoomiePreferencesWidget({super.key});

  static String routeName = 'RoomiePreferences';
  static String routePath = '/roomiePreferences';

  @override
  State<RoomiePreferencesWidget> createState() =>
      _RoomiePreferencesWidgetState();
}

class _RoomiePreferencesWidgetState extends State<RoomiePreferencesWidget> {
  late RoomiePreferencesModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => RoomiePreferencesModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'RoomiePreferences'});
    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      'Roommate Preferences',
                      style:
                          FlutterFlowTheme.of(context).displayMedium.override(
                                fontFamily: 'Cardo',
                                letterSpacing: 0.0,
                              ),
                    ),
                  ],
                ),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Lifestyle & Habits',
                      style: FlutterFlowTheme.of(context).titleMedium.override(
                            fontFamily: 'Cardo',
                            letterSpacing: 0.0,
                          ),
                    ),
                    Text(
                      'What time do you usually wake up?',
                      style: FlutterFlowTheme.of(context).titleSmall.override(
                            fontFamily: 'Cardo',
                            letterSpacing: 0.0,
                          ),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            logFirebaseEvent(
                                'ROOMIE_PREFERENCES_Container_kmmqyt85_ON');
                            logFirebaseEvent('Container_update_page_state');
                            _model.isSelectedEarly = true;
                            safeSetState(() {});
                            logFirebaseEvent('Container_backend_call');

                            await currentUserReference!
                                .update(createUsersRecordData(
                              wakeUp: 'Early',
                            ));
                          },
                          child: Container(
                            width: 50.0,
                            height: 25.0,
                            decoration: BoxDecoration(
                              color: _model.isSelectedEarly == true
                                  ? FlutterFlowTheme.of(context).primary
                                  : FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                              borderRadius: BorderRadius.circular(1.0),
                              border: Border.all(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                              ),
                            ),
                            child: Align(
                              alignment: AlignmentDirectional(0.0, 0.0),
                              child: Text(
                                'Early',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Cardo',
                                      letterSpacing: 0.0,
                                    ),
                              ),
                            ),
                          ),
                        ),
                        InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            logFirebaseEvent(
                                'ROOMIE_PREFERENCES_Container_vx0ce26c_ON');
                            logFirebaseEvent('Container_update_page_state');
                            _model.isSelectedMid = true;
                            safeSetState(() {});
                            logFirebaseEvent('Container_backend_call');

                            await currentUserReference!
                                .update(createUsersRecordData(
                              wakeUp: 'Mid-morning',
                            ));
                          },
                          child: Container(
                            width: 90.0,
                            height: 25.0,
                            decoration: BoxDecoration(
                              color: _model.isSelectedMid == true
                                  ? FlutterFlowTheme.of(context).primary
                                  : FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                              borderRadius: BorderRadius.circular(1.0),
                              border: Border.all(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                              ),
                            ),
                            child: Align(
                              alignment: AlignmentDirectional(0.0, 0.0),
                              child: Text(
                                'Mid-morning',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Cardo',
                                      letterSpacing: 0.0,
                                    ),
                              ),
                            ),
                          ),
                        ),
                        InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            logFirebaseEvent(
                                'ROOMIE_PREFERENCES_Container_3a9vr5ys_ON');
                            logFirebaseEvent('Container_update_page_state');
                            _model.isSelectedLate = true;
                            safeSetState(() {});
                            logFirebaseEvent('Container_backend_call');

                            await currentUserReference!
                                .update(createUsersRecordData(
                              wakeUp: 'Late',
                            ));
                          },
                          child: Container(
                            width: 50.0,
                            height: 25.0,
                            decoration: BoxDecoration(
                              color: _model.isSelectedLate == true
                                  ? FlutterFlowTheme.of(context).primary
                                  : FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                              borderRadius: BorderRadius.circular(1.0),
                              border: Border.all(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                              ),
                            ),
                            child: Align(
                              alignment: AlignmentDirectional(0.0, 0.0),
                              child: Text(
                                'Late',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Cardo',
                                      letterSpacing: 0.0,
                                    ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'When do you usually go to bed?',
                      style: FlutterFlowTheme.of(context).titleSmall.override(
                            fontFamily: 'Cardo',
                            letterSpacing: 0.0,
                          ),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            logFirebaseEvent(
                                'ROOMIE_PREFERENCES_Container_kuw3ttiy_ON');
                            logFirebaseEvent('Container_update_page_state');
                            _model.isBedEarly = true;
                            safeSetState(() {});
                            logFirebaseEvent('Container_backend_call');

                            await currentUserReference!
                                .update(createUsersRecordData(
                              goToBed: 'Early',
                            ));
                          },
                          child: Container(
                            width: 50.0,
                            height: 25.0,
                            decoration: BoxDecoration(
                              color: _model.isBedEarly == true
                                  ? FlutterFlowTheme.of(context).primary
                                  : FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                              borderRadius: BorderRadius.circular(1.0),
                              border: Border.all(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                              ),
                            ),
                            child: Align(
                              alignment: AlignmentDirectional(0.0, 0.0),
                              child: Text(
                                'Early',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Cardo',
                                      letterSpacing: 0.0,
                                    ),
                              ),
                            ),
                          ),
                        ),
                        InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            logFirebaseEvent(
                                'ROOMIE_PREFERENCES_Container_0xkroewd_ON');
                            logFirebaseEvent('Container_update_page_state');
                            _model.isBedLate = true;
                            safeSetState(() {});
                            logFirebaseEvent('Container_backend_call');

                            await currentUserReference!
                                .update(createUsersRecordData(
                              goToBed: 'Late',
                            ));
                          },
                          child: Container(
                            width: 50.0,
                            height: 25.0,
                            decoration: BoxDecoration(
                              color: _model.isBedLate == true
                                  ? FlutterFlowTheme.of(context).primary
                                  : FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                              borderRadius: BorderRadius.circular(1.0),
                              border: Border.all(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                              ),
                            ),
                            child: Align(
                              alignment: AlignmentDirectional(0.0, 0.0),
                              child: Text(
                                'Late',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Cardo',
                                      letterSpacing: 0.0,
                                    ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Noise and Social Preferences',
                      style: FlutterFlowTheme.of(context).titleMedium.override(
                            fontFamily: 'Cardo',
                            letterSpacing: 0.0,
                          ),
                    ),
                    Text(
                      'Do you prefer a quiet or social living space?',
                      style: FlutterFlowTheme.of(context).titleSmall.override(
                            fontFamily: 'Cardo',
                            letterSpacing: 0.0,
                          ),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            logFirebaseEvent(
                                'ROOMIE_PREFERENCES_Container_rxauhqe2_ON');
                            logFirebaseEvent('Container_update_page_state');
                            _model.isQuiet = true;
                            safeSetState(() {});
                            logFirebaseEvent('Container_backend_call');

                            await currentUserReference!
                                .update(createUsersRecordData(
                              quietOrSocial: 'Quiet',
                            ));
                          },
                          child: Container(
                            width: 50.0,
                            height: 25.0,
                            decoration: BoxDecoration(
                              color: _model.isQuiet == true
                                  ? FlutterFlowTheme.of(context).primary
                                  : FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                              borderRadius: BorderRadius.circular(1.0),
                              border: Border.all(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                              ),
                            ),
                            child: Align(
                              alignment: AlignmentDirectional(0.0, 0.0),
                              child: Text(
                                'Quiet',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Cardo',
                                      letterSpacing: 0.0,
                                    ),
                              ),
                            ),
                          ),
                        ),
                        InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            logFirebaseEvent(
                                'ROOMIE_PREFERENCES_Container_1w62ywkl_ON');
                            logFirebaseEvent('Container_update_page_state');
                            _model.isSocial = true;
                            safeSetState(() {});
                            logFirebaseEvent('Container_backend_call');

                            await currentUserReference!
                                .update(createUsersRecordData(
                              quietOrSocial: 'Social',
                            ));
                          },
                          child: Container(
                            width: 50.0,
                            height: 25.0,
                            decoration: BoxDecoration(
                              color: _model.isSocial == true
                                  ? FlutterFlowTheme.of(context).primary
                                  : FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                              borderRadius: BorderRadius.circular(1.0),
                              border: Border.all(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                              ),
                            ),
                            child: Align(
                              alignment: AlignmentDirectional(0.0, 0.0),
                              child: Text(
                                'Social',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Cardo',
                                      letterSpacing: 0.0,
                                    ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Food and Shared Items',
                      style: FlutterFlowTheme.of(context).titleMedium.override(
                            fontFamily: 'Cardo',
                            letterSpacing: 0.0,
                          ),
                    ),
                    Text(
                      'Do you prefer to share food or keep it separate?',
                      style: FlutterFlowTheme.of(context).titleSmall.override(
                            fontFamily: 'Cardo',
                            letterSpacing: 0.0,
                          ),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            logFirebaseEvent(
                                'ROOMIE_PREFERENCES_Container_t8uy1ty9_ON');
                            logFirebaseEvent('Container_update_page_state');
                            _model.isShare = true;
                            safeSetState(() {});
                            logFirebaseEvent('Container_backend_call');

                            await currentUserReference!
                                .update(createUsersRecordData(
                              shareOrSeparate: 'Share',
                            ));
                          },
                          child: Container(
                            width: 50.0,
                            height: 25.0,
                            decoration: BoxDecoration(
                              color: _model.isShare == true
                                  ? FlutterFlowTheme.of(context).primary
                                  : FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                              borderRadius: BorderRadius.circular(1.0),
                              border: Border.all(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                              ),
                            ),
                            child: Align(
                              alignment: AlignmentDirectional(0.0, 0.0),
                              child: Text(
                                'Share',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Cardo',
                                      letterSpacing: 0.0,
                                    ),
                              ),
                            ),
                          ),
                        ),
                        InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            logFirebaseEvent(
                                'ROOMIE_PREFERENCES_Container_261sqimx_ON');
                            logFirebaseEvent('Container_update_page_state');
                            _model.isSeparate = true;
                            safeSetState(() {});
                            logFirebaseEvent('Container_backend_call');

                            await currentUserReference!
                                .update(createUsersRecordData(
                              shareOrSeparate: 'Separate',
                            ));
                          },
                          child: Container(
                            width: 50.0,
                            height: 25.0,
                            decoration: BoxDecoration(
                              color: _model.isSeparate == true
                                  ? FlutterFlowTheme.of(context).primary
                                  : FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                              borderRadius: BorderRadius.circular(1.0),
                              border: Border.all(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                              ),
                            ),
                            child: Align(
                              alignment: AlignmentDirectional(0.0, 0.0),
                              child: Text(
                                'Separate',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Cardo',
                                      letterSpacing: 0.0,
                                    ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Pets and Allergies',
                      style: FlutterFlowTheme.of(context).titleMedium.override(
                            fontFamily: 'Cardo',
                            letterSpacing: 0.0,
                          ),
                    ),
                    Text(
                      'Do you have any pets?',
                      style: FlutterFlowTheme.of(context).titleSmall.override(
                            fontFamily: 'Cardo',
                            letterSpacing: 0.0,
                          ),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            logFirebaseEvent(
                                'ROOMIE_PREFERENCES_Container_i94p54tl_ON');
                            logFirebaseEvent('Container_update_page_state');
                            _model.isYesPet = true;
                            safeSetState(() {});
                            logFirebaseEvent('Container_backend_call');

                            await currentUserReference!
                                .update(createUsersRecordData(
                              pets: 'Yes',
                            ));
                          },
                          child: Container(
                            width: 50.0,
                            height: 25.0,
                            decoration: BoxDecoration(
                              color: _model.isYesPet == true
                                  ? FlutterFlowTheme.of(context).primary
                                  : FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                              borderRadius: BorderRadius.circular(1.0),
                              border: Border.all(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                              ),
                            ),
                            child: Align(
                              alignment: AlignmentDirectional(0.0, 0.0),
                              child: Text(
                                'Yes',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Cardo',
                                      letterSpacing: 0.0,
                                    ),
                              ),
                            ),
                          ),
                        ),
                        InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            logFirebaseEvent(
                                'ROOMIE_PREFERENCES_Container_skx76uln_ON');
                            logFirebaseEvent('Container_update_page_state');
                            _model.isNoPet = true;
                            safeSetState(() {});
                            logFirebaseEvent('Container_backend_call');

                            await currentUserReference!
                                .update(createUsersRecordData(
                              pets: 'No',
                            ));
                          },
                          child: Container(
                            width: 50.0,
                            height: 25.0,
                            decoration: BoxDecoration(
                              color: _model.isNoPet == true
                                  ? FlutterFlowTheme.of(context).primary
                                  : FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                              borderRadius: BorderRadius.circular(1.0),
                              border: Border.all(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                              ),
                            ),
                            child: Align(
                              alignment: AlignmentDirectional(0.0, 0.0),
                              child: Text(
                                'No',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Cardo',
                                      letterSpacing: 0.0,
                                    ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Do you have any allergies?',
                      style: FlutterFlowTheme.of(context).titleSmall.override(
                            fontFamily: 'Cardo',
                            letterSpacing: 0.0,
                          ),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            logFirebaseEvent(
                                'ROOMIE_PREFERENCES_Container_9ej15z17_ON');
                            logFirebaseEvent('Container_update_page_state');
                            _model.isYesAllergy = true;
                            safeSetState(() {});
                            logFirebaseEvent('Container_backend_call');

                            await currentUserReference!
                                .update(createUsersRecordData(
                              allergies: 'Yes',
                            ));
                          },
                          child: Container(
                            width: 50.0,
                            height: 25.0,
                            decoration: BoxDecoration(
                              color: _model.isYesAllergy == true
                                  ? FlutterFlowTheme.of(context).primary
                                  : FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                              borderRadius: BorderRadius.circular(1.0),
                              border: Border.all(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                              ),
                            ),
                            child: Align(
                              alignment: AlignmentDirectional(0.0, 0.0),
                              child: Text(
                                'Yes',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Cardo',
                                      letterSpacing: 0.0,
                                    ),
                              ),
                            ),
                          ),
                        ),
                        InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            logFirebaseEvent(
                                'ROOMIE_PREFERENCES_Container_r72aa2y1_ON');
                            logFirebaseEvent('Container_update_page_state');
                            _model.isNoAllergy = true;
                            safeSetState(() {});
                            logFirebaseEvent('Container_backend_call');

                            await currentUserReference!
                                .update(createUsersRecordData(
                              allergies: 'No',
                            ));
                          },
                          child: Container(
                            width: 50.0,
                            height: 25.0,
                            decoration: BoxDecoration(
                              color: _model.isNoAllergy == true
                                  ? FlutterFlowTheme.of(context).primary
                                  : FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                              borderRadius: BorderRadius.circular(1.0),
                              border: Border.all(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                              ),
                            ),
                            child: Align(
                              alignment: AlignmentDirectional(0.0, 0.0),
                              child: Text(
                                'No',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Cardo',
                                      letterSpacing: 0.0,
                                    ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Work & Study',
                      style: FlutterFlowTheme.of(context).titleMedium.override(
                            fontFamily: 'Cardo',
                            letterSpacing: 0.0,
                          ),
                    ),
                    Text(
                      'Do you need a quiet space for studying?',
                      style: FlutterFlowTheme.of(context).titleSmall.override(
                            fontFamily: 'Cardo',
                            letterSpacing: 0.0,
                          ),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            logFirebaseEvent(
                                'ROOMIE_PREFERENCES_Container_qgflbgkg_ON');
                            logFirebaseEvent('Container_update_page_state');
                            _model.isYesStudy = true;
                            safeSetState(() {});
                            logFirebaseEvent('Container_backend_call');

                            await currentUserReference!
                                .update(createUsersRecordData(
                              quietSpace: 'Quiet Study',
                            ));
                          },
                          child: Container(
                            width: 50.0,
                            height: 25.0,
                            decoration: BoxDecoration(
                              color: _model.isYesStudy == true
                                  ? FlutterFlowTheme.of(context).primary
                                  : FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                              borderRadius: BorderRadius.circular(1.0),
                              border: Border.all(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                              ),
                            ),
                            child: Align(
                              alignment: AlignmentDirectional(0.0, 0.0),
                              child: Text(
                                'Yes',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Cardo',
                                      letterSpacing: 0.0,
                                    ),
                              ),
                            ),
                          ),
                        ),
                        InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            logFirebaseEvent(
                                'ROOMIE_PREFERENCES_Container_9uvewplp_ON');
                            logFirebaseEvent('Container_update_page_state');
                            _model.isNoStudy = true;
                            safeSetState(() {});
                            logFirebaseEvent('Container_backend_call');

                            await currentUserReference!
                                .update(createUsersRecordData(
                              quietSpace: 'Noise Is Fine',
                            ));
                          },
                          child: Container(
                            width: 50.0,
                            height: 25.0,
                            decoration: BoxDecoration(
                              color: _model.isNoStudy == true
                                  ? FlutterFlowTheme.of(context).primary
                                  : FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                              borderRadius: BorderRadius.circular(1.0),
                              border: Border.all(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                              ),
                            ),
                            child: Align(
                              alignment: AlignmentDirectional(0.0, 0.0),
                              child: Text(
                                'No',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Cardo',
                                      letterSpacing: 0.0,
                                    ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Align(
                  alignment: AlignmentDirectional(0.0, 1.0),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 80.0, 0.0, 0.0),
                    child: FFButtonWidget(
                      onPressed: () async {
                        logFirebaseEvent(
                            'ROOMIE_PREFERENCES_COMPLETE_BTN_ON_TAP');
                        logFirebaseEvent('Button_navigate_to');

                        context
                            .pushNamed(GeneralListingsStudentsWidget.routeName);

                        logFirebaseEvent('Button_backend_call');

                        await currentUserReference!
                            .update(createUsersRecordData(
                          allergies: '',
                          goToBed:
                              valueOrDefault(currentUserDocument?.goToBed, ''),
                          pets: valueOrDefault(currentUserDocument?.pets, ''),
                          quietOrSocial: valueOrDefault(
                              currentUserDocument?.quietOrSocial, ''),
                          quietSpace: valueOrDefault(
                              currentUserDocument?.quietSpace, ''),
                          shareOrSeparate: valueOrDefault(
                              currentUserDocument?.shareOrSeparate, ''),
                          wakeUp:
                              valueOrDefault(currentUserDocument?.wakeUp, ''),
                        ));
                      },
                      text: 'Complete',
                      options: FFButtonOptions(
                        width: double.infinity,
                        height: 40.0,
                        padding: EdgeInsetsDirectional.fromSTEB(
                            16.0, 0.0, 16.0, 0.0),
                        iconPadding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        color: FlutterFlowTheme.of(context).primary,
                        textStyle:
                            FlutterFlowTheme.of(context).titleSmall.override(
                                  fontFamily: 'Cardo',
                                  color: Colors.white,
                                  letterSpacing: 0.0,
                                ),
                        elevation: 0.0,
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                  ),
                ),
              ].divide(SizedBox(height: 20.0)),
            ),
          ),
        ),
      ),
    );
  }
}
