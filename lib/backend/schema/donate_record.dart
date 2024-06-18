import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DonateRecord extends FirestoreRecord {
  DonateRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "user_id" field.
  DocumentReference? _userId;
  DocumentReference? get userId => _userId;
  bool hasUserId() => _userId != null;

  // "donation_id" field.
  DocumentReference? _donationId;
  DocumentReference? get donationId => _donationId;
  bool hasDonationId() => _donationId != null;

  // "value" field.
  int? _value;
  int get value => _value ?? 0;
  bool hasValue() => _value != null;

  // "create_at" field.
  DateTime? _createAt;
  DateTime? get createAt => _createAt;
  bool hasCreateAt() => _createAt != null;

  // "payment" field.
  String? _payment;
  String get payment => _payment ?? '';
  bool hasPayment() => _payment != null;

  // "message" field.
  String? _message;
  String get message => _message ?? '';
  bool hasMessage() => _message != null;

  void _initializeFields() {
    _userId = snapshotData['user_id'] as DocumentReference?;
    _donationId = snapshotData['donation_id'] as DocumentReference?;
    _value = castToType<int>(snapshotData['value']);
    _createAt = snapshotData['create_at'] as DateTime?;
    _payment = snapshotData['payment'] as String?;
    _message = snapshotData['message'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('donate');

  static Stream<DonateRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => DonateRecord.fromSnapshot(s));

  static Future<DonateRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => DonateRecord.fromSnapshot(s));

  static DonateRecord fromSnapshot(DocumentSnapshot snapshot) => DonateRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static DonateRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      DonateRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'DonateRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is DonateRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createDonateRecordData({
  DocumentReference? userId,
  DocumentReference? donationId,
  int? value,
  DateTime? createAt,
  String? payment,
  String? message,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'user_id': userId,
      'donation_id': donationId,
      'value': value,
      'create_at': createAt,
      'payment': payment,
      'message': message,
    }.withoutNulls,
  );

  return firestoreData;
}

class DonateRecordDocumentEquality implements Equality<DonateRecord> {
  const DonateRecordDocumentEquality();

  @override
  bool equals(DonateRecord? e1, DonateRecord? e2) {
    return e1?.userId == e2?.userId &&
        e1?.donationId == e2?.donationId &&
        e1?.value == e2?.value &&
        e1?.createAt == e2?.createAt &&
        e1?.payment == e2?.payment &&
        e1?.message == e2?.message;
  }

  @override
  int hash(DonateRecord? e) => const ListEquality().hash([
        e?.userId,
        e?.donationId,
        e?.value,
        e?.createAt,
        e?.payment,
        e?.message
      ]);

  @override
  bool isValidKey(Object? o) => o is DonateRecord;
}
