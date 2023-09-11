import 'package:freezed_annotation/freezed_annotation.dart';

part 'lint_preset.freezed.dart';
part 'lint_preset.g.dart';

@freezed
class LintPreset with _$LintPreset {
  const factory LintPreset({
    required String name,
    required String packageName,
    required Uri link,
    required String version,
    required List<String> lints,
  }) = _LintPreset;

  factory LintPreset.fromJson(Map<String, dynamic> json) => _$LintPresetFromJson(json);
}
