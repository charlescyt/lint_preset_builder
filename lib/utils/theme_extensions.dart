import 'package:flutter/material.dart';

extension ThemeExtension on BuildContext {
  ThemeData get theme => Theme.of(this);
  TextTheme get textTheme => theme.textTheme;
  TextTheme get primaryTextTheme => theme.primaryTextTheme;
  ColorScheme get colorScheme => theme.colorScheme;
}
