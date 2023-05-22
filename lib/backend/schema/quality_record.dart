import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'quality_record.g.dart';

abstract class QualityRecord
    implements Built<QualityRecord, QualityRecordBuilder> {
  static Serializer<QualityRecord> get serializer => _$qualityRecordSerializer;

  @BuiltValueField(wireName: 'Ph')
  String? get ph;

  @BuiltValueField(wireName: 'Turbidity')
  String? get turbidity;

  @BuiltValueField(wireName: 'TDS')
  String? get tds;

  String? get date;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(QualityRecordBuilder builder) => builder
    ..ph = ''
    ..turbidity = ''
    ..tds = ''
    ..date = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('quality');

  static Stream<QualityRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<QualityRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  QualityRecord._();
  factory QualityRecord([void Function(QualityRecordBuilder) updates]) =
      _$QualityRecord;

  static QualityRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createQualityRecordData({
  String? ph,
  String? turbidity,
  String? tds,
  String? date,
}) {
  final firestoreData = serializers.toFirestore(
    QualityRecord.serializer,
    QualityRecord(
      (q) => q
        ..ph = ph
        ..turbidity = turbidity
        ..tds = tds
        ..date = date,
    ),
  );

  return firestoreData;
}
