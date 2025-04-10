import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'onboarding_student_widget.dart' show OnboardingStudentWidget;
import 'package:flutter/material.dart';

class OnboardingStudentModel extends FlutterFlowModel<OnboardingStudentWidget> {
  ///  State fields for stateful widgets in this page.

  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for studentDisplayName widget.
  FocusNode? studentDisplayNameFocusNode;
  TextEditingController? studentDisplayNameTextController;
  String? Function(BuildContext, String?)?
      studentDisplayNameTextControllerValidator;
  // State field(s) for studentAge widget.
  FocusNode? studentAgeFocusNode;
  TextEditingController? studentAgeTextController;
  String? Function(BuildContext, String?)? studentAgeTextControllerValidator;
  // State field(s) for studentHometown widget.
  FocusNode? studentHometownFocusNode;
  TextEditingController? studentHometownTextController;
  String? Function(BuildContext, String?)?
      studentHometownTextControllerValidator;
  // State field(s) for studentMajor widget.
  FocusNode? studentMajorFocusNode;
  TextEditingController? studentMajorTextController;
  String? Function(BuildContext, String?)? studentMajorTextControllerValidator;
  // State field(s) for yearOfCollege widget.
  FocusNode? yearOfCollegeFocusNode;
  TextEditingController? yearOfCollegeTextController;
  String? Function(BuildContext, String?)? yearOfCollegeTextControllerValidator;
  // State field(s) for socialMedia widget.
  FocusNode? socialMediaFocusNode;
  TextEditingController? socialMediaTextController;
  String? Function(BuildContext, String?)? socialMediaTextControllerValidator;
  // State field(s) for studentBio widget.
  FocusNode? studentBioFocusNode;
  TextEditingController? studentBioTextController;
  String? Function(BuildContext, String?)? studentBioTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    studentDisplayNameFocusNode?.dispose();
    studentDisplayNameTextController?.dispose();

    studentAgeFocusNode?.dispose();
    studentAgeTextController?.dispose();

    studentHometownFocusNode?.dispose();
    studentHometownTextController?.dispose();

    studentMajorFocusNode?.dispose();
    studentMajorTextController?.dispose();

    yearOfCollegeFocusNode?.dispose();
    yearOfCollegeTextController?.dispose();

    socialMediaFocusNode?.dispose();
    socialMediaTextController?.dispose();

    studentBioFocusNode?.dispose();
    studentBioTextController?.dispose();
  }
}
