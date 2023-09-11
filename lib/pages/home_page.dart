import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../models/lint.dart';
import '../providers/all_lints_provider.dart';
import '../providers/create_lint_preset_controller.dart';
import '../providers/lint_presets_provider.dart';
import '../widgets/linter_rule_table.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final lints = ref.watch(allLintsProvider);
    final lintPresets = ref.watch(lintPresetsProvider);
    return SizedBox.expand(
      child: Material(
        child: Column(
          children: [
            const SizedBox(height: 8),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                'Lint Preset Builder',
                style: Theme.of(context).textTheme.titleLarge,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 8),
            Expanded(
              child: LinterRuleTable(
                lints: lints,
                lintPresets: lintPresets,
              ),
            ),
            const SizedBox(height: 8),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Flexible(
                    child: Text(
                      'Total: ${lints.length}',
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  const Flexible(child: SizedBox(width: 20)),
                  Flexible(
                    child: Text(
                      'Experimental: ${lints.where((e) => e.status == LintStatus.experimental).length}',
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  const Flexible(child: SizedBox(width: 20)),
                  Flexible(
                    child: Text(
                      'Deprecated: ${lints.where((e) => e.status == LintStatus.deprecated).length}',
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  const Flexible(child: SizedBox(width: 20)),
                  Flexible(
                    child: Text(
                      'Enabled: ${ref.watch(createLintPresetProvider).lints.length}',
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 8),
          ],
        ),
      ),
    );
  }
}
