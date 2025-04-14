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

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  void _initializeFields() {
    _rating = castToType<int>(snapshotData['rating']);
    _timeSubmitted = snapshotData['timeSubmitted'] as DateTime?;
    _userID = snapshotData['userID'] as String?;
    _email = snapshotData['email'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _uid = snapshotData['uid'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _phoneNumber = snapshotData['phone_number'] as String?;
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
  String? email,
  String? displayName,
  String? photoUrl,
  String? uid,
  DateTime? createdTime,
  String? phoneNumber,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'rating': rating,
      'timeSubmitted': timeSubmitted,
      'userID': userID,
      'email': email,
      'display_name': displayName,
      'photo_url': photoUrl,
      'uid': uid,
      'created_time': createdTime,
      'phone_number': phoneNumber,
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
        e1?.userID == e2?.userID &&
        e1?.email == e2?.email &&
        e1?.displayName == e2?.displayName &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.uid == e2?.uid &&
        e1?.createdTime == e2?.createdTime &&
        e1?.phoneNumber == e2?.phoneNumber;
  }

  @override
  int hash(SurveyResponsesRecord? e) => const ListEquality().hash([
        e?.rating,
        e?.timeSubmitted,
        e?.userID,
        e?.email,
        e?.displayName,
        e?.photoUrl,
        e?.uid,
        e?.createdTime,
        e?.phoneNumber
      ]);

  @override
  bool isValidKey(Object? o) => o is SurveyResponsesRecord;
}
