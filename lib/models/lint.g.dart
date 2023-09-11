// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lint.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Lint _$$_LintFromJson(Map<String, dynamic> json) => _$_Lint(
      name: json['name'] as String,
      description: json['description'] as String,
      type: $enumDecode(_$LintTypeEnumMap, json['type']),
      status: $enumDecode(_$LintStatusEnumMap, json['status']),
      hasFix: json['hasFix'] as bool,
    );

Map<String, dynamic> _$$_LintToJson(_$_Lint instance) => <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'type': _$LintTypeEnumMap[instance.type]!,
      'status': _$LintStatusEnumMap[instance.status]!,
      'hasFix': instance.hasFix,
    };

const _$LintTypeEnumMap = {
  LintType.error: 'error',
  LintType.style: 'style',
  LintType.pub: 'pub',
};

const _$LintStatusEnumMap = {
  LintStatus.stable: 'stable',
  LintStatus.experimental: 'experimental',
  LintStatus.deprecated: 'deprecated',
};
