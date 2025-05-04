import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UsersRecord extends FirestoreRecord {
  UsersRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

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

  // "isStudent" field.
  bool? _isStudent;
  bool get isStudent => _isStudent ?? false;
  bool hasIsStudent() => _isStudent != null;

  // "age" field.
  int? _age;
  int get age => _age ?? 0;
  bool hasAge() => _age != null;

  // "hometown" field.
  String? _hometown;
  String get hometown => _hometown ?? '';
  bool hasHometown() => _hometown != null;

  // "bio" field.
  String? _bio;
  String get bio => _bio ?? '';
  bool hasBio() => _bio != null;

  // "major" field.
  String? _major;
  String get major => _major ?? '';
  bool hasMajor() => _major != null;

  // "year_at_colllege" field.
  String? _yearAtColllege;
  String get yearAtColllege => _yearAtColllege ?? '';
  bool hasYearAtColllege() => _yearAtColllege != null;

  // "social_media" field.
  String? _socialMedia;
  String get socialMedia => _socialMedia ?? '';
  bool hasSocialMedia() => _socialMedia != null;

  // "first_login_timestamp" field.
  DateTime? _firstLoginTimestamp;
  DateTime? get firstLoginTimestamp => _firstLoginTimestamp;
  bool hasFirstLoginTimestamp() => _firstLoginTimestamp != null;

  // "UserContactCount" field.
  int? _userContactCount;
  int get userContactCount => _userContactCount ?? 0;
  bool hasUserContactCount() => _userContactCount != null;

  // "UserLoginCount" field.
  int? _userLoginCount;
  int get userLoginCount => _userLoginCount ?? 0;
  bool hasUserLoginCount() => _userLoginCount != null;

  // "UserSearchCount" field.
  int? _userSearchCount;
  int get userSearchCount => _userSearchCount ?? 0;
  bool hasUserSearchCount() => _userSearchCount != null;

  // "allergies" field.
  String? _allergies;
  String get allergies => _allergies ?? '';
  bool hasAllergies() => _allergies != null;

  // "goToBed" field.
  String? _goToBed;
  String get goToBed => _goToBed ?? '';
  bool hasGoToBed() => _goToBed != null;

  // "pets" field.
  String? _pets;
  String get pets => _pets ?? '';
  bool hasPets() => _pets != null;

  // "quietOrSocial" field.
  String? _quietOrSocial;
  String get quietOrSocial => _quietOrSocial ?? '';
  bool hasQuietOrSocial() => _quietOrSocial != null;

  // "quietSpace" field.
  String? _quietSpace;
  String get quietSpace => _quietSpace ?? '';
  bool hasQuietSpace() => _quietSpace != null;

  // "shareOrSeparate" field.
  String? _shareOrSeparate;
  String get shareOrSeparate => _shareOrSeparate ?? '';
  bool hasShareOrSeparate() => _shareOrSeparate != null;

  // "wakeUp" field.
  String? _wakeUp;
  String get wakeUp => _wakeUp ?? '';
  bool hasWakeUp() => _wakeUp != null;

  // "IsRoommate" field.
  bool? _isRoommate;
  bool get isRoommate => _isRoommate ?? false;
  bool hasIsRoommate() => _isRoommate != null;

  // "user" field.
  DocumentReference? _user;
  DocumentReference? get user => _user;
  bool hasUser() => _user != null;

  // "landlordPhoneNumberOB" field.
  String? _landlordPhoneNumberOB;
  String get landlordPhoneNumberOB => _landlordPhoneNumberOB ?? '';
  bool hasLandlordPhoneNumberOB() => _landlordPhoneNumberOB != null;

  void _initializeFields() {
    _email = snapshotData['email'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _uid = snapshotData['uid'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _isStudent = snapshotData['isStudent'] as bool?;
    _age = castToType<int>(snapshotData['age']);
    _hometown = snapshotData['hometown'] as String?;
    _bio = snapshotData['bio'] as String?;
    _major = snapshotData['major'] as String?;
    _yearAtColllege = snapshotData['year_at_colllege'] as String?;
    _socialMedia = snapshotData['social_media'] as String?;
    _firstLoginTimestamp = snapshotData['first_login_timestamp'] as DateTime?;
    _userContactCount = castToType<int>(snapshotData['UserContactCount']);
    _userLoginCount = castToType<int>(snapshotData['UserLoginCount']);
    _userSearchCount = castToType<int>(snapshotData['UserSearchCount']);
    _allergies = snapshotData['allergies'] as String?;
    _goToBed = snapshotData['goToBed'] as String?;
    _pets = snapshotData['pets'] as String?;
    _quietOrSocial = snapshotData['quietOrSocial'] as String?;
    _quietSpace = snapshotData['quietSpace'] as String?;
    _shareOrSeparate = snapshotData['shareOrSeparate'] as String?;
    _wakeUp = snapshotData['wakeUp'] as String?;
    _isRoommate = snapshotData['IsRoommate'] as bool?;
    _user = snapshotData['user'] as DocumentReference?;
    _landlordPhoneNumberOB = snapshotData['landlordPhoneNumberOB'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('users');

  static Stream<UsersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UsersRecord.fromSnapshot(s));

  static Future<UsersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UsersRecord.fromSnapshot(s));

  static UsersRecord fromSnapshot(DocumentSnapshot snapshot) => UsersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UsersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UsersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UsersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UsersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUsersRecordData({
  String? email,
  String? displayName,
  String? photoUrl,
  String? uid,
  DateTime? createdTime,
  String? phoneNumber,
  bool? isStudent,
  int? age,
  String? hometown,
  String? bio,
  String? major,
  String? yearAtColllege,
  String? socialMedia,
  DateTime? firstLoginTimestamp,
  int? userContactCount,
  int? userLoginCount,
  int? userSearchCount,
  String? allergies,
  String? goToBed,
  String? pets,
  String? quietOrSocial,
  String? quietSpace,
  String? shareOrSeparate,
  String? wakeUp,
  bool? isRoommate,
  DocumentReference? user,
  String? landlordPhoneNumberOB,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email': email,
      'display_name': displayName,
      'photo_url': photoUrl,
      'uid': uid,
      'created_time': createdTime,
      'phone_number': phoneNumber,
      'isStudent': isStudent,
      'age': age,
      'hometown': hometown,
      'bio': bio,
      'major': major,
      'year_at_colllege': yearAtColllege,
      'social_media': socialMedia,
      'first_login_timestamp': firstLoginTimestamp,
      'UserContactCount': userContactCount,
      'UserLoginCount': userLoginCount,
      'UserSearchCount': userSearchCount,
      'allergies': allergies,
      'goToBed': goToBed,
      'pets': pets,
      'quietOrSocial': quietOrSocial,
      'quietSpace': quietSpace,
      'shareOrSeparate': shareOrSeparate,
      'wakeUp': wakeUp,
      'IsRoommate': isRoommate,
      'user': user,
      'landlordPhoneNumberOB': landlordPhoneNumberOB,
    }.withoutNulls,
  );

  return firestoreData;
}

class UsersRecordDocumentEquality implements Equality<UsersRecord> {
  const UsersRecordDocumentEquality();

  @override
  bool equals(UsersRecord? e1, UsersRecord? e2) {
    return e1?.email == e2?.email &&
        e1?.displayName == e2?.displayName &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.uid == e2?.uid &&
        e1?.createdTime == e2?.createdTime &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.isStudent == e2?.isStudent &&
        e1?.age == e2?.age &&
        e1?.hometown == e2?.hometown &&
        e1?.bio == e2?.bio &&
        e1?.major == e2?.major &&
        e1?.yearAtColllege == e2?.yearAtColllege &&
        e1?.socialMedia == e2?.socialMedia &&
        e1?.firstLoginTimestamp == e2?.firstLoginTimestamp &&
        e1?.userContactCount == e2?.userContactCount &&
        e1?.userLoginCount == e2?.userLoginCount &&
        e1?.userSearchCount == e2?.userSearchCount &&
        e1?.allergies == e2?.allergies &&
        e1?.goToBed == e2?.goToBed &&
        e1?.pets == e2?.pets &&
        e1?.quietOrSocial == e2?.quietOrSocial &&
        e1?.quietSpace == e2?.quietSpace &&
        e1?.shareOrSeparate == e2?.shareOrSeparate &&
        e1?.wakeUp == e2?.wakeUp &&
        e1?.isRoommate == e2?.isRoommate &&
        e1?.user == e2?.user &&
        e1?.landlordPhoneNumberOB == e2?.landlordPhoneNumberOB;
  }

  @override
  int hash(UsersRecord? e) => const ListEquality().hash([
        e?.email,
        e?.displayName,
        e?.photoUrl,
        e?.uid,
        e?.createdTime,
        e?.phoneNumber,
        e?.isStudent,
        e?.age,
        e?.hometown,
        e?.bio,
        e?.major,
        e?.yearAtColllege,
        e?.socialMedia,
        e?.firstLoginTimestamp,
        e?.userContactCount,
        e?.userLoginCount,
        e?.userSearchCount,
        e?.allergies,
        e?.goToBed,
        e?.pets,
        e?.quietOrSocial,
        e?.quietSpace,
        e?.shareOrSeparate,
        e?.wakeUp,
        e?.isRoommate,
        e?.user,
        e?.landlordPhoneNumberOB
      ]);

  @override
  bool isValidKey(Object? o) => o is UsersRecord;
}
