import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RoommatePrefRecord extends FirestoreRecord {
  RoommatePrefRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

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

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _allergies = snapshotData['allergies'] as String?;
    _goToBed = snapshotData['goToBed'] as String?;
    _pets = snapshotData['pets'] as String?;
    _quietOrSocial = snapshotData['quietOrSocial'] as String?;
    _quietSpace = snapshotData['quietSpace'] as String?;
    _shareOrSeparate = snapshotData['shareOrSeparate'] as String?;
    _wakeUp = snapshotData['wakeUp'] as String?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('roommatePref')
          : FirebaseFirestore.instance.collectionGroup('roommatePref');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('roommatePref').doc(id);

  static Stream<RoommatePrefRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => RoommatePrefRecord.fromSnapshot(s));

  static Future<RoommatePrefRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => RoommatePrefRecord.fromSnapshot(s));

  static RoommatePrefRecord fromSnapshot(DocumentSnapshot snapshot) =>
      RoommatePrefRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static RoommatePrefRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      RoommatePrefRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'RoommatePrefRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is RoommatePrefRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createRoommatePrefRecordData({
  String? allergies,
  String? goToBed,
  String? pets,
  String? quietOrSocial,
  String? quietSpace,
  String? shareOrSeparate,
  String? wakeUp,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'allergies': allergies,
      'goToBed': goToBed,
      'pets': pets,
      'quietOrSocial': quietOrSocial,
      'quietSpace': quietSpace,
      'shareOrSeparate': shareOrSeparate,
      'wakeUp': wakeUp,
    }.withoutNulls,
  );

  return firestoreData;
}

class RoommatePrefRecordDocumentEquality
    implements Equality<RoommatePrefRecord> {
  const RoommatePrefRecordDocumentEquality();

  @override
  bool equals(RoommatePrefRecord? e1, RoommatePrefRecord? e2) {
    return e1?.allergies == e2?.allergies &&
        e1?.goToBed == e2?.goToBed &&
        e1?.pets == e2?.pets &&
        e1?.quietOrSocial == e2?.quietOrSocial &&
        e1?.quietSpace == e2?.quietSpace &&
        e1?.shareOrSeparate == e2?.shareOrSeparate &&
        e1?.wakeUp == e2?.wakeUp;
  }

  @override
  int hash(RoommatePrefRecord? e) => const ListEquality().hash([
        e?.allergies,
        e?.goToBed,
        e?.pets,
        e?.quietOrSocial,
        e?.quietSpace,
        e?.shareOrSeparate,
        e?.wakeUp
      ]);

  @override
  bool isValidKey(Object? o) => o is RoommatePrefRecord;
}
