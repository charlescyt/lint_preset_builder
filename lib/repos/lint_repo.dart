import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:meta/meta.dart' show immutable;
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../models/lint.dart';
import '../models/lint_preset.dart';

part 'lint_repo.g.dart';

@Riverpod(keepAlive: true)
LintRepo lintRepo(LintRepoRef ref) {
  return const LintRepo();
}

@immutable
class LintRepo {
  const LintRepo();

  Future<List<Lint>> loadAllLints() async {
    final data = await rootBundle.loadString('assets/all_lints.json');
    final lints = (jsonDecode(data) as List<dynamic>).map((e) => Lint.fromJson(e as Map<String, dynamic>)).toList();
    return lints;
  }

  Future<List<LintPreset>> loadLintPresets() async {
    final data = await rootBundle.loadString('assets/lint_presets.json');
    final lintPresets =
        (jsonDecode(data) as List<dynamic>).map((e) => LintPreset.fromJson(e as Map<String, dynamic>)).toList();
    return lintPresets;
  }
}
