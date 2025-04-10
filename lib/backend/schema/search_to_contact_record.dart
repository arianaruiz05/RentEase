import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

/// metric 6 data collection
class SearchToContactRecord extends FirestoreRecord {
  SearchToContactRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "search_count" field.
  int? _searchCount;
  int get searchCount => _searchCount ?? 0;
  bool hasSearchCount() => _searchCount != null;

  // "contact_count" field.
  int? _contactCount;
  int get contactCount => _contactCount ?? 0;
  bool hasContactCount() => _contactCount != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _searchCount = castToType<int>(snapshotData['search_count']);
    _contactCount = castToType<int>(snapshotData['contact_count']);
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('search_to_contact')
          : FirebaseFirestore.instance.collectionGroup('search_to_contact');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('search_to_contact').doc(id);

  static Stream<SearchToContactRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => SearchToContactRecord.fromSnapshot(s));

  static Future<SearchToContactRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => SearchToContactRecord.fromSnapshot(s));

  static SearchToContactRecord fromSnapshot(DocumentSnapshot snapshot) =>
      SearchToContactRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static SearchToContactRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      SearchToContactRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'SearchToContactRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is SearchToContactRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createSearchToContactRecordData({
  int? searchCount,
  int? contactCount,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'search_count': searchCount,
      'contact_count': contactCount,
    }.withoutNulls,
  );

  return firestoreData;
}

class SearchToContactRecordDocumentEquality
    implements Equality<SearchToContactRecord> {
  const SearchToContactRecordDocumentEquality();

  @override
  bool equals(SearchToContactRecord? e1, SearchToContactRecord? e2) {
    return e1?.searchCount == e2?.searchCount &&
        e1?.contactCount == e2?.contactCount;
  }

  @override
  int hash(SearchToContactRecord? e) =>
      const ListEquality().hash([e?.searchCount, e?.contactCount]);

  @override
  bool isValidKey(Object? o) => o is SearchToContactRecord;
}
