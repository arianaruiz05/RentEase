import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
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
                                font: GoogleFonts.cardo(
                                  fontWeight: FlutterFlowTheme.of(context)
                                      .displayMedium
                                      .fontWeight,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .displayMedium
                                      .fontStyle,
                                ),
                                letterSpacing: 0.0,
                                fontWeight: FlutterFlowTheme.of(context)
                                    .displayMedium
                                    .fontWeight,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .displayMedium
                                    .fontStyle,
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
                            font: GoogleFonts.cardo(
                              fontWeight: FlutterFlowTheme.of(context)
                                  .titleMedium
                                  .fontWeight,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .titleMedium
                                  .fontStyle,
                            ),
                            letterSpacing: 0.0,
                            fontWeight: FlutterFlowTheme.of(context)
                                .titleMedium
                                .fontWeight,
                            fontStyle: FlutterFlowTheme.of(context)
                                .titleMedium
                                .fontStyle,
                          ),
                    ),
                    Text(
                      'What time do you usually wake up?',
                      style: FlutterFlowTheme.of(context).titleSmall.override(
                            font: GoogleFonts.cardo(
                              fontWeight: FlutterFlowTheme.of(context)
                                  .titleSmall
                                  .fontWeight,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .titleSmall
                                  .fontStyle,
                            ),
                            letterSpacing: 0.0,
                            fontWeight: FlutterFlowTheme.of(context)
                                .titleSmall
                                .fontWeight,
                            fontStyle: FlutterFlowTheme.of(context)
                                .titleSmall
                                .fontStyle,
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

                            await RoommatePrefRecord.createDoc(
                                    currentUserReference!)
                                .set(createRoommatePrefRecordData(
                              wakeUp: 'Early',
                            ));
                          },
                          child: Container(
                            width: 50.0,
                            height: 25.0,
                            decoration: BoxDecoration(
                              color: _model.isSelectedEarly == true
                                  ? FlutterFlowTheme.of(context).secondary
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
                                      font: GoogleFonts.cardo(
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontStyle,
                                      ),
                                      letterSpacing: 0.0,
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
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

                            await RoommatePrefRecord.createDoc(
                                    currentUserReference!)
                                .set(createRoommatePrefRecordData(
                              wakeUp: 'Mid-morning',
                            ));
                          },
                          child: Container(
                            key: ValueKey('Container_4kl9'),
                            width: 90.0,
                            height: 25.0,
                            decoration: BoxDecoration(
                              color: _model.isSelectedMid == true
                                  ? FlutterFlowTheme.of(context).secondary
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
                                      font: GoogleFonts.cardo(
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontStyle,
                                      ),
                                      letterSpacing: 0.0,
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
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

                            await RoommatePrefRecord.createDoc(
                                    currentUserReference!)
                                .set(createRoommatePrefRecordData(
                              wakeUp: 'Late',
                            ));
                          },
                          child: Container(
                            width: 50.0,
                            height: 25.0,
                            decoration: BoxDecoration(
                              color: _model.isSelectedLate == true
                                  ? FlutterFlowTheme.of(context).secondary
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
                                      font: GoogleFonts.cardo(
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontStyle,
                                      ),
                                      letterSpacing: 0.0,
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
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
                            font: GoogleFonts.cardo(
                              fontWeight: FlutterFlowTheme.of(context)
                                  .titleSmall
                                  .fontWeight,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .titleSmall
                                  .fontStyle,
                            ),
                            letterSpacing: 0.0,
                            fontWeight: FlutterFlowTheme.of(context)
                                .titleSmall
                                .fontWeight,
                            fontStyle: FlutterFlowTheme.of(context)
                                .titleSmall
                                .fontStyle,
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

                            await RoommatePrefRecord.createDoc(
                                    currentUserReference!)
                                .set(createRoommatePrefRecordData(
                              goToBed: 'Early',
                            ));
                          },
                          child: Container(
                            key: ValueKey('Container_j5ua'),
                            width: 50.0,
                            height: 25.0,
                            decoration: BoxDecoration(
                              color: _model.isBedEarly == true
                                  ? FlutterFlowTheme.of(context).secondary
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
                                      font: GoogleFonts.cardo(
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontStyle,
                                      ),
                                      letterSpacing: 0.0,
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
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

                            await RoommatePrefRecord.createDoc(
                                    currentUserReference!)
                                .set(createRoommatePrefRecordData(
                              goToBed: 'Late',
                            ));
                          },
                          child: Container(
                            width: 50.0,
                            height: 25.0,
                            decoration: BoxDecoration(
                              color: _model.isBedLate == true
                                  ? FlutterFlowTheme.of(context).secondary
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
                                      font: GoogleFonts.cardo(
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontStyle,
                                      ),
                                      letterSpacing: 0.0,
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
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
                            font: GoogleFonts.cardo(
                              fontWeight: FlutterFlowTheme.of(context)
                                  .titleMedium
                                  .fontWeight,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .titleMedium
                                  .fontStyle,
                            ),
                            letterSpacing: 0.0,
                            fontWeight: FlutterFlowTheme.of(context)
                                .titleMedium
                                .fontWeight,
                            fontStyle: FlutterFlowTheme.of(context)
                                .titleMedium
                                .fontStyle,
                          ),
                    ),
                    Text(
                      'Do you prefer a quiet or social living space?',
                      style: FlutterFlowTheme.of(context).titleSmall.override(
                            font: GoogleFonts.cardo(
                              fontWeight: FlutterFlowTheme.of(context)
                                  .titleSmall
                                  .fontWeight,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .titleSmall
                                  .fontStyle,
                            ),
                            letterSpacing: 0.0,
                            fontWeight: FlutterFlowTheme.of(context)
                                .titleSmall
                                .fontWeight,
                            fontStyle: FlutterFlowTheme.of(context)
                                .titleSmall
                                .fontStyle,
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

                            await RoommatePrefRecord.createDoc(
                                    currentUserReference!)
                                .set(createRoommatePrefRecordData(
                              quietOrSocial: 'Quiet',
                            ));
                          },
                          child: Container(
                            width: 50.0,
                            height: 25.0,
                            decoration: BoxDecoration(
                              color: _model.isQuiet == true
                                  ? FlutterFlowTheme.of(context).secondary
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
                                      font: GoogleFonts.cardo(
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontStyle,
                                      ),
                                      letterSpacing: 0.0,
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
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

                            await RoommatePrefRecord.createDoc(
                                    currentUserReference!)
                                .set(createRoommatePrefRecordData(
                              quietOrSocial: 'Social',
                            ));
                          },
                          child: Container(
                            key: ValueKey('Container_ehqi'),
                            width: 50.0,
                            height: 25.0,
                            decoration: BoxDecoration(
                              color: _model.isSocial == true
                                  ? FlutterFlowTheme.of(context).secondary
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
                                      font: GoogleFonts.cardo(
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontStyle,
                                      ),
                                      letterSpacing: 0.0,
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
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
                            font: GoogleFonts.cardo(
                              fontWeight: FlutterFlowTheme.of(context)
                                  .titleMedium
                                  .fontWeight,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .titleMedium
                                  .fontStyle,
                            ),
                            letterSpacing: 0.0,
                            fontWeight: FlutterFlowTheme.of(context)
                                .titleMedium
                                .fontWeight,
                            fontStyle: FlutterFlowTheme.of(context)
                                .titleMedium
                                .fontStyle,
                          ),
                    ),
                    Text(
                      'Do you prefer to share food or keep it separate?',
                      style: FlutterFlowTheme.of(context).titleSmall.override(
                            font: GoogleFonts.cardo(
                              fontWeight: FlutterFlowTheme.of(context)
                                  .titleSmall
                                  .fontWeight,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .titleSmall
                                  .fontStyle,
                            ),
                            letterSpacing: 0.0,
                            fontWeight: FlutterFlowTheme.of(context)
                                .titleSmall
                                .fontWeight,
                            fontStyle: FlutterFlowTheme.of(context)
                                .titleSmall
                                .fontStyle,
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

                            await RoommatePrefRecord.createDoc(
                                    currentUserReference!)
                                .set(createRoommatePrefRecordData(
                              shareOrSeparate: 'Share',
                            ));
                          },
                          child: Container(
                            width: 50.0,
                            height: 25.0,
                            decoration: BoxDecoration(
                              color: _model.isShare == true
                                  ? FlutterFlowTheme.of(context).secondary
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
                                      font: GoogleFonts.cardo(
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontStyle,
                                      ),
                                      letterSpacing: 0.0,
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
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

                            await RoommatePrefRecord.createDoc(
                                    currentUserReference!)
                                .set(createRoommatePrefRecordData(
                              shareOrSeparate: 'Separate',
                            ));
                          },
                          child: Container(
                            key: ValueKey('Container_ysjr'),
                            width: 50.0,
                            height: 25.0,
                            decoration: BoxDecoration(
                              color: _model.isSeparate == true
                                  ? FlutterFlowTheme.of(context).secondary
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
                                      font: GoogleFonts.cardo(
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontStyle,
                                      ),
                                      letterSpacing: 0.0,
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
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
                            font: GoogleFonts.cardo(
                              fontWeight: FlutterFlowTheme.of(context)
                                  .titleMedium
                                  .fontWeight,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .titleMedium
                                  .fontStyle,
                            ),
                            letterSpacing: 0.0,
                            fontWeight: FlutterFlowTheme.of(context)
                                .titleMedium
                                .fontWeight,
                            fontStyle: FlutterFlowTheme.of(context)
                                .titleMedium
                                .fontStyle,
                          ),
                    ),
                    Text(
                      'Do you have any pets?',
                      style: FlutterFlowTheme.of(context).titleSmall.override(
                            font: GoogleFonts.cardo(
                              fontWeight: FlutterFlowTheme.of(context)
                                  .titleSmall
                                  .fontWeight,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .titleSmall
                                  .fontStyle,
                            ),
                            letterSpacing: 0.0,
                            fontWeight: FlutterFlowTheme.of(context)
                                .titleSmall
                                .fontWeight,
                            fontStyle: FlutterFlowTheme.of(context)
                                .titleSmall
                                .fontStyle,
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

                            await RoommatePrefRecord.createDoc(
                                    currentUserReference!)
                                .set(createRoommatePrefRecordData(
                              pets: 'Yes',
                            ));
                          },
                          child: Container(
                            width: 50.0,
                            height: 25.0,
                            decoration: BoxDecoration(
                              color: _model.isYesPet == true
                                  ? FlutterFlowTheme.of(context).secondary
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
                                      font: GoogleFonts.cardo(
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontStyle,
                                      ),
                                      letterSpacing: 0.0,
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
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

                            await RoommatePrefRecord.createDoc(
                                    currentUserReference!)
                                .set(createRoommatePrefRecordData(
                              pets: 'No',
                            ));
                          },
                          child: Container(
                            key: ValueKey('Container_k98a'),
                            width: 50.0,
                            height: 25.0,
                            decoration: BoxDecoration(
                              color: _model.isNoPet == true
                                  ? FlutterFlowTheme.of(context).secondary
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
                                      font: GoogleFonts.cardo(
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontStyle,
                                      ),
                                      letterSpacing: 0.0,
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
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
                            font: GoogleFonts.cardo(
                              fontWeight: FlutterFlowTheme.of(context)
                                  .titleSmall
                                  .fontWeight,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .titleSmall
                                  .fontStyle,
                            ),
                            letterSpacing: 0.0,
                            fontWeight: FlutterFlowTheme.of(context)
                                .titleSmall
                                .fontWeight,
                            fontStyle: FlutterFlowTheme.of(context)
                                .titleSmall
                                .fontStyle,
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

                            await RoommatePrefRecord.createDoc(
                                    currentUserReference!)
                                .set(createRoommatePrefRecordData(
                              allergies: 'Yes',
                            ));
                          },
                          child: Container(
                            width: 50.0,
                            height: 25.0,
                            decoration: BoxDecoration(
                              color: _model.isYesAllergy == true
                                  ? FlutterFlowTheme.of(context).secondary
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
                                      font: GoogleFonts.cardo(
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontStyle,
                                      ),
                                      letterSpacing: 0.0,
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
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

                            await RoommatePrefRecord.createDoc(
                                    currentUserReference!)
                                .set(createRoommatePrefRecordData(
                              allergies: 'No',
                            ));
                          },
                          child: Container(
                            key: ValueKey('Container_53c8'),
                            width: 50.0,
                            height: 25.0,
                            decoration: BoxDecoration(
                              color: _model.isNoAllergy == true
                                  ? FlutterFlowTheme.of(context).secondary
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
                                      font: GoogleFonts.cardo(
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontStyle,
                                      ),
                                      letterSpacing: 0.0,
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
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
                            font: GoogleFonts.cardo(
                              fontWeight: FlutterFlowTheme.of(context)
                                  .titleMedium
                                  .fontWeight,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .titleMedium
                                  .fontStyle,
                            ),
                            letterSpacing: 0.0,
                            fontWeight: FlutterFlowTheme.of(context)
                                .titleMedium
                                .fontWeight,
                            fontStyle: FlutterFlowTheme.of(context)
                                .titleMedium
                                .fontStyle,
                          ),
                    ),
                    Text(
                      'Do you need a quiet space for studying?',
                      style: FlutterFlowTheme.of(context).titleSmall.override(
                            font: GoogleFonts.cardo(
                              fontWeight: FlutterFlowTheme.of(context)
                                  .titleSmall
                                  .fontWeight,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .titleSmall
                                  .fontStyle,
                            ),
                            letterSpacing: 0.0,
                            fontWeight: FlutterFlowTheme.of(context)
                                .titleSmall
                                .fontWeight,
                            fontStyle: FlutterFlowTheme.of(context)
                                .titleSmall
                                .fontStyle,
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

                            await RoommatePrefRecord.createDoc(
                                    currentUserReference!)
                                .set(createRoommatePrefRecordData(
                              quietSpace: 'Yes',
                            ));
                          },
                          child: Container(
                            key: ValueKey('Container_vju0'),
                            width: 50.0,
                            height: 25.0,
                            decoration: BoxDecoration(
                              color: _model.isYesStudy == true
                                  ? FlutterFlowTheme.of(context).secondary
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
                                      font: GoogleFonts.cardo(
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontStyle,
                                      ),
                                      letterSpacing: 0.0,
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
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

                            await RoommatePrefRecord.createDoc(
                                    currentUserReference!)
                                .set(createRoommatePrefRecordData(
                              quietSpace: 'No',
                            ));
                          },
                          child: Container(
                            width: 50.0,
                            height: 25.0,
                            decoration: BoxDecoration(
                              color: _model.isNoStudy == true
                                  ? FlutterFlowTheme.of(context).secondary
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
                                      font: GoogleFonts.cardo(
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontStyle,
                                      ),
                                      letterSpacing: 0.0,
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    FFButtonWidget(
                      onPressed: () async {
                        logFirebaseEvent(
                            'ROOMIE_PREFERENCES_CLEAR_ALL_BTN_ON_TAP');
                        logFirebaseEvent('Button_update_page_state');
                        _model.isSelectedEarly = false;
                        safeSetState(() {});
                        logFirebaseEvent('Button_update_page_state');
                        _model.isSelectedMid = null;
                        safeSetState(() {});
                        logFirebaseEvent('Button_update_page_state');
                        _model.isSelectedLate = null;
                        safeSetState(() {});
                        logFirebaseEvent('Button_update_page_state');
                        _model.isBedEarly = null;
                        safeSetState(() {});
                        logFirebaseEvent('Button_update_page_state');
                        _model.isBedLate = null;
                        safeSetState(() {});
                        logFirebaseEvent('Button_update_page_state');
                        _model.isQuiet = null;
                        safeSetState(() {});
                        logFirebaseEvent('Button_update_page_state');
                        _model.isSocial = null;
                        safeSetState(() {});
                        logFirebaseEvent('Button_update_page_state');
                        _model.isShare = null;
                        safeSetState(() {});
                        logFirebaseEvent('Button_update_page_state');
                        _model.isSeparate = null;
                        safeSetState(() {});
                        logFirebaseEvent('Button_update_page_state');
                        _model.isYesPet = null;
                        safeSetState(() {});
                        logFirebaseEvent('Button_update_page_state');
                        _model.isNoPet = null;
                        safeSetState(() {});
                        logFirebaseEvent('Button_update_page_state');
                        _model.isYesAllergy = null;
                        safeSetState(() {});
                        logFirebaseEvent('Button_update_page_state');
                        _model.isNoAllergy = null;
                        safeSetState(() {});
                        logFirebaseEvent('Button_update_page_state');
                        _model.isYesStudy = null;
                        safeSetState(() {});
                        logFirebaseEvent('Button_update_page_state');
                        _model.isNoStudy = null;
                        safeSetState(() {});
                      },
                      text: 'Clear All',
                      options: FFButtonOptions(
                        width: 120.0,
                        height: 40.0,
                        padding: EdgeInsets.all(8.0),
                        iconPadding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        color: FlutterFlowTheme.of(context).error,
                        textStyle:
                            FlutterFlowTheme.of(context).titleSmall.override(
                                  font: GoogleFonts.cardo(
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .fontStyle,
                                  ),
                                  color: Colors.white,
                                  letterSpacing: 0.0,
                                  fontWeight: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .fontWeight,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .fontStyle,
                                ),
                        elevation: 0.0,
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                    FFButtonWidget(
                      key: ValueKey('Button_e0vq'),
                      onPressed: () async {
                        logFirebaseEvent(
                            'ROOMIE_PREFERENCES_COMPLETE_BTN_ON_TAP');
                        logFirebaseEvent('Button_navigate_to');

                        context
                            .pushNamed(GeneralListingsStudentsWidget.routeName);
                      },
                      text: 'Complete',
                      options: FFButtonOptions(
                        width: 120.0,
                        height: 40.0,
                        padding: EdgeInsets.all(8.0),
                        iconPadding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        color: FlutterFlowTheme.of(context).primary,
                        textStyle:
                            FlutterFlowTheme.of(context).titleSmall.override(
                                  font: GoogleFonts.cardo(
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .fontStyle,
                                  ),
                                  color: Colors.white,
                                  letterSpacing: 0.0,
                                  fontWeight: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .fontWeight,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .fontStyle,
                                ),
                        elevation: 0.0,
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                  ],
                ),
              ].divide(SizedBox(height: 20.0)),
            ),
          ),
        ),
      ),
    );
  }
}
