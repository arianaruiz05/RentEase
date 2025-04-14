import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PropertiesAmenatiesRecord extends FirestoreRecord {
  PropertiesAmenatiesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "airConditioning" field.
  bool? _airConditioning;
  bool get airConditioning => _airConditioning ?? false;
  bool hasAirConditioning() => _airConditioning != null;

  // "Heating" field.
  bool? _heating;
  bool get heating => _heating ?? false;
  bool hasHeating() => _heating != null;

  // "washerDryer" field.
  bool? _washerDryer;
  bool get washerDryer => _washerDryer ?? false;
  bool hasWasherDryer() => _washerDryer != null;

  // "parking" field.
  bool? _parking;
  bool get parking => _parking ?? false;
  bool hasParking() => _parking != null;

  // "pool" field.
  bool? _pool;
  bool get pool => _pool ?? false;
  bool hasPool() => _pool != null;

  // "furnished" field.
  bool? _furnished;
  bool get furnished => _furnished ?? false;
  bool hasFurnished() => _furnished != null;

  // "dishWasher" field.
  bool? _dishWasher;
  bool get dishWasher => _dishWasher ?? false;
  bool hasDishWasher() => _dishWasher != null;

  // "gym" field.
  bool? _gym;
  bool get gym => _gym ?? false;
  bool hasGym() => _gym != null;

  // "petsAllowed" field.
  bool? _petsAllowed;
  bool get petsAllowed => _petsAllowed ?? false;
  bool hasPetsAllowed() => _petsAllowed != null;

  // "balcony" field.
  bool? _balcony;
  bool get balcony => _balcony ?? false;
  bool hasBalcony() => _balcony != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _airConditioning = snapshotData['airConditioning'] as bool?;
    _heating = snapshotData['Heating'] as bool?;
    _washerDryer = snapshotData['washerDryer'] as bool?;
    _parking = snapshotData['parking'] as bool?;
    _pool = snapshotData['pool'] as bool?;
    _furnished = snapshotData['furnished'] as bool?;
    _dishWasher = snapshotData['dishWasher'] as bool?;
    _gym = snapshotData['gym'] as bool?;
    _petsAllowed = snapshotData['petsAllowed'] as bool?;
    _balcony = snapshotData['balcony'] as bool?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('properties_amenaties')
          : FirebaseFirestore.instance.collectionGroup('properties_amenaties');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('properties_amenaties').doc(id);

  static Stream<PropertiesAmenatiesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PropertiesAmenatiesRecord.fromSnapshot(s));

  static Future<PropertiesAmenatiesRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => PropertiesAmenatiesRecord.fromSnapshot(s));

  static PropertiesAmenatiesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      PropertiesAmenatiesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PropertiesAmenatiesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PropertiesAmenatiesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PropertiesAmenatiesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PropertiesAmenatiesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPropertiesAmenatiesRecordData({
  bool? airConditioning,
  bool? heating,
  bool? washerDryer,
  bool? parking,
  bool? pool,
  bool? furnished,
  bool? dishWasher,
  bool? gym,
  bool? petsAllowed,
  bool? balcony,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'airConditioning': airConditioning,
      'Heating': heating,
      'washerDryer': washerDryer,
      'parking': parking,
      'pool': pool,
      'furnished': furnished,
      'dishWasher': dishWasher,
      'gym': gym,
      'petsAllowed': petsAllowed,
      'balcony': balcony,
    }.withoutNulls,
  );

  return firestoreData;
}

class PropertiesAmenatiesRecordDocumentEquality
    implements Equality<PropertiesAmenatiesRecord> {
  const PropertiesAmenatiesRecordDocumentEquality();

  @override
  bool equals(PropertiesAmenatiesRecord? e1, PropertiesAmenatiesRecord? e2) {
    return e1?.airConditioning == e2?.airConditioning &&
        e1?.heating == e2?.heating &&
        e1?.washerDryer == e2?.washerDryer &&
        e1?.parking == e2?.parking &&
        e1?.pool == e2?.pool &&
        e1?.furnished == e2?.furnished &&
        e1?.dishWasher == e2?.dishWasher &&
        e1?.gym == e2?.gym &&
        e1?.petsAllowed == e2?.petsAllowed &&
        e1?.balcony == e2?.balcony;
  }

  @override
  int hash(PropertiesAmenatiesRecord? e) => const ListEquality().hash([
        e?.airConditioning,
        e?.heating,
        e?.washerDryer,
        e?.parking,
        e?.pool,
        e?.furnished,
        e?.dishWasher,
        e?.gym,
        e?.petsAllowed,
        e?.balcony
      ]);

  @override
  bool isValidKey(Object? o) => o is PropertiesAmenatiesRecord;
}
