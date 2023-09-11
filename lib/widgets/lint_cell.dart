import 'package:flutter/material.dart';

import '../models/lint.dart';
import '../utils/theme_extensions.dart';
import '../utils/url_launcher.dart';

class LintCell extends StatelessWidget {
  const LintCell(
    this.lint, {
    super.key,
  });

  final Lint lint;

  @override
  Widget build(BuildContext context) {
    final textTheme = context.textTheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Row(
          children: [
            Flexible(
              child: Text(
                lint.name,
                style: textTheme.titleMedium,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            IconButton(
              iconSize: 20,
              padding: EdgeInsets.zero,
              visualDensity: VisualDensity.compact,
              onPressed: () async {
                final uri = Uri.https(
                  'dart.dev',
                  '/tools/linter-rules/${lint.name}',
                );
                await launchUrl(uri);
              },
              icon: const Icon(Icons.open_in_new),
            ),
          ],
        ),
        Text(
          lint.description,
          style: textTheme.bodySmall,
          overflow: TextOverflow.ellipsis,
        ),
        const SizedBox(height: 8),
        OverflowBar(
          spacing: 8,
          children: [
            _LintTypeChip(type: lint.type),
            _LintStatusChip(status: lint.status),
            if (lint.hasFix) const _HasFixChip(),
          ],
        ),
      ],
    );
  }
}

class _HasFixChip extends StatelessWidget {
  const _HasFixChip();

  @override
  Widget build(BuildContext context) {
    return const _CustomChip(
      label: Text('Has Fix'),
      backgroundColor: Colors.green,
    );
  }
}

class _LintStatusChip extends StatelessWidget {
  const _LintStatusChip({
    required this.status,
  });

  final LintStatus status;

  @override
  Widget build(BuildContext context) {
    return _CustomChip(
      label: Text(status.label),
      backgroundColor: status.color,
    );
  }
}

class _LintTypeChip extends StatelessWidget {
  const _LintTypeChip({
    required this.type,
  });

  final LintType type;

  @override
  Widget build(BuildContext context) {
    return _CustomChip(
      label: Text(type.label),
      backgroundColor: type.color,
    );
  }
}

class _CustomChip extends StatelessWidget {
  const _CustomChip({
    required this.label,
    required this.backgroundColor,
  });

  final Widget label;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    final textTheme = context.textTheme;
    return Chip(
      padding: EdgeInsets.zero,
      visualDensity: const VisualDensity(horizontal: -4, vertical: -4),
      label: label,
      labelStyle: textTheme.bodySmall,
      backgroundColor: backgroundColor,
    );
  }
}
