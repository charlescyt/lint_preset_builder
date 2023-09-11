import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../models/lint.dart';
import '../repos/lint_repo.dart';

part 'all_lints_provider.g.dart';

@Riverpod(keepAlive: true)
FutureOr<List<Lint>> allLintsFuture(AllLintsFutureRef ref) {
  return ref.read(lintRepoProvider).loadAllLints();
}

@riverpod
List<Lint> allLints(AllLintsRef ref) {
  return ref.watch(allLintsFutureProvider).requireValue;
}
