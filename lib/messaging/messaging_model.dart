import '/components/nav_bar_without_middle_button_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'messaging_widget.dart' show MessagingWidget;
import 'package:flutter/material.dart';

class MessagingModel extends FlutterFlowModel<MessagingWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Model for NavBarWithoutMiddleButton component.
  late NavBarWithoutMiddleButtonModel navBarWithoutMiddleButtonModel;

  @override
  void initState(BuildContext context) {
    navBarWithoutMiddleButtonModel =
        createModel(context, () => NavBarWithoutMiddleButtonModel());
  }

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();

    navBarWithoutMiddleButtonModel.dispose();
  }
}
