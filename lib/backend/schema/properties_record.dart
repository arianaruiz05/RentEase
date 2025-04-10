import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PropertiesRecord extends FirestoreRecord {
  PropertiesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "address" field.
  String? _address;
  String get address => _address ?? '';
  bool hasAddress() => _address != null;

  // "photos" field.
  String? _photos;
  String get photos => _photos ?? '';
  bool hasPhotos() => _photos != null;

  // "bedrooms" field.
  int? _bedrooms;
  int get bedrooms => _bedrooms ?? 0;
  bool hasBedrooms() => _bedrooms != null;

  // "bathrooms" field.
  double? _bathrooms;
  double get bathrooms => _bathrooms ?? 0.0;
  bool hasBathrooms() => _bathrooms != null;

  // "squareFootage" field.
  int? _squareFootage;
  int get squareFootage => _squareFootage ?? 0;
  bool hasSquareFootage() => _squareFootage != null;

  // "propertyDetails" field.
  String? _propertyDetails;
  String get propertyDetails => _propertyDetails ?? '';
  bool hasPropertyDetails() => _propertyDetails != null;

  // "securityDeposits" field.
  double? _securityDeposits;
  double get securityDeposits => _securityDeposits ?? 0.0;
  bool hasSecurityDeposits() => _securityDeposits != null;

  // "monthlyPrice" field.
  double? _monthlyPrice;
  double get monthlyPrice => _monthlyPrice ?? 0.0;
  bool hasMonthlyPrice() => _monthlyPrice != null;

  // "amenaties" field.
  DocumentReference? _amenaties;
  DocumentReference? get amenaties => _amenaties;
  bool hasAmenaties() => _amenaties != null;

  // "available" field.
  bool? _available;
  bool get available => _available ?? false;
  bool hasAvailable() => _available != null;

  // "propertyid" field.
  String? _propertyid;
  String get propertyid => _propertyid ?? '';
  bool hasPropertyid() => _propertyid != null;

  // "NumBeds" field.
  String? _numBeds;
  String get numBeds => _numBeds ?? '';
  bool hasNumBeds() => _numBeds != null;

  // "NumBath" field.
  String? _numBath;
  String get numBath => _numBath ?? '';
  bool hasNumBath() => _numBath != null;

  void _initializeFields() {
    _address = snapshotData['address'] as String?;
    _photos = snapshotData['photos'] as String?;
    _bedrooms = castToType<int>(snapshotData['bedrooms']);
    _bathrooms = castToType<double>(snapshotData['bathrooms']);
    _squareFootage = castToType<int>(snapshotData['squareFootage']);
    _propertyDetails = snapshotData['propertyDetails'] as String?;
    _securityDeposits = castToType<double>(snapshotData['securityDeposits']);
    _monthlyPrice = castToType<double>(snapshotData['monthlyPrice']);
    _amenaties = snapshotData['amenaties'] as DocumentReference?;
    _available = snapshotData['available'] as bool?;
    _propertyid = snapshotData['propertyid'] as String?;
    _numBeds = snapshotData['NumBeds'] as String?;
    _numBath = snapshotData['NumBath'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('properties');

  static Stream<PropertiesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PropertiesRecord.fromSnapshot(s));

  static Future<PropertiesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PropertiesRecord.fromSnapshot(s));

  static PropertiesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      PropertiesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PropertiesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PropertiesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PropertiesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PropertiesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPropertiesRecordData({
  String? address,
  String? photos,
  int? bedrooms,
  double? bathrooms,
  int? squareFootage,
  String? propertyDetails,
  double? securityDeposits,
  double? monthlyPrice,
  DocumentReference? amenaties,
  bool? available,
  String? propertyid,
  String? numBeds,
  String? numBath,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'address': address,
      'photos': photos,
      'bedrooms': bedrooms,
      'bathrooms': bathrooms,
      'squareFootage': squareFootage,
      'propertyDetails': propertyDetails,
      'securityDeposits': securityDeposits,
      'monthlyPrice': monthlyPrice,
      'amenaties': amenaties,
      'available': available,
      'propertyid': propertyid,
      'NumBeds': numBeds,
      'NumBath': numBath,
    }.withoutNulls,
  );

  return firestoreData;
}

class PropertiesRecordDocumentEquality implements Equality<PropertiesRecord> {
  const PropertiesRecordDocumentEquality();

  @override
  bool equals(PropertiesRecord? e1, PropertiesRecord? e2) {
    return e1?.address == e2?.address &&
        e1?.photos == e2?.photos &&
        e1?.bedrooms == e2?.bedrooms &&
        e1?.bathrooms == e2?.bathrooms &&
        e1?.squareFootage == e2?.squareFootage &&
        e1?.propertyDetails == e2?.propertyDetails &&
        e1?.securityDeposits == e2?.securityDeposits &&
        e1?.monthlyPrice == e2?.monthlyPrice &&
        e1?.amenaties == e2?.amenaties &&
        e1?.available == e2?.available &&
        e1?.propertyid == e2?.propertyid &&
        e1?.numBeds == e2?.numBeds &&
        e1?.numBath == e2?.numBath;
  }

  @override
  int hash(PropertiesRecord? e) => const ListEquality().hash([
        e?.address,
        e?.photos,
        e?.bedrooms,
        e?.bathrooms,
        e?.squareFootage,
        e?.propertyDetails,
        e?.securityDeposits,
        e?.monthlyPrice,
        e?.amenaties,
        e?.available,
        e?.propertyid,
        e?.numBeds,
        e?.numBath
      ]);

  @override
  bool isValidKey(Object? o) => o is PropertiesRecord;
}
