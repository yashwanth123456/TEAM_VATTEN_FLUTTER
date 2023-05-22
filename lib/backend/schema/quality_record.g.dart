// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quality_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<QualityRecord> _$qualityRecordSerializer =
    new _$QualityRecordSerializer();

class _$QualityRecordSerializer implements StructuredSerializer<QualityRecord> {
  @override
  final Iterable<Type> types = const [QualityRecord, _$QualityRecord];
  @override
  final String wireName = 'QualityRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, QualityRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.ph;
    if (value != null) {
      result
        ..add('Ph')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.turbidity;
    if (value != null) {
      result
        ..add('Turbidity')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.tds;
    if (value != null) {
      result
        ..add('TDS')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.date;
    if (value != null) {
      result
        ..add('date')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.ffRef;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    return result;
  }

  @override
  QualityRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new QualityRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'Ph':
          result.ph = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Turbidity':
          result.turbidity = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'TDS':
          result.tds = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'date':
          result.date = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Document__Reference__Field':
          result.ffRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
      }
    }

    return result.build();
  }
}

class _$QualityRecord extends QualityRecord {
  @override
  final String? ph;
  @override
  final String? turbidity;
  @override
  final String? tds;
  @override
  final String? date;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$QualityRecord([void Function(QualityRecordBuilder)? updates]) =>
      (new QualityRecordBuilder()..update(updates))._build();

  _$QualityRecord._({this.ph, this.turbidity, this.tds, this.date, this.ffRef})
      : super._();

  @override
  QualityRecord rebuild(void Function(QualityRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  QualityRecordBuilder toBuilder() => new QualityRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is QualityRecord &&
        ph == other.ph &&
        turbidity == other.turbidity &&
        tds == other.tds &&
        date == other.date &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc($jc(0, ph.hashCode), turbidity.hashCode), tds.hashCode),
            date.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'QualityRecord')
          ..add('ph', ph)
          ..add('turbidity', turbidity)
          ..add('tds', tds)
          ..add('date', date)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class QualityRecordBuilder
    implements Builder<QualityRecord, QualityRecordBuilder> {
  _$QualityRecord? _$v;

  String? _ph;
  String? get ph => _$this._ph;
  set ph(String? ph) => _$this._ph = ph;

  String? _turbidity;
  String? get turbidity => _$this._turbidity;
  set turbidity(String? turbidity) => _$this._turbidity = turbidity;

  String? _tds;
  String? get tds => _$this._tds;
  set tds(String? tds) => _$this._tds = tds;

  String? _date;
  String? get date => _$this._date;
  set date(String? date) => _$this._date = date;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  QualityRecordBuilder() {
    QualityRecord._initializeBuilder(this);
  }

  QualityRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _ph = $v.ph;
      _turbidity = $v.turbidity;
      _tds = $v.tds;
      _date = $v.date;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(QualityRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$QualityRecord;
  }

  @override
  void update(void Function(QualityRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  QualityRecord build() => _build();

  _$QualityRecord _build() {
    final _$result = _$v ??
        new _$QualityRecord._(
            ph: ph, turbidity: turbidity, tds: tds, date: date, ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
