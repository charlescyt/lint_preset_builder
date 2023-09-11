import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show Clipboard, ClipboardData;
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../providers/create_lint_preset_controller.dart';

class LintPresetPreviewDialog extends ConsumerWidget {
  const LintPresetPreviewDialog({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final newLintPreset = ref.watch(createLintPresetProvider);
    final lintPresetYaml = newLintPreset.toYaml();
    return Dialog(
      backgroundColor: Colors.black,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: IntrinsicHeight(
          child: Column(
            children: [
              const Text(
                'Click the copy button and paste the contents to the analysis_options.yaml file.',
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(height: 16),
              FilledButton(
                onPressed: () async {
                  await Clipboard.setData(ClipboardData(text: lintPresetYaml));
                  if (context.mounted) {
                    Navigator.of(context).pop();
                  }
                },
                child: const Text('Copy'),
              ),
              const SizedBox(height: 16),
              Flexible(
                child: Card(
                  child: SingleChildScrollView(
                    padding: const EdgeInsets.all(16),
                    child: Text(lintPresetYaml),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
