import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../models/lint_preset.dart';
import '../repos/lint_repo.dart';

part 'lint_presets_provider.g.dart';

@Riverpod(keepAlive: true)
FutureOr<List<LintPreset>> lintPresetsFuture(LintPresetsFutureRef ref) {
  return ref.watch(lintRepoProvider).loadLintPresets();
}

@riverpod
List<LintPreset> lintPresets(LintPresetsRef ref) {
  return ref.watch(lintPresetsFutureProvider).requireValue;
}
