import '/components/amenities_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
import 'property_add_page_widget.dart' show PropertyAddPageWidget;
import 'package:flutter/material.dart';

class PropertyAddPageModel extends FlutterFlowModel<PropertyAddPageWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  bool isDataUploading1 = false;
  FFUploadedFile uploadedLocalFile1 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl1 = '';

  bool isDataUploading2 = false;
  FFUploadedFile uploadedLocalFile2 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl2 = '';

  bool isDataUploading3 = false;
  FFUploadedFile uploadedLocalFile3 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl3 = '';

  bool isDataUploading4 = false;
  FFUploadedFile uploadedLocalFile4 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl4 = '';

  bool isDataUploading5 = false;
  FFUploadedFile uploadedLocalFile5 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl5 = '';

  bool isDataUploading6 = false;
  FFUploadedFile uploadedLocalFile6 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl6 = '';

  bool isDataUploading7 = false;
  FFUploadedFile uploadedLocalFile7 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl7 = '';

  bool isDataUploading8 = false;
  FFUploadedFile uploadedLocalFile8 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl8 = '';

  bool isDataUploading9 = false;
  FFUploadedFile uploadedLocalFile9 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl9 = '';

  bool isDataUploading10 = false;
  FFUploadedFile uploadedLocalFile10 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl10 = '';

  // State field(s) for PropertyTitle widget.
  FocusNode? propertyTitleFocusNode;
  TextEditingController? propertyTitleTextController;
  String? Function(BuildContext, String?)? propertyTitleTextControllerValidator;
  // State field(s) for PropType widget.
  String? propTypeValue;
  FormFieldController<String>? propTypeValueController;
  // State field(s) for NumBeds widget.
  String? numBedsValue;
  FormFieldController<String>? numBedsValueController;
  // State field(s) for NumBath widget.
  String? numBathValue;
  FormFieldController<String>? numBathValueController;
  // State field(s) for SquareFootage widget.
  FocusNode? squareFootageFocusNode;
  TextEditingController? squareFootageTextController;
  String? Function(BuildContext, String?)? squareFootageTextControllerValidator;
  // State field(s) for PropDescription widget.
  FocusNode? propDescriptionFocusNode;
  TextEditingController? propDescriptionTextController;
  String? Function(BuildContext, String?)?
      propDescriptionTextControllerValidator;
  // Model for amenities component.
  late AmenitiesModel amenitiesModel;
  // State field(s) for Rent widget.
  FocusNode? rentFocusNode;
  TextEditingController? rentTextController;
  String? Function(BuildContext, String?)? rentTextControllerValidator;
  // State field(s) for Deposit widget.
  FocusNode? depositFocusNode;
  TextEditingController? depositTextController;
  String? Function(BuildContext, String?)? depositTextControllerValidator;

  @override
  void initState(BuildContext context) {
    amenitiesModel = createModel(context, () => AmenitiesModel());
  }

  @override
  void dispose() {
    propertyTitleFocusNode?.dispose();
    propertyTitleTextController?.dispose();

    squareFootageFocusNode?.dispose();
    squareFootageTextController?.dispose();

    propDescriptionFocusNode?.dispose();
    propDescriptionTextController?.dispose();

    amenitiesModel.dispose();
    rentFocusNode?.dispose();
    rentTextController?.dispose();

    depositFocusNode?.dispose();
    depositTextController?.dispose();
  }
}
