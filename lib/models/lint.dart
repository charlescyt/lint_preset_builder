import 'package:flutter/material.dart' show Color, Colors;
import 'package:freezed_annotation/freezed_annotation.dart';

part 'lint.freezed.dart';
part 'lint.g.dart';

@freezed
class Lint with _$Lint {
  const factory Lint({
    required String name,
    required String description,
    required LintType type,
    required LintStatus status,
    required bool hasFix,
  }) = _Lint;

  factory Lint.fromJson(Map<String, dynamic> json) => _$LintFromJson(json);
}

enum LintStatus {
  stable,
  experimental,
  deprecated,
  ;
}

enum LintType {
  error,
  style,
  pub,
  ;
}

extension LintStatusX on LintStatus {
  String get label => switch (this) {
      LintStatus.stable => 'Stable',
      LintStatus.experimental => 'Experimental',
      LintStatus.deprecated => 'Deprecated',
    };

  Color get color => switch (this) {
      LintStatus.stable => Colors.blueAccent,
      LintStatus.experimental => Colors.blueGrey,
      LintStatus.deprecated => Colors.redAccent,
    };
}

extension LintTypeX on LintType {
  String get label => switch (this) {
      LintType.error => 'Error',
      LintType.style => 'Style',
      LintType.pub => 'Pub',
    };

  Color get color => switch (this) {
      LintType.error => Colors.red,
      LintType.style => Colors.blue,
      LintType.pub => Colors.purple,
    };
}
