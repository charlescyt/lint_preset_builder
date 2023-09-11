import 'package:freezed_annotation/freezed_annotation.dart';

import 'lint_preset.dart';

part 'new_lint_preset.freezed.dart';

@freezed
class NewLintPreset with _$NewLintPreset {
  const factory NewLintPreset({
    required List<String> lints,
  }) = _NewLintPreset;

  const NewLintPreset._();

  factory NewLintPreset.fromPreset(LintPreset preset) {
    return NewLintPreset(
      lints: preset.lints,
    );
  }

  bool get isValid => lints.isNotEmpty;

  String toYaml() {
    return '''
linter:
  rules:
${lints.map((e) => '    - $e').join('\n')}
'''
        .trimRight();
  }
}
