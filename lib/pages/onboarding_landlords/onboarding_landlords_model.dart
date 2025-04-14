import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'onboarding_landlords_widget.dart' show OnboardingLandlordsWidget;
import 'package:flutter/material.dart';

class OnboardingLandlordsModel
    extends FlutterFlowModel<OnboardingLandlordsWidget> {
  ///  State fields for stateful widgets in this page.

  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for LLDisplayName widget.
  FocusNode? lLDisplayNameFocusNode;
  TextEditingController? lLDisplayNameTextController;
  String? Function(BuildContext, String?)? lLDisplayNameTextControllerValidator;
  // State field(s) for LLAge widget.
  FocusNode? lLAgeFocusNode;
  TextEditingController? lLAgeTextController;
  String? Function(BuildContext, String?)? lLAgeTextControllerValidator;
  // State field(s) for LLHometown widget.
  FocusNode? lLHometownFocusNode;
  TextEditingController? lLHometownTextController;
  String? Function(BuildContext, String?)? lLHometownTextControllerValidator;
  // State field(s) for LLBio widget.
  FocusNode? lLBioFocusNode;
  TextEditingController? lLBioTextController;
  String? Function(BuildContext, String?)? lLBioTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    lLDisplayNameFocusNode?.dispose();
    lLDisplayNameTextController?.dispose();

    lLAgeFocusNode?.dispose();
    lLAgeTextController?.dispose();

    lLHometownFocusNode?.dispose();
    lLHometownTextController?.dispose();

    lLBioFocusNode?.dispose();
    lLBioTextController?.dispose();
  }
}
