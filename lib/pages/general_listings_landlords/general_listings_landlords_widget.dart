import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/nav_bar_with_middle_button_widget.dart';
import '/components/survey_widget.dart';
import '/flutter_flow/flutter_flow_ad_banner.dart';
import '/flutter_flow/flutter_flow_autocomplete_options_list.dart';
import '/flutter_flow/flutter_flow_choice_chips.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:text_search/text_search.dart';
import 'general_listings_landlords_model.dart';
export 'general_listings_landlords_model.dart';

/// this general listings page is for landlords
class GeneralListingsLandlordsWidget extends StatefulWidget {
  const GeneralListingsLandlordsWidget({super.key});

  static String routeName = 'GeneralListingsLandlords';
  static String routePath = '/generalListingLandlords';

  @override
  State<GeneralListingsLandlordsWidget> createState() =>
      _GeneralListingsLandlordsWidgetState();
}

class _GeneralListingsLandlordsWidgetState
    extends State<GeneralListingsLandlordsWidget> {
  late GeneralListingsLandlordsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => GeneralListingsLandlordsModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'GeneralListingsLandlords'});
    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      logFirebaseEvent('GENERAL_LISTINGS_LANDLORDS_GeneralListin');
      logFirebaseEvent('GeneralListingsLandlords_google_analytic');
      logFirebaseEvent('');
      logFirebaseEvent('GeneralListingsLandlords_update_app_stat');
      FFAppState().searchActive = false;
      safeSetState(() {});
      if (valueOrDefault(currentUserDocument?.userLoginCount, 0) == 5) {
        logFirebaseEvent('GeneralListingsLandlords_bottom_sheet');
        await showModalBottomSheet(
          isScrollControlled: true,
          backgroundColor: Colors.transparent,
          enableDrag: false,
          context: context,
          builder: (context) {
            return GestureDetector(
              onTap: () {
                FocusScope.of(context).unfocus();
                FocusManager.instance.primaryFocus?.unfocus();
              },
              child: Padding(
                padding: MediaQuery.viewInsetsOf(context),
                child: SurveyWidget(),
              ),
            );
          },
        ).then((value) => safeSetState(() {}));
      }
    });

    _model.textController ??= TextEditingController();

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return StreamBuilder<List<PropertiesRecord>>(
      stream: queryPropertiesRecord(
        queryBuilder: (propertiesRecord) =>
            propertiesRecord.orderBy('available'),
      ),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Scaffold(
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            body: Center(
              child: SizedBox(
                width: 50.0,
                height: 50.0,
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(
                    FlutterFlowTheme.of(context).primary,
                  ),
                ),
              ),
            ),
          );
        }
        List<PropertiesRecord> generalListingsLandlordsPropertiesRecordList =
            snapshot.data!;

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
              child: Stack(
                children: [
                  SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Align(
                          alignment: AlignmentDirectional(0.0, -1.01),
                          child: FlutterFlowAdBanner(
                            height: 50.0,
                            showsTestAd: false,
                            androidAdUnitID:
                                'ca-app-pub-3509219267112206/1525637955',
                          ),
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      16.0, 0.0, 16.0, 0.0),
                                  child: Material(
                                    color: Colors.transparent,
                                    elevation: 2.0,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(12.0),
                                    ),
                                    child: Container(
                                      width: double.infinity,
                                      height: 60.0,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        borderRadius:
                                            BorderRadius.circular(12.0),
                                        border: Border.all(
                                          color: FlutterFlowTheme.of(context)
                                              .alternate,
                                          width: 1.0,
                                        ),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            16.0, 0.0, 16.0, 0.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Icon(
                                              Icons.search_rounded,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                              size: 24.0,
                                            ),
                                            Expanded(
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        4.0, 0.0, 4.0, 0.0),
                                                child: Autocomplete<String>(
                                                  initialValue:
                                                      TextEditingValue(),
                                                  optionsBuilder:
                                                      (textEditingValue) {
                                                    if (textEditingValue.text ==
                                                        '') {
                                                      return const Iterable<
                                                          String>.empty();
                                                    }
                                                    return ['Option 1']
                                                        .where((option) {
                                                      final lowercaseOption =
                                                          option.toLowerCase();
                                                      return lowercaseOption
                                                          .contains(
                                                              textEditingValue
                                                                  .text
                                                                  .toLowerCase());
                                                    });
                                                  },
                                                  optionsViewBuilder: (context,
                                                      onSelected, options) {
                                                    return AutocompleteOptionsList(
                                                      textFieldKey:
                                                          _model.textFieldKey,
                                                      textController: _model
                                                          .textController!,
                                                      options: options.toList(),
                                                      onSelected: onSelected,
                                                      textStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                font:
                                                                    GoogleFonts
                                                                        .cardo(
                                                                  fontWeight: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontWeight,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontStyle,
                                                                ),
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontWeight,
                                                                fontStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontStyle,
                                                              ),
                                                      textHighlightStyle:
                                                          TextStyle(),
                                                      elevation: 4.0,
                                                      optionBackgroundColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryBackground,
                                                      optionHighlightColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .secondaryBackground,
                                                      maxHeight: 200.0,
                                                    );
                                                  },
                                                  onSelected:
                                                      (String selection) {
                                                    safeSetState(() => _model
                                                            .textFieldSelectedOption =
                                                        selection);
                                                    FocusScope.of(context)
                                                        .unfocus();
                                                  },
                                                  fieldViewBuilder: (
                                                    context,
                                                    textEditingController,
                                                    focusNode,
                                                    onEditingComplete,
                                                  ) {
                                                    _model.textFieldFocusNode =
                                                        focusNode;

                                                    _model.textController =
                                                        textEditingController;
                                                    return TextFormField(
                                                      key: _model.textFieldKey,
                                                      controller:
                                                          textEditingController,
                                                      focusNode: focusNode,
                                                      onEditingComplete:
                                                          onEditingComplete,
                                                      onChanged: (_) =>
                                                          EasyDebounce.debounce(
                                                        '_model.textController',
                                                        Duration(
                                                            milliseconds: 2000),
                                                        () async {
                                                          logFirebaseEvent(
                                                              'GENERAL_LISTINGS_LANDLORDS_TextField_a4g');
                                                          logFirebaseEvent(
                                                              'TextField_simple_search');
                                                          safeSetState(() {
                                                            _model.simpleSearchResults =
                                                                TextSearch(
                                                              generalListingsLandlordsPropertiesRecordList
                                                                  .map(
                                                                    (record) =>
                                                                        TextSearchItem.fromTerms(
                                                                            record,
                                                                            [
                                                                          record
                                                                              .address,
                                                                          record
                                                                              .propertyDetails
                                                                        ]),
                                                                  )
                                                                  .toList(),
                                                            )
                                                                    .search(_model
                                                                        .textController
                                                                        .text)
                                                                    .map((r) =>
                                                                        r.object)
                                                                    .toList();
                                                            ;
                                                          });
                                                          logFirebaseEvent(
                                                              'TextField_update_app_state');
                                                          FFAppState()
                                                                  .searchActive =
                                                              true;
                                                          FFAppState()
                                                                  .searchCount =
                                                              FFAppState()
                                                                      .searchCount +
                                                                  1;
                                                          safeSetState(() {});
                                                          logFirebaseEvent(
                                                              'TextField_backend_call');

                                                          await SearchToContactRecord
                                                                  .createDoc(
                                                                      currentUserReference!)
                                                              .set(
                                                                  createSearchToContactRecordData(
                                                            searchCount:
                                                                FFAppState()
                                                                    .searchCount,
                                                          ));
                                                          logFirebaseEvent(
                                                              'TextField_google_analytics_event');
                                                          logFirebaseEvent('');
                                                        },
                                                      ),
                                                      autofocus: true,
                                                      obscureText: false,
                                                      decoration:
                                                          InputDecoration(
                                                        hintText:
                                                            'Search by location, ZIP code...',
                                                        hintStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  font:
                                                                      GoogleFonts
                                                                          .cardo(
                                                                    fontWeight: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .fontWeight,
                                                                    fontStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .fontStyle,
                                                                  ),
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontWeight,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontStyle,
                                                                ),
                                                        enabledBorder:
                                                            InputBorder.none,
                                                        focusedBorder:
                                                            InputBorder.none,
                                                        errorBorder:
                                                            InputBorder.none,
                                                        focusedErrorBorder:
                                                            InputBorder.none,
                                                      ),
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                font:
                                                                    GoogleFonts
                                                                        .cardo(
                                                                  fontWeight: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontWeight,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontStyle,
                                                                ),
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontWeight,
                                                                fontStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontStyle,
                                                              ),
                                                      validator: _model
                                                          .textControllerValidator
                                                          .asValidator(context),
                                                    );
                                                  },
                                                ),
                                              ),
                                            ),
                                            FlutterFlowIconButton(
                                              borderRadius: 8.0,
                                              buttonSize: 30.0,
                                              fillColor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              icon: Icon(
                                                Icons.clear,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryText,
                                                size: 16.0,
                                              ),
                                              onPressed: () async {
                                                logFirebaseEvent(
                                                    'GENERAL_LISTINGS_LANDLORDS_clear_ICN_ON_');
                                                logFirebaseEvent(
                                                    'IconButton_clear_text_fields_pin_codes');
                                                safeSetState(() {
                                                  _model.textController
                                                      ?.clear();
                                                });
                                                logFirebaseEvent(
                                                    'IconButton_update_app_state');
                                                FFAppState().searchActive =
                                                    false;
                                                safeSetState(() {});
                                              },
                                            ),
                                            InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                logFirebaseEvent(
                                                    'GENERAL_LISTINGS_LANDLORDS_Container_q2r');
                                                logFirebaseEvent(
                                                    'Container_navigate_to');

                                                context.pushNamed(
                                                    ProfileLandlordWidget
                                                        .routeName);
                                              },
                                              child: Container(
                                                width: 50.0,
                                                height: 50.0,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryBackground,
                                                  shape: BoxShape.circle,
                                                ),
                                                child: AuthUserStreamWidget(
                                                  builder: (context) =>
                                                      ClipRRect(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            50.0),
                                                    child: Image.network(
                                                      currentUserPhoto,
                                                      width: double.infinity,
                                                      height: double.infinity,
                                                      fit: BoxFit.cover,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      16.0, 8.0, 16.0, 8.0),
                                  child: SingleChildScrollView(
                                    scrollDirection: Axis.horizontal,
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        FlutterFlowChoiceChips(
                                          key: ValueKey('ChoiceChips_g95c'),
                                          options: [
                                            ChipData('All'),
                                            ChipData('Messages\n')
                                          ],
                                          onChanged: (val) => safeSetState(() =>
                                              _model.choiceChipsValue =
                                                  val?.firstOrNull),
                                          selectedChipStyle: ChipStyle(
                                            backgroundColor:
                                                FlutterFlowTheme.of(context)
                                                    .primary,
                                            textStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .override(
                                                      font: GoogleFonts.cardo(
                                                        fontWeight:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontWeight,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontStyle,
                                                      ),
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .info,
                                                      letterSpacing: 0.0,
                                                      fontWeight:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .fontWeight,
                                                      fontStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .fontStyle,
                                                    ),
                                            iconColor:
                                                FlutterFlowTheme.of(context)
                                                    .primaryText,
                                            iconSize: 18.0,
                                            elevation: 0.0,
                                            borderRadius:
                                                BorderRadius.circular(20.0),
                                          ),
                                          unselectedChipStyle: ChipStyle(
                                            backgroundColor:
                                                FlutterFlowTheme.of(context)
                                                    .secondaryBackground,
                                            textStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodySmall
                                                    .override(
                                                      font: GoogleFonts.cardo(
                                                        fontWeight:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodySmall
                                                                .fontWeight,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodySmall
                                                                .fontStyle,
                                                      ),
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .secondaryText,
                                                      letterSpacing: 0.0,
                                                      fontWeight:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodySmall
                                                              .fontWeight,
                                                      fontStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodySmall
                                                              .fontStyle,
                                                    ),
                                            iconColor:
                                                FlutterFlowTheme.of(context)
                                                    .primaryText,
                                            iconSize: 18.0,
                                            elevation: 0.0,
                                            borderRadius:
                                                BorderRadius.circular(20.0),
                                          ),
                                          chipSpacing: 8.0,
                                          rowSpacing: 8.0,
                                          multiselect: false,
                                          alignment: WrapAlignment.start,
                                          controller: _model
                                                  .choiceChipsValueController ??=
                                              FormFieldController<List<String>>(
                                            [],
                                          ),
                                          wrapped: true,
                                        ),
                                      ].divide(SizedBox(width: 8.0)),
                                    ),
                                  ),
                                ),
                                if (!FFAppState().searchActive)
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        16.0, 0.0, 16.0, 0.0),
                                    child: Builder(
                                      builder: (context) {
                                        final propertiesNoSearch =
                                            generalListingsLandlordsPropertiesRecordList
                                                .toList();

                                        return ListView.builder(
                                          padding: EdgeInsets.zero,
                                          primary: false,
                                          shrinkWrap: true,
                                          scrollDirection: Axis.vertical,
                                          itemCount: propertiesNoSearch.length,
                                          itemBuilder: (context,
                                              propertiesNoSearchIndex) {
                                            final propertiesNoSearchItem =
                                                propertiesNoSearch[
                                                    propertiesNoSearchIndex];
                                            return Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 8.0, 0.0, 8.0),
                                              child: Container(
                                                width: double.infinity,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryBackground,
                                                ),
                                                child: Material(
                                                  color: Colors.transparent,
                                                  elevation: 2.0,
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            12.0),
                                                  ),
                                                  child: Container(
                                                    width: double.infinity,
                                                    decoration: BoxDecoration(
                                                      color: FlutterFlowTheme
                                                              .of(context)
                                                          .secondaryBackground,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12.0),
                                                    ),
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsets.all(16.0),
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        16.0,
                                                                        0.0,
                                                                        16.0,
                                                                        0.0),
                                                            child: ClipRRect(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .only(
                                                                bottomLeft: Radius
                                                                    .circular(
                                                                        0.0),
                                                                bottomRight: Radius
                                                                    .circular(
                                                                        0.0),
                                                                topLeft: Radius
                                                                    .circular(
                                                                        12.0),
                                                                topRight: Radius
                                                                    .circular(
                                                                        12.0),
                                                              ),
                                                              child:
                                                                  Image.network(
                                                                propertiesNoSearchItem
                                                                    .photos,
                                                                width: double
                                                                    .infinity,
                                                                height: 200.0,
                                                                fit: BoxFit
                                                                    .cover,
                                                              ),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        16.0,
                                                                        16.0,
                                                                        16.0,
                                                                        16.0),
                                                            child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .min,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .spaceBetween,
                                                                  children: [
                                                                    Text(
                                                                      propertiesNoSearchItem
                                                                          .monthlyPrice
                                                                          .toString(),
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .headlineSmall
                                                                          .override(
                                                                            font:
                                                                                GoogleFonts.cardo(
                                                                              fontWeight: FlutterFlowTheme.of(context).headlineSmall.fontWeight,
                                                                              fontStyle: FlutterFlowTheme.of(context).headlineSmall.fontStyle,
                                                                            ),
                                                                            color:
                                                                                FlutterFlowTheme.of(context).primary,
                                                                            letterSpacing:
                                                                                0.0,
                                                                            fontWeight:
                                                                                FlutterFlowTheme.of(context).headlineSmall.fontWeight,
                                                                            fontStyle:
                                                                                FlutterFlowTheme.of(context).headlineSmall.fontStyle,
                                                                          ),
                                                                    ),
                                                                    Text(
                                                                      propertiesNoSearchItem.available ==
                                                                              true
                                                                          ? 'Available'
                                                                          : 'Unavailable',
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .headlineSmall
                                                                          .override(
                                                                            font:
                                                                                GoogleFonts.cardo(
                                                                              fontWeight: FlutterFlowTheme.of(context).headlineSmall.fontWeight,
                                                                              fontStyle: FlutterFlowTheme.of(context).headlineSmall.fontStyle,
                                                                            ),
                                                                            color:
                                                                                FlutterFlowTheme.of(context).primary,
                                                                            letterSpacing:
                                                                                0.0,
                                                                            fontWeight:
                                                                                FlutterFlowTheme.of(context).headlineSmall.fontWeight,
                                                                            fontStyle:
                                                                                FlutterFlowTheme.of(context).headlineSmall.fontStyle,
                                                                          ),
                                                                    ),
                                                                  ],
                                                                ),
                                                                Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          8.0,
                                                                          0.0),
                                                                      child:
                                                                          Icon(
                                                                        Icons
                                                                            .location_on_outlined,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .secondaryText,
                                                                        size:
                                                                            20.0,
                                                                      ),
                                                                    ),
                                                                    Text(
                                                                      propertiesNoSearchItem
                                                                          .address,
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            font:
                                                                                GoogleFonts.cardo(
                                                                              fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                              fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                            ),
                                                                            fontSize:
                                                                                14.0,
                                                                            letterSpacing:
                                                                                0.0,
                                                                            fontWeight:
                                                                                FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                            fontStyle:
                                                                                FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                          ),
                                                                    ),
                                                                  ],
                                                                ),
                                                                Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    Icon(
                                                                      Icons
                                                                          .bed_outlined,
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryText,
                                                                      size:
                                                                          20.0,
                                                                    ),
                                                                    Text(
                                                                      propertiesNoSearchItem
                                                                          .numBeds,
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            font:
                                                                                GoogleFonts.cardo(
                                                                              fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                              fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                            ),
                                                                            fontSize:
                                                                                14.0,
                                                                            letterSpacing:
                                                                                0.0,
                                                                            fontWeight:
                                                                                FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                            fontStyle:
                                                                                FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                          ),
                                                                    ),
                                                                  ].divide(SizedBox(
                                                                      width:
                                                                          10.0)),
                                                                ),
                                                                Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          10.0,
                                                                          0.0),
                                                                      child:
                                                                          Icon(
                                                                        Icons
                                                                            .bathroom_outlined,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .secondaryText,
                                                                        size:
                                                                            20.0,
                                                                      ),
                                                                    ),
                                                                    Text(
                                                                      propertiesNoSearchItem
                                                                          .numBath,
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            font:
                                                                                GoogleFonts.cardo(
                                                                              fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                              fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                            ),
                                                                            fontSize:
                                                                                14.0,
                                                                            letterSpacing:
                                                                                0.0,
                                                                            fontWeight:
                                                                                FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                            fontStyle:
                                                                                FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                          ),
                                                                    ),
                                                                  ],
                                                                ),
                                                                Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          8.0,
                                                                          0.0),
                                                                      child:
                                                                          Icon(
                                                                        Icons
                                                                            .square_foot_outlined,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .secondaryText,
                                                                        size:
                                                                            20.0,
                                                                      ),
                                                                    ),
                                                                    Text(
                                                                      propertiesNoSearchItem
                                                                          .squareFootage
                                                                          .toString(),
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .headlineSmall
                                                                          .override(
                                                                            font:
                                                                                GoogleFonts.cardo(
                                                                              fontWeight: FlutterFlowTheme.of(context).headlineSmall.fontWeight,
                                                                              fontStyle: FlutterFlowTheme.of(context).headlineSmall.fontStyle,
                                                                            ),
                                                                            color:
                                                                                FlutterFlowTheme.of(context).primary,
                                                                            letterSpacing:
                                                                                0.0,
                                                                            fontWeight:
                                                                                FlutterFlowTheme.of(context).headlineSmall.fontWeight,
                                                                            fontStyle:
                                                                                FlutterFlowTheme.of(context).headlineSmall.fontStyle,
                                                                          ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ].divide(SizedBox(
                                                                  height: 8.0)),
                                                            ),
                                                          ),
                                                          Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            4.0,
                                                                            2.0,
                                                                            4.0,
                                                                            2.0),
                                                                child:
                                                                    Container(
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: Color(
                                                                        0x00183B6B),
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            4.0),
                                                                  ),
                                                                  child: Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: [
                                                                      Icon(
                                                                        Icons
                                                                            .contact_mail,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .primary,
                                                                        size:
                                                                            24.0,
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                              ),
                                                              Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            4.0,
                                                                            2.0,
                                                                            4.0,
                                                                            2.0),
                                                                child:
                                                                    Container(
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .accent4,
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            4.0),
                                                                  ),
                                                                ),
                                                              ),
                                                              Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            5.0,
                                                                            0.0),
                                                                child: Text(
                                                                  propertiesNoSearchItem
                                                                      .landlordName,
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        font: GoogleFonts
                                                                            .cardo(
                                                                          fontWeight: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .fontWeight,
                                                                          fontStyle: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .fontStyle,
                                                                        ),
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .fontWeight,
                                                                        fontStyle: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .fontStyle,
                                                                      ),
                                                                ),
                                                              ),
                                                              Text(
                                                                propertiesNoSearchItem
                                                                    .landlordPhone,
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      font: GoogleFonts
                                                                          .cardo(
                                                                        fontWeight: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .fontWeight,
                                                                        fontStyle: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .fontStyle,
                                                                      ),
                                                                      letterSpacing:
                                                                          0.0,
                                                                      fontWeight: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .fontWeight,
                                                                      fontStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .fontStyle,
                                                                    ),
                                                              ),
                                                            ].divide(SizedBox(
                                                                width: 8.0)),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            );
                                          },
                                        );
                                      },
                                    ),
                                  ),
                                if (FFAppState().searchActive)
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        16.0, 0.0, 16.0, 0.0),
                                    child: Builder(
                                      builder: (context) {
                                        final propertiesNoSearch =
                                            _model.simpleSearchResults.toList();

                                        return ListView.builder(
                                          padding: EdgeInsets.zero,
                                          primary: false,
                                          shrinkWrap: true,
                                          scrollDirection: Axis.vertical,
                                          itemCount: propertiesNoSearch.length,
                                          itemBuilder: (context,
                                              propertiesNoSearchIndex) {
                                            final propertiesNoSearchItem =
                                                propertiesNoSearch[
                                                    propertiesNoSearchIndex];
                                            return Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 8.0, 0.0, 8.0),
                                              child: Container(
                                                width: double.infinity,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryBackground,
                                                ),
                                                child: Material(
                                                  color: Colors.transparent,
                                                  elevation: 2.0,
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            12.0),
                                                  ),
                                                  child: Container(
                                                    width: double.infinity,
                                                    decoration: BoxDecoration(
                                                      color: FlutterFlowTheme
                                                              .of(context)
                                                          .secondaryBackground,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12.0),
                                                    ),
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsets.all(16.0),
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        16.0,
                                                                        0.0,
                                                                        16.0,
                                                                        0.0),
                                                            child: ClipRRect(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .only(
                                                                bottomLeft: Radius
                                                                    .circular(
                                                                        0.0),
                                                                bottomRight: Radius
                                                                    .circular(
                                                                        0.0),
                                                                topLeft: Radius
                                                                    .circular(
                                                                        12.0),
                                                                topRight: Radius
                                                                    .circular(
                                                                        12.0),
                                                              ),
                                                              child:
                                                                  Image.network(
                                                                propertiesNoSearchItem
                                                                    .photos,
                                                                width: double
                                                                    .infinity,
                                                                height: 200.0,
                                                                fit: BoxFit
                                                                    .cover,
                                                              ),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        16.0,
                                                                        16.0,
                                                                        16.0,
                                                                        16.0),
                                                            child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .min,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          16.0,
                                                                          16.0,
                                                                          16.0,
                                                                          16.0),
                                                                  child: Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .min,
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .start,
                                                                    children: [
                                                                      Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.spaceBetween,
                                                                        children: [
                                                                          Text(
                                                                            propertiesNoSearchItem.monthlyPrice.toString(),
                                                                            style: FlutterFlowTheme.of(context).headlineSmall.override(
                                                                                  font: GoogleFonts.cardo(
                                                                                    fontWeight: FlutterFlowTheme.of(context).headlineSmall.fontWeight,
                                                                                    fontStyle: FlutterFlowTheme.of(context).headlineSmall.fontStyle,
                                                                                  ),
                                                                                  color: FlutterFlowTheme.of(context).primary,
                                                                                  letterSpacing: 0.0,
                                                                                  fontWeight: FlutterFlowTheme.of(context).headlineSmall.fontWeight,
                                                                                  fontStyle: FlutterFlowTheme.of(context).headlineSmall.fontStyle,
                                                                                ),
                                                                          ),
                                                                          Text(
                                                                            propertiesNoSearchItem.available == true
                                                                                ? 'Available'
                                                                                : 'Unavailable',
                                                                            style: FlutterFlowTheme.of(context).headlineSmall.override(
                                                                                  font: GoogleFonts.cardo(
                                                                                    fontWeight: FlutterFlowTheme.of(context).headlineSmall.fontWeight,
                                                                                    fontStyle: FlutterFlowTheme.of(context).headlineSmall.fontStyle,
                                                                                  ),
                                                                                  color: FlutterFlowTheme.of(context).primary,
                                                                                  letterSpacing: 0.0,
                                                                                  fontWeight: FlutterFlowTheme.of(context).headlineSmall.fontWeight,
                                                                                  fontStyle: FlutterFlowTheme.of(context).headlineSmall.fontStyle,
                                                                                ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                      Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        children: [
                                                                          Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                0.0,
                                                                                0.0,
                                                                                8.0,
                                                                                0.0),
                                                                            child:
                                                                                Icon(
                                                                              Icons.location_on_outlined,
                                                                              color: FlutterFlowTheme.of(context).secondaryText,
                                                                              size: 20.0,
                                                                            ),
                                                                          ),
                                                                          Text(
                                                                            propertiesNoSearchItem.address,
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  font: GoogleFonts.cardo(
                                                                                    fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                    fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                  ),
                                                                                  fontSize: 14.0,
                                                                                  letterSpacing: 0.0,
                                                                                  fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                  fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                      Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        children:
                                                                            [
                                                                          Icon(
                                                                            Icons.bed_outlined,
                                                                            color:
                                                                                FlutterFlowTheme.of(context).secondaryText,
                                                                            size:
                                                                                20.0,
                                                                          ),
                                                                          Text(
                                                                            propertiesNoSearchItem.numBeds,
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  font: GoogleFonts.cardo(
                                                                                    fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                    fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                  ),
                                                                                  fontSize: 14.0,
                                                                                  letterSpacing: 0.0,
                                                                                  fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                  fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                ),
                                                                          ),
                                                                        ].divide(SizedBox(width: 10.0)),
                                                                      ),
                                                                      Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        children: [
                                                                          Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                0.0,
                                                                                0.0,
                                                                                10.0,
                                                                                0.0),
                                                                            child:
                                                                                Icon(
                                                                              Icons.bathroom_outlined,
                                                                              color: FlutterFlowTheme.of(context).secondaryText,
                                                                              size: 20.0,
                                                                            ),
                                                                          ),
                                                                          Text(
                                                                            propertiesNoSearchItem.numBath,
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  font: GoogleFonts.cardo(
                                                                                    fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                    fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                  ),
                                                                                  fontSize: 14.0,
                                                                                  letterSpacing: 0.0,
                                                                                  fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                  fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                      Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        children: [
                                                                          Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                0.0,
                                                                                0.0,
                                                                                8.0,
                                                                                0.0),
                                                                            child:
                                                                                Icon(
                                                                              Icons.square_foot_outlined,
                                                                              color: FlutterFlowTheme.of(context).secondaryText,
                                                                              size: 20.0,
                                                                            ),
                                                                          ),
                                                                          Text(
                                                                            propertiesNoSearchItem.squareFootage.toString(),
                                                                            style: FlutterFlowTheme.of(context).headlineSmall.override(
                                                                                  font: GoogleFonts.cardo(
                                                                                    fontWeight: FlutterFlowTheme.of(context).headlineSmall.fontWeight,
                                                                                    fontStyle: FlutterFlowTheme.of(context).headlineSmall.fontStyle,
                                                                                  ),
                                                                                  color: FlutterFlowTheme.of(context).primary,
                                                                                  letterSpacing: 0.0,
                                                                                  fontWeight: FlutterFlowTheme.of(context).headlineSmall.fontWeight,
                                                                                  fontStyle: FlutterFlowTheme.of(context).headlineSmall.fontStyle,
                                                                                ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                      Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        children:
                                                                            [
                                                                          Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                4.0,
                                                                                2.0,
                                                                                4.0,
                                                                                2.0),
                                                                            child:
                                                                                Container(
                                                                              decoration: BoxDecoration(
                                                                                color: Color(0x00183B6B),
                                                                                borderRadius: BorderRadius.circular(4.0),
                                                                              ),
                                                                              child: Row(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                children: [
                                                                                  Icon(
                                                                                    Icons.contact_mail,
                                                                                    color: FlutterFlowTheme.of(context).primary,
                                                                                    size: 24.0,
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                            ),
                                                                          ),
                                                                          Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                4.0,
                                                                                2.0,
                                                                                4.0,
                                                                                2.0),
                                                                            child:
                                                                                Container(
                                                                              decoration: BoxDecoration(
                                                                                color: FlutterFlowTheme.of(context).accent4,
                                                                                borderRadius: BorderRadius.circular(4.0),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                          Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                0.0,
                                                                                0.0,
                                                                                5.0,
                                                                                0.0),
                                                                            child:
                                                                                Text(
                                                                              propertiesNoSearchItem.landlordName,
                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                    font: GoogleFonts.cardo(
                                                                                      fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                      fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                    ),
                                                                                    letterSpacing: 0.0,
                                                                                    fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                    fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                  ),
                                                                            ),
                                                                          ),
                                                                          Text(
                                                                            propertiesNoSearchItem.landlordPhone,
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  font: GoogleFonts.cardo(
                                                                                    fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                    fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                  ),
                                                                                  letterSpacing: 0.0,
                                                                                  fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                  fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                ),
                                                                          ),
                                                                        ].divide(SizedBox(width: 8.0)),
                                                                      ),
                                                                    ].divide(SizedBox(
                                                                        height:
                                                                            8.0)),
                                                                  ),
                                                                ),
                                                              ].divide(SizedBox(
                                                                  height: 8.0)),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            );
                                          },
                                        );
                                      },
                                    ),
                                  ),
                              ].addToStart(SizedBox(height: 20.0)),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(0.0, 1.0),
                    child: wrapWithModel(
                      model: _model.navBarWithMiddleButtonModel,
                      updateCallback: () => safeSetState(() {}),
                      child: NavBarWithMiddleButtonWidget(
                        key: ValueKey('NavBarWithMiddleButton_ys03'),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
