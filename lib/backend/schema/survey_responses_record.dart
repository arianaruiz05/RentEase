import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SurveyResponsesRecord extends FirestoreRecord {
  SurveyResponsesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "rating" field.
  int? _rating;
  int get rating => _rating ?? 0;
  bool hasRating() => _rating != null;

  // "timeSubmitted" field.
  DateTime? _timeSubmitted;
  DateTime? get timeSubmitted => _timeSubmitted;
  bool hasTimeSubmitted() => _timeSubmitted != null;

  // "userID" field.
  String? _userID;
  String get userID => _userID ?? '';
  bool hasUserID() => _userID != null;

  void _initializeFields() {
    _rating = castToType<int>(snapshotData['rating']);
    _timeSubmitted = snapshotData['timeSubmitted'] as DateTime?;
    _userID = snapshotData['userID'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('surveyResponses');

  static Stream<SurveyResponsesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => SurveyResponsesRecord.fromSnapshot(s));

  static Future<SurveyResponsesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => SurveyResponsesRecord.fromSnapshot(s));

  static SurveyResponsesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      SurveyResponsesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static SurveyResponsesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      SurveyResponsesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'SurveyResponsesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is SurveyResponsesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createSurveyResponsesRecordData({
  int? rating,
  DateTime? timeSubmitted,
  String? userID,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'rating': rating,
      'timeSubmitted': timeSubmitted,
      'userID': userID,
    }.withoutNulls,
  );

  return firestoreData;
}

class SurveyResponsesRecordDocumentEquality
    implements Equality<SurveyResponsesRecord> {
  const SurveyResponsesRecordDocumentEquality();

  @override
  bool equals(SurveyResponsesRecord? e1, SurveyResponsesRecord? e2) {
    return e1?.rating == e2?.rating &&
        e1?.timeSubmitted == e2?.timeSubmitted &&
        e1?.userID == e2?.userID;
  }

  @override
  int hash(SurveyResponsesRecord? e) =>
      const ListEquality().hash([e?.rating, e?.timeSubmitted, e?.userID]);

  @override
  bool isValidKey(Object? o) => o is SurveyResponsesRecord;
}
