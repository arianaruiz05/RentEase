import '/components/nav_bar_without_middle_button_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'roommate_listings_widget.dart' show RoommateListingsWidget;
import 'package:flutter/material.dart';

class RoommateListingsModel extends FlutterFlowModel<RoommateListingsWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for NavBarWithoutMiddleButton component.
  late NavBarWithoutMiddleButtonModel navBarWithoutMiddleButtonModel;

  @override
  void initState(BuildContext context) {
    navBarWithoutMiddleButtonModel =
        createModel(context, () => NavBarWithoutMiddleButtonModel());
  }

  @override
  void dispose() {
    navBarWithoutMiddleButtonModel.dispose();
  }
}
