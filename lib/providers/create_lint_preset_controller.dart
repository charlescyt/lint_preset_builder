import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../models/lint_preset.dart';
import '../models/new_lint_preset.dart';

part 'create_lint_preset_controller.g.dart';

@riverpod
class CreateLintPreset extends _$CreateLintPreset {
  @override
  NewLintPreset build() {
    return const NewLintPreset(lints: []);
  }

  void addLint(String lint) {
    state = state.copyWith(
      lints: [...state.lints, lint],
    );
  }

  void removeLint(String lint) {
    state = state.copyWith(
      lints: [...state.lints]..remove(lint),
    );
  }

  void copyLintsFromPreset(LintPreset preset) {
    state = NewLintPreset.fromPreset(preset);
  }
}
