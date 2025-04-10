import '/backend/backend.dart';
import '/components/nav_bar_with_middle_button_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
import 'general_listings_landlords_widget.dart'
    show GeneralListingsLandlordsWidget;
import 'package:flutter/material.dart';

class GeneralListingsLandlordsModel
    extends FlutterFlowModel<GeneralListingsLandlordsWidget> {
  ///  Local state fields for this page.

  int? currentSearchCount;

  int? currentContactCount;

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
  // Model for NavBarWithMiddleButton component.
  late NavBarWithMiddleButtonModel navBarWithMiddleButtonModel;

  @override
  void initState(BuildContext context) {
    navBarWithMiddleButtonModel =
        createModel(context, () => NavBarWithMiddleButtonModel());
  }

  @override
  void dispose() {
    textFieldFocusNode?.dispose();

    navBarWithMiddleButtonModel.dispose();
  }
}
