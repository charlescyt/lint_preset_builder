// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'lint_preset.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LintPreset _$LintPresetFromJson(Map<String, dynamic> json) {
  return _LintPreset.fromJson(json);
}

/// @nodoc
mixin _$LintPreset {
  String get name => throw _privateConstructorUsedError;
  String get packageName => throw _privateConstructorUsedError;
  Uri get link => throw _privateConstructorUsedError;
  String get version => throw _privateConstructorUsedError;
  List<String> get lints => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LintPresetCopyWith<LintPreset> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LintPresetCopyWith<$Res> {
  factory $LintPresetCopyWith(
          LintPreset value, $Res Function(LintPreset) then) =
      _$LintPresetCopyWithImpl<$Res, LintPreset>;
  @useResult
  $Res call(
      {String name,
      String packageName,
      Uri link,
      String version,
      List<String> lints});
}

/// @nodoc
class _$LintPresetCopyWithImpl<$Res, $Val extends LintPreset>
    implements $LintPresetCopyWith<$Res> {
  _$LintPresetCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? packageName = null,
    Object? link = null,
    Object? version = null,
    Object? lints = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      packageName: null == packageName
          ? _value.packageName
          : packageName // ignore: cast_nullable_to_non_nullable
              as String,
      link: null == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as Uri,
      version: null == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String,
      lints: null == lints
          ? _value.lints
          : lints // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LintPresetCopyWith<$Res>
    implements $LintPresetCopyWith<$Res> {
  factory _$$_LintPresetCopyWith(
          _$_LintPreset value, $Res Function(_$_LintPreset) then) =
      __$$_LintPresetCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String packageName,
      Uri link,
      String version,
      List<String> lints});
}

/// @nodoc
class __$$_LintPresetCopyWithImpl<$Res>
    extends _$LintPresetCopyWithImpl<$Res, _$_LintPreset>
    implements _$$_LintPresetCopyWith<$Res> {
  __$$_LintPresetCopyWithImpl(
      _$_LintPreset _value, $Res Function(_$_LintPreset) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? packageName = null,
    Object? link = null,
    Object? version = null,
    Object? lints = null,
  }) {
    return _then(_$_LintPreset(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      packageName: null == packageName
          ? _value.packageName
          : packageName // ignore: cast_nullable_to_non_nullable
              as String,
      link: null == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as Uri,
      version: null == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String,
      lints: null == lints
          ? _value._lints
          : lints // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LintPreset implements _LintPreset {
  const _$_LintPreset(
      {required this.name,
      required this.packageName,
      required this.link,
      required this.version,
      required final List<String> lints})
      : _lints = lints;

  factory _$_LintPreset.fromJson(Map<String, dynamic> json) =>
      _$$_LintPresetFromJson(json);

  @override
  final String name;
  @override
  final String packageName;
  @override
  final Uri link;
  @override
  final String version;
  final List<String> _lints;
  @override
  List<String> get lints {
    if (_lints is EqualUnmodifiableListView) return _lints;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_lints);
  }

  @override
  String toString() {
    return 'LintPreset(name: $name, packageName: $packageName, link: $link, version: $version, lints: $lints)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LintPreset &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.packageName, packageName) ||
                other.packageName == packageName) &&
            (identical(other.link, link) || other.link == link) &&
            (identical(other.version, version) || other.version == version) &&
            const DeepCollectionEquality().equals(other._lints, _lints));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, packageName, link, version,
      const DeepCollectionEquality().hash(_lints));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LintPresetCopyWith<_$_LintPreset> get copyWith =>
      __$$_LintPresetCopyWithImpl<_$_LintPreset>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LintPresetToJson(
      this,
    );
  }
}

abstract class _LintPreset implements LintPreset {
  const factory _LintPreset(
      {required final String name,
      required final String packageName,
      required final Uri link,
      required final String version,
      required final List<String> lints}) = _$_LintPreset;

  factory _LintPreset.fromJson(Map<String, dynamic> json) =
      _$_LintPreset.fromJson;

  @override
  String get name;
  @override
  String get packageName;
  @override
  Uri get link;
  @override
  String get version;
  @override
  List<String> get lints;
  @override
  @JsonKey(ignore: true)
  _$$_LintPresetCopyWith<_$_LintPreset> get copyWith =>
      throw _privateConstructorUsedError;
}
