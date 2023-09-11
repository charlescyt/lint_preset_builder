import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'all_lints_provider.dart';
import 'lint_presets_provider.dart';

part 'app_init_provider.g.dart';

@riverpod
class AppInit extends _$AppInit {
  bool _hasInitialized = false;

  @override
  FutureOr<void> build() async {
    if (_hasInitialized) return;

    await Future.wait(
      [
        ref.watch(allLintsFutureProvider.future),
        ref.watch(lintPresetsFutureProvider.future),
        Future<void>.delayed(const Duration(seconds: 1)),
      ],
    );

    _hasInitialized = true;

    await Future.microtask(ref.invalidateSelf);

    return future;
  }
}
