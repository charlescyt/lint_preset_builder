import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../providers/app_init_provider.dart';
import 'home_page.dart';

class SplashPage extends ConsumerWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appInit = ref.watch(appInitProvider);
    if (appInit.isLoading) {
      return const Center(
        child: CircularProgressIndicator(),
      );
    }

    return const HomePage();
  }
}
