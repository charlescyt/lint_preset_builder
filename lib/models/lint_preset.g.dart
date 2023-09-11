// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lint_preset.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LintPreset _$$_LintPresetFromJson(Map<String, dynamic> json) =>
    _$_LintPreset(
      name: json['name'] as String,
      packageName: json['packageName'] as String,
      link: Uri.parse(json['link'] as String),
      version: json['version'] as String,
      lints: (json['lints'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$_LintPresetToJson(_$_LintPreset instance) =>
    <String, dynamic>{
      'name': instance.name,
      'packageName': instance.packageName,
      'link': instance.link.toString(),
      'version': instance.version,
      'lints': instance.lints,
    };
