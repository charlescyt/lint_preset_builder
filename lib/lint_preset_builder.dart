import 'package:flutter/material.dart';

import 'pages/splash_page.dart';
import 'style/theme.dart';
import 'utils/app_scroll_behavior.dart';

class LintPresetBuilder extends StatelessWidget {
  const LintPresetBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: theme,
      home: const SplashPage(),
      scrollBehavior: AppScrollBehavior(),
    );
  }
}
