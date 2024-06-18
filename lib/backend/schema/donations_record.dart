import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DonationsRecord extends FirestoreRecord {
  DonationsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  // "descriptipn" field.
  String? _descriptipn;
  String get descriptipn => _descriptipn ?? '';
  bool hasDescriptipn() => _descriptipn != null;

  // "value" field.
  int? _value;
  int get value => _value ?? 0;
  bool hasValue() => _value != null;

  // "user" field.
  DocumentReference? _user;
  DocumentReference? get user => _user;
  bool hasUser() => _user != null;

  // "created_at" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  // "end_at" field.
  DateTime? _endAt;
  DateTime? get endAt => _endAt;
  bool hasEndAt() => _endAt != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  // "target" field.
  int? _target;
  int get target => _target ?? 0;
  bool hasTarget() => _target != null;

  // "isApproved" field.
  bool? _isApproved;
  bool get isApproved => _isApproved ?? false;
  bool hasIsApproved() => _isApproved != null;

  // "isFund" field.
  bool? _isFund;
  bool get isFund => _isFund ?? false;
  bool hasIsFund() => _isFund != null;

  // "wannaFund" field.
  bool? _wannaFund;
  bool get wannaFund => _wannaFund ?? false;
  bool hasWannaFund() => _wannaFund != null;

  void _initializeFields() {
    _title = snapshotData['title'] as String?;
    _descriptipn = snapshotData['descriptipn'] as String?;
    _value = castToType<int>(snapshotData['value']);
    _user = snapshotData['user'] as DocumentReference?;
    _createdAt = snapshotData['created_at'] as DateTime?;
    _endAt = snapshotData['end_at'] as DateTime?;
    _image = snapshotData['image'] as String?;
    _target = castToType<int>(snapshotData['target']);
    _isApproved = snapshotData['isApproved'] as bool?;
    _isFund = snapshotData['isFund'] as bool?;
    _wannaFund = snapshotData['wannaFund'] as bool?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('donations');

  static Stream<DonationsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => DonationsRecord.fromSnapshot(s));

  static Future<DonationsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => DonationsRecord.fromSnapshot(s));

  static DonationsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      DonationsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static DonationsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      DonationsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'DonationsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is DonationsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createDonationsRecordData({
  String? title,
  String? descriptipn,
  int? value,
  DocumentReference? user,
  DateTime? createdAt,
  DateTime? endAt,
  String? image,
  int? target,
  bool? isApproved,
  bool? isFund,
  bool? wannaFund,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'title': title,
      'descriptipn': descriptipn,
      'value': value,
      'user': user,
      'created_at': createdAt,
      'end_at': endAt,
      'image': image,
      'target': target,
      'isApproved': isApproved,
      'isFund': isFund,
      'wannaFund': wannaFund,
    }.withoutNulls,
  );

  return firestoreData;
}

class DonationsRecordDocumentEquality implements Equality<DonationsRecord> {
  const DonationsRecordDocumentEquality();

  @override
  bool equals(DonationsRecord? e1, DonationsRecord? e2) {
    return e1?.title == e2?.title &&
        e1?.descriptipn == e2?.descriptipn &&
        e1?.value == e2?.value &&
        e1?.user == e2?.user &&
        e1?.createdAt == e2?.createdAt &&
        e1?.endAt == e2?.endAt &&
        e1?.image == e2?.image &&
        e1?.target == e2?.target &&
        e1?.isApproved == e2?.isApproved &&
        e1?.isFund == e2?.isFund &&
        e1?.wannaFund == e2?.wannaFund;
  }

  @override
  int hash(DonationsRecord? e) => const ListEquality().hash([
        e?.title,
        e?.descriptipn,
        e?.value,
        e?.user,
        e?.createdAt,
        e?.endAt,
        e?.image,
        e?.target,
        e?.isApproved,
        e?.isFund,
        e?.wannaFund
      ]);

  @override
  bool isValidKey(Object? o) => o is DonationsRecord;
}
