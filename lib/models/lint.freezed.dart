// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'lint.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Lint _$LintFromJson(Map<String, dynamic> json) {
  return _Lint.fromJson(json);
}

/// @nodoc
mixin _$Lint {
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  LintType get type => throw _privateConstructorUsedError;
  LintStatus get status => throw _privateConstructorUsedError;
  bool get hasFix => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LintCopyWith<Lint> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LintCopyWith<$Res> {
  factory $LintCopyWith(Lint value, $Res Function(Lint) then) =
      _$LintCopyWithImpl<$Res, Lint>;
  @useResult
  $Res call(
      {String name,
      String description,
      LintType type,
      LintStatus status,
      bool hasFix});
}

/// @nodoc
class _$LintCopyWithImpl<$Res, $Val extends Lint>
    implements $LintCopyWith<$Res> {
  _$LintCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? description = null,
    Object? type = null,
    Object? status = null,
    Object? hasFix = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as LintType,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as LintStatus,
      hasFix: null == hasFix
          ? _value.hasFix
          : hasFix // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LintCopyWith<$Res> implements $LintCopyWith<$Res> {
  factory _$$_LintCopyWith(_$_Lint value, $Res Function(_$_Lint) then) =
      __$$_LintCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String description,
      LintType type,
      LintStatus status,
      bool hasFix});
}

/// @nodoc
class __$$_LintCopyWithImpl<$Res> extends _$LintCopyWithImpl<$Res, _$_Lint>
    implements _$$_LintCopyWith<$Res> {
  __$$_LintCopyWithImpl(_$_Lint _value, $Res Function(_$_Lint) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? description = null,
    Object? type = null,
    Object? status = null,
    Object? hasFix = null,
  }) {
    return _then(_$_Lint(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as LintType,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as LintStatus,
      hasFix: null == hasFix
          ? _value.hasFix
          : hasFix // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Lint implements _Lint {
  const _$_Lint(
      {required this.name,
      required this.description,
      required this.type,
      required this.status,
      required this.hasFix});

  factory _$_Lint.fromJson(Map<String, dynamic> json) => _$$_LintFromJson(json);

  @override
  final String name;
  @override
  final String description;
  @override
  final LintType type;
  @override
  final LintStatus status;
  @override
  final bool hasFix;

  @override
  String toString() {
    return 'Lint(name: $name, description: $description, type: $type, status: $status, hasFix: $hasFix)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Lint &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.hasFix, hasFix) || other.hasFix == hasFix));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, name, description, type, status, hasFix);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LintCopyWith<_$_Lint> get copyWith =>
      __$$_LintCopyWithImpl<_$_Lint>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LintToJson(
      this,
    );
  }
}

abstract class _Lint implements Lint {
  const factory _Lint(
      {required final String name,
      required final String description,
      required final LintType type,
      required final LintStatus status,
      required final bool hasFix}) = _$_Lint;

  factory _Lint.fromJson(Map<String, dynamic> json) = _$_Lint.fromJson;

  @override
  String get name;
  @override
  String get description;
  @override
  LintType get type;
  @override
  LintStatus get status;
  @override
  bool get hasFix;
  @override
  @JsonKey(ignore: true)
  _$$_LintCopyWith<_$_Lint> get copyWith => throw _privateConstructorUsedError;
}
