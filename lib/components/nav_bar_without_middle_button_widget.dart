import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'nav_bar_without_middle_button_model.dart';
export 'nav_bar_without_middle_button_model.dart';

/// The students will see this
class NavBarWithoutMiddleButtonWidget extends StatefulWidget {
  const NavBarWithoutMiddleButtonWidget({super.key});

  @override
  State<NavBarWithoutMiddleButtonWidget> createState() =>
      _NavBarWithoutMiddleButtonWidgetState();
}

class _NavBarWithoutMiddleButtonWidgetState
    extends State<NavBarWithoutMiddleButtonWidget> {
  late NavBarWithoutMiddleButtonModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NavBarWithoutMiddleButtonModel());

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
      height: 90.0,
      decoration: BoxDecoration(
        color: Color(0x00EEEEEE),
      ),
      child: Stack(
        children: [
          Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Material(
                color: Colors.transparent,
                elevation: 0.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(0.0),
                    bottomRight: Radius.circular(0.0),
                    topLeft: Radius.circular(20.0),
                    topRight: Radius.circular(20.0),
                  ),
                ),
                child: Container(
                  width: double.infinity,
                  height: 80.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).primaryBackground,
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 10.0,
                        color: Color(0x1A57636C),
                        offset: Offset(
                          0.0,
                          -10.0,
                        ),
                        spreadRadius: 0.1,
                      )
                    ],
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(0.0),
                      bottomRight: Radius.circular(0.0),
                      topLeft: Radius.circular(20.0),
                      topRight: Radius.circular(20.0),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 25.0, 0.0, 0.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                FlutterFlowIconButton(
                  borderColor: Colors.transparent,
                  borderRadius: 30.0,
                  borderWidth: 1.0,
                  buttonSize: 70.0,
                  icon: Icon(
                    Icons.home,
                    color: Color(0xFF9299A1),
                    size: 24.0,
                  ),
                  onPressed: () async {
                    logFirebaseEvent(
                        'NAV_BAR_WITHOUT_MIDDLE_BUTTON_homeButton');
                    logFirebaseEvent('homeButton_navigate_to');

                    context.pushNamed(GeneralListingsStudentsWidget.routeName);
                  },
                ),
                FlutterFlowIconButton(
                  borderColor: Colors.transparent,
                  borderRadius: 30.0,
                  borderWidth: 1.0,
                  buttonSize: 70.0,
                  icon: Icon(
                    Icons.settings,
                    color: Color(0xFF9299A1),
                    size: 24.0,
                  ),
                  onPressed: () async {
                    logFirebaseEvent(
                        'NAV_BAR_WITHOUT_MIDDLE_BUTTON_settingsBu');
                    logFirebaseEvent('settingsButton_navigate_to');

                    context.pushNamed(ProfilePageWidget.routeName);
                  },
                ),
                FlutterFlowIconButton(
                  borderColor: Colors.transparent,
                  borderRadius: 30.0,
                  borderWidth: 1.0,
                  buttonSize: 70.0,
                  icon: Icon(
                    Icons.chat_bubble_sharp,
                    color: Color(0xFF9299A1),
                    size: 24.0,
                  ),
                  onPressed: () async {
                    logFirebaseEvent(
                        'NAV_BAR_WITHOUT_MIDDLE_BUTTON_messageBut');
                    logFirebaseEvent('messageButton_navigate_to');

                    context.pushNamed(MessagingWidget.routeName);
                  },
                ),
                FlutterFlowIconButton(
                  borderColor: Colors.transparent,
                  borderRadius: 30.0,
                  borderWidth: 1.0,
                  buttonSize: 70.0,
                  icon: Icon(
                    Icons.person_search,
                    color: Color(0xFF9299A1),
                    size: 24.0,
                  ),
                  onPressed: () async {
                    logFirebaseEvent(
                        'NAV_BAR_WITHOUT_MIDDLE_BUTTON_messageBut');
                    logFirebaseEvent('messageButton_navigate_to');

                    context.pushNamed(RoommateListingsWidget.routeName);
                  },
                ),
              ].divide(SizedBox(width: 20.0)),
            ),
          ),
        ],
      ),
    );
  }
}
