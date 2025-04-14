import '/backend/backend.dart';
import '/components/nav_bar_without_middle_button_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
import 'general_listings_students_widget.dart'
    show GeneralListingsStudentsWidget;
import 'package:flutter/material.dart';

class GeneralListingsStudentsModel
    extends FlutterFlowModel<GeneralListingsStudentsWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  final textFieldKey = GlobalKey();
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? textFieldSelectedOption;
  String? Function(BuildContext, String?)? textControllerValidator;
  List<PropertiesRecord> simpleSearchResults = [];
  // State field(s) for ChoiceChips widget.
  FormFieldController<List<String>>? choiceChipsValueController;
  String? get choiceChipsValue =>
      choiceChipsValueController?.value?.firstOrNull;
  set choiceChipsValue(String? val) =>
      choiceChipsValueController?.value = val != null ? [val] : [];
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

    navBarWithoutMiddleButtonModel.dispose();
  }
}
