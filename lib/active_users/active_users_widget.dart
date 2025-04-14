import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'active_users_model.dart';
export 'active_users_model.dart';

class ActiveUsersWidget extends StatefulWidget {
  const ActiveUsersWidget({
    super.key,
    this.search,
  });

  final String? search;

  static String routeName = 'activeUsers';
  static String routePath = '/activeUsers';

  @override
  State<ActiveUsersWidget> createState() => _ActiveUsersWidgetState();
}

class _ActiveUsersWidgetState extends State<ActiveUsersWidget> {
  late ActiveUsersModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ActiveUsersModel());

    logFirebaseEvent('screen_view', parameters: {'screen_name': 'activeUsers'});
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
      ),
    );
  }
}
