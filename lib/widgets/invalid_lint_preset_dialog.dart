import 'package:flutter/material.dart';

class InvalidLintPresetDialog extends StatelessWidget {
  const InvalidLintPresetDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog.adaptive(
      title: const Text('Invalid Lint Preset'),
      content: const Text('Please select at least one lint'),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: const Text('OK'),
        ),
      ],
    );
  }
}
