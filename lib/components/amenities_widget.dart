import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'amenities_model.dart';
export 'amenities_model.dart';

class AmenitiesWidget extends StatefulWidget {
  const AmenitiesWidget({super.key});

  @override
  State<AmenitiesWidget> createState() => _AmenitiesWidgetState();
}

class _AmenitiesWidgetState extends State<AmenitiesWidget> {
  late AmenitiesModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AmenitiesModel());

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
      width: double.infinity,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
        borderRadius: BorderRadius.circular(12.0),
        border: Border.all(
          color: FlutterFlowTheme.of(context).alternate,
          width: 1.0,
        ),
      ),
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            GridView(
              padding: EdgeInsets.zero,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 12.0,
                mainAxisSpacing: 12.0,
                childAspectRatio: 4.0,
              ),
              primary: false,
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Theme(
                      data: ThemeData(
                        checkboxTheme: CheckboxThemeData(
                          visualDensity: VisualDensity.compact,
                          materialTapTargetSize:
                              MaterialTapTargetSize.shrinkWrap,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(4.0),
                          ),
                        ),
                        unselectedWidgetColor:
                            FlutterFlowTheme.of(context).secondaryText,
                      ),
                      child: Checkbox(
                        value: _model.airCheckboxValue ??= false,
                        onChanged: (newValue) async {
                          safeSetState(
                              () => _model.airCheckboxValue = newValue!);
                          if (newValue!) {
                            logFirebaseEvent(
                                'AMENITIES_COMP_AirCheckbox_ON_TOGGLE_ON');
                            logFirebaseEvent(
                                'AirCheckbox_update_component_state');
                            _model.selectedAmenities = _model.selectedAmenities;
                            safeSetState(() {});
                          } else {
                            logFirebaseEvent(
                                'AMENITIES_COMP_AirCheckbox_ON_TOGGLE_OFF');
                            logFirebaseEvent('AirCheckbox_backend_call');

                            await _model.selectedAmenities!.reference
                                .update(createPropertiesAmenatiesRecordData());
                          }
                        },
                        side: BorderSide(
                          width: 2,
                          color: FlutterFlowTheme.of(context).secondaryText,
                        ),
                        activeColor: FlutterFlowTheme.of(context).primary,
                        checkColor: FlutterFlowTheme.of(context).info,
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
                      child: Text(
                        'Air Conditioning',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Cardo',
                              letterSpacing: 0.0,
                            ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Theme(
                      data: ThemeData(
                        checkboxTheme: CheckboxThemeData(
                          visualDensity: VisualDensity.compact,
                          materialTapTargetSize:
                              MaterialTapTargetSize.shrinkWrap,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(4.0),
                          ),
                        ),
                        unselectedWidgetColor:
                            FlutterFlowTheme.of(context).secondaryText,
                      ),
                      child: Checkbox(
                        value: _model.heatCheckboxValue ??= false,
                        onChanged: (newValue) async {
                          safeSetState(
                              () => _model.heatCheckboxValue = newValue!);
                        },
                        side: BorderSide(
                          width: 2,
                          color: FlutterFlowTheme.of(context).secondaryText,
                        ),
                        activeColor: FlutterFlowTheme.of(context).primary,
                        checkColor: FlutterFlowTheme.of(context).info,
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
                      child: Text(
                        'Heating',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Cardo',
                              letterSpacing: 0.0,
                            ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Theme(
                      data: ThemeData(
                        checkboxTheme: CheckboxThemeData(
                          visualDensity: VisualDensity.compact,
                          materialTapTargetSize:
                              MaterialTapTargetSize.shrinkWrap,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(4.0),
                          ),
                        ),
                        unselectedWidgetColor:
                            FlutterFlowTheme.of(context).secondaryText,
                      ),
                      child: Checkbox(
                        value: _model.washCheckboxValue ??= false,
                        onChanged: (newValue) async {
                          safeSetState(
                              () => _model.washCheckboxValue = newValue!);
                        },
                        side: BorderSide(
                          width: 2,
                          color: FlutterFlowTheme.of(context).secondaryText,
                        ),
                        activeColor: FlutterFlowTheme.of(context).primary,
                        checkColor: FlutterFlowTheme.of(context).info,
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
                      child: Text(
                        'Washer/Dryer',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Cardo',
                              letterSpacing: 0.0,
                            ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Theme(
                      data: ThemeData(
                        checkboxTheme: CheckboxThemeData(
                          visualDensity: VisualDensity.compact,
                          materialTapTargetSize:
                              MaterialTapTargetSize.shrinkWrap,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(4.0),
                          ),
                        ),
                        unselectedWidgetColor:
                            FlutterFlowTheme.of(context).secondaryText,
                      ),
                      child: Checkbox(
                        value: _model.dishCheckboxValue ??= false,
                        onChanged: (newValue) async {
                          safeSetState(
                              () => _model.dishCheckboxValue = newValue!);
                        },
                        side: BorderSide(
                          width: 2,
                          color: FlutterFlowTheme.of(context).secondaryText,
                        ),
                        activeColor: FlutterFlowTheme.of(context).primary,
                        checkColor: FlutterFlowTheme.of(context).info,
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
                      child: Text(
                        'Dishwasher',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Cardo',
                              letterSpacing: 0.0,
                            ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Theme(
                      data: ThemeData(
                        checkboxTheme: CheckboxThemeData(
                          visualDensity: VisualDensity.compact,
                          materialTapTargetSize:
                              MaterialTapTargetSize.shrinkWrap,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(4.0),
                          ),
                        ),
                        unselectedWidgetColor:
                            FlutterFlowTheme.of(context).secondaryText,
                      ),
                      child: Checkbox(
                        value: _model.parkCheckboxValue ??= false,
                        onChanged: (newValue) async {
                          safeSetState(
                              () => _model.parkCheckboxValue = newValue!);
                        },
                        side: BorderSide(
                          width: 2,
                          color: FlutterFlowTheme.of(context).secondaryText,
                        ),
                        activeColor: FlutterFlowTheme.of(context).primary,
                        checkColor: FlutterFlowTheme.of(context).info,
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
                      child: Text(
                        'Parking',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Cardo',
                              letterSpacing: 0.0,
                            ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Theme(
                      data: ThemeData(
                        checkboxTheme: CheckboxThemeData(
                          visualDensity: VisualDensity.compact,
                          materialTapTargetSize:
                              MaterialTapTargetSize.shrinkWrap,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(4.0),
                          ),
                        ),
                        unselectedWidgetColor:
                            FlutterFlowTheme.of(context).secondaryText,
                      ),
                      child: Checkbox(
                        value: _model.gymCheckboxValue ??= false,
                        onChanged: (newValue) async {
                          safeSetState(
                              () => _model.gymCheckboxValue = newValue!);
                        },
                        side: BorderSide(
                          width: 2,
                          color: FlutterFlowTheme.of(context).secondaryText,
                        ),
                        activeColor: FlutterFlowTheme.of(context).primary,
                        checkColor: FlutterFlowTheme.of(context).info,
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
                      child: Text(
                        'Gym',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Cardo',
                              letterSpacing: 0.0,
                            ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Theme(
                      data: ThemeData(
                        checkboxTheme: CheckboxThemeData(
                          visualDensity: VisualDensity.compact,
                          materialTapTargetSize:
                              MaterialTapTargetSize.shrinkWrap,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(4.0),
                          ),
                        ),
                        unselectedWidgetColor:
                            FlutterFlowTheme.of(context).secondaryText,
                      ),
                      child: Checkbox(
                        value: _model.poolCheckboxValue ??= false,
                        onChanged: (newValue) async {
                          safeSetState(
                              () => _model.poolCheckboxValue = newValue!);
                        },
                        side: BorderSide(
                          width: 2,
                          color: FlutterFlowTheme.of(context).secondaryText,
                        ),
                        activeColor: FlutterFlowTheme.of(context).primary,
                        checkColor: FlutterFlowTheme.of(context).info,
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
                      child: Text(
                        'Pool',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Cardo',
                              letterSpacing: 0.0,
                            ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Theme(
                      data: ThemeData(
                        checkboxTheme: CheckboxThemeData(
                          visualDensity: VisualDensity.compact,
                          materialTapTargetSize:
                              MaterialTapTargetSize.shrinkWrap,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(4.0),
                          ),
                        ),
                        unselectedWidgetColor:
                            FlutterFlowTheme.of(context).secondaryText,
                      ),
                      child: Checkbox(
                        value: _model.petsCheckboxValue ??= false,
                        onChanged: (newValue) async {
                          safeSetState(
                              () => _model.petsCheckboxValue = newValue!);
                        },
                        side: BorderSide(
                          width: 2,
                          color: FlutterFlowTheme.of(context).secondaryText,
                        ),
                        activeColor: FlutterFlowTheme.of(context).primary,
                        checkColor: FlutterFlowTheme.of(context).info,
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
                      child: Text(
                        'Pets Allowed',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Cardo',
                              letterSpacing: 0.0,
                            ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Theme(
                      data: ThemeData(
                        checkboxTheme: CheckboxThemeData(
                          visualDensity: VisualDensity.compact,
                          materialTapTargetSize:
                              MaterialTapTargetSize.shrinkWrap,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(4.0),
                          ),
                        ),
                        unselectedWidgetColor:
                            FlutterFlowTheme.of(context).secondaryText,
                      ),
                      child: Checkbox(
                        value: _model.furnishedCheckboxValue ??= false,
                        onChanged: (newValue) async {
                          safeSetState(
                              () => _model.furnishedCheckboxValue = newValue!);
                        },
                        side: BorderSide(
                          width: 2,
                          color: FlutterFlowTheme.of(context).secondaryText,
                        ),
                        activeColor: FlutterFlowTheme.of(context).primary,
                        checkColor: FlutterFlowTheme.of(context).info,
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
                      child: Text(
                        'Furnished',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Cardo',
                              letterSpacing: 0.0,
                            ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Theme(
                      data: ThemeData(
                        checkboxTheme: CheckboxThemeData(
                          visualDensity: VisualDensity.compact,
                          materialTapTargetSize:
                              MaterialTapTargetSize.shrinkWrap,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(4.0),
                          ),
                        ),
                        unselectedWidgetColor:
                            FlutterFlowTheme.of(context).secondaryText,
                      ),
                      child: Checkbox(
                        value: _model.balconyCheckboxValue ??= false,
                        onChanged: (newValue) async {
                          safeSetState(
                              () => _model.balconyCheckboxValue = newValue!);
                        },
                        side: BorderSide(
                          width: 2,
                          color: FlutterFlowTheme.of(context).secondaryText,
                        ),
                        activeColor: FlutterFlowTheme.of(context).primary,
                        checkColor: FlutterFlowTheme.of(context).info,
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
                      child: Text(
                        'Balcony',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Cardo',
                              letterSpacing: 0.0,
                            ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
