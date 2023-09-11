import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'lint_preset_builder.dart';

void main() async {
  runApp(
    const ProviderScope(
      child: LintPresetBuilder(),
    ),
  );
}
