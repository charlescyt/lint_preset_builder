import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:two_dimensional_scrollables/two_dimensional_scrollables.dart';

import '../models/lint.dart';
import '../models/lint_preset.dart';
import '../providers/create_lint_preset_controller.dart';
import '../utils/url_launcher.dart';
import 'invalid_lint_preset_dialog.dart';
import 'lint_cell.dart';
import 'lint_preset_preview_dialog.dart';

class LinterRuleTable extends ConsumerStatefulWidget {
  const LinterRuleTable({
    super.key,
    required this.lints,
    required this.lintPresets,
  });

  final List<Lint> lints;
  final List<LintPreset> lintPresets;

  @override
  ConsumerState<LinterRuleTable> createState() => _LinterRuleTableState();
}

class _LinterRuleTableState extends ConsumerState<LinterRuleTable> {
  late final ScrollController _verticalController = ScrollController();
  late final ScrollController _horizontalController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scrollbar(
      controller: _verticalController,
      child: Scrollbar(
        controller: _horizontalController,
        child: TableView.builder(
          verticalDetails: ScrollableDetails.vertical(controller: _verticalController),
          horizontalDetails: ScrollableDetails.horizontal(controller: _horizontalController),
          diagonalDragBehavior: DiagonalDragBehavior.free,
          cellBuilder: cellBuilder,
          rowCount: widget.lints.length + 1,
          pinnedRowCount: 1,
          rowBuilder: rowBuilder,
          columnCount: widget.lintPresets.length + 2,
          pinnedColumnCount: 1,
          columnBuilder: columnBuilder,
        ),
      ),
    );
  }

  Widget cellBuilder(BuildContext context, TableVicinity vicinity) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: switch ((vicinity.row, vicinity.column)) {
        (0, 0) => const _RuleCell(),
        (0, final column) when column < widget.lintPresets.length + 1 =>
          _LintPresetCell(widget.lintPresets[column - 1]),
        (0, final column) when column == widget.lintPresets.length + 1 => const _NewPresetCell(),
        (final row, final column) when column == widget.lintPresets.length + 1 =>
          _NewPresetLintCheckBox(widget.lints[row - 1]),
        (final row, 0) => LintCell(widget.lints[row - 1]),
        (final row, final column) => widget.lintPresets[column - 1].lints.contains(widget.lints[row - 1].name)
            ? const Icon(Icons.check, color: Colors.green)
            : const Icon(Icons.close, color: Colors.red),
      },
    );
  }

  TableSpan columnBuilder(int index) {
    return switch (index) {
      0 => const TableSpan(
          extent: FixedTableSpanExtent(500),
          backgroundDecoration: TableSpanDecoration(
            border: TableSpanBorder(
              trailing: BorderSide(width: 2),
            ),
          ),
        ),
      _ => const TableSpan(
          extent: FixedTableSpanExtent(220),
          backgroundDecoration: TableSpanDecoration(
            border: TableSpanBorder(
              trailing: BorderSide(width: 2),
            ),
          ),
        ),
    };
  }

  TableSpan rowBuilder(int index) {
    return switch (index) {
      0 => const TableSpan(
          extent: FixedTableSpanExtent(80),
          backgroundDecoration: TableSpanDecoration(
            color: Colors.black54,
            border: TableSpanBorder(
              trailing: BorderSide(width: 2),
            ),
          ),
        ),
      final index => TableSpan(
          extent: const FixedTableSpanExtent(90),
          backgroundDecoration: TableSpanDecoration(
            color: index.isEven ? Colors.black54 : Colors.black26,
            border: const TableSpanBorder(
              trailing: BorderSide(width: 2),
            ),
          ),
        ),
    };
  }
}

class _RuleCell extends StatelessWidget {
  const _RuleCell();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          'Rules',
          style: TextStyle(fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        IconButton(
          iconSize: 20,
          padding: EdgeInsets.zero,
          visualDensity: VisualDensity.compact,
          onPressed: () async {
            await launchUrl(
              Uri.http(
                'dart.dev',
                'tools/linter-rules/all',
              ),
            );
          },
          icon: const Icon(Icons.open_in_new),
        ),
      ],
    );
  }
}

class _LintPresetCell extends ConsumerWidget {
  const _LintPresetCell(this.lintPreset);

  final LintPreset lintPreset;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          lintPreset.name,
          style: const TextStyle(fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('v${lintPreset.version}'),
            IconButton(
              iconSize: 20,
              padding: EdgeInsets.zero,
              visualDensity: VisualDensity.compact,
              onPressed: () async {
                await launchUrl(lintPreset.link);
              },
              icon: const Icon(Icons.open_in_new),
            ),
            IconButton(
              iconSize: 20,
              padding: EdgeInsets.zero,
              visualDensity: VisualDensity.compact,
              onPressed: () {
                ref.read(createLintPresetProvider.notifier).copyLintsFromPreset(lintPreset);
              },
              icon: const Icon(Icons.copy),
            ),
          ],
        ),
      ],
    );
  }
}

class _NewPresetCell extends ConsumerWidget {
  const _NewPresetCell();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          'Yours',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              iconSize: 20,
              padding: EdgeInsets.zero,
              visualDensity: VisualDensity.compact,
              onPressed: () async {
                final lintPreset = ref.read(createLintPresetProvider);
                if (lintPreset.isValid) {
                  await showDialog<void>(
                    context: context,
                    builder: (context) => const LintPresetPreviewDialog(),
                  );
                } else {
                  await showDialog<void>(
                    context: context,
                    builder: (context) => const InvalidLintPresetDialog(),
                  );
                }
              },
              icon: const Icon(Icons.add),
            ),
            IconButton(
              iconSize: 20,
              padding: EdgeInsets.zero,
              visualDensity: VisualDensity.compact,
              onPressed: () {
                ref.invalidate(createLintPresetProvider);
              },
              icon: const Icon(Icons.delete_outline),
            ),
          ],
        ),
      ],
    );
  }
}

class _NewPresetLintCheckBox extends ConsumerWidget {
  const _NewPresetLintCheckBox(this.lint);

  final Lint lint;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Center(
      child: Checkbox(
        value: ref.watch(createLintPresetProvider).lints.contains(lint.name),
        onChanged: (value) {
          if (value == true) {
            ref.read(createLintPresetProvider.notifier).addLint(lint.name);
          }

          if (value == false) {
            ref.read(createLintPresetProvider.notifier).removeLint(lint.name);
          }
        },
      ),
    );
  }
}
