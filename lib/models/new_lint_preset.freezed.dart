// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'new_lint_preset.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NewLintPreset {
  List<String> get lints => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NewLintPresetCopyWith<NewLintPreset> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewLintPresetCopyWith<$Res> {
  factory $NewLintPresetCopyWith(
          NewLintPreset value, $Res Function(NewLintPreset) then) =
      _$NewLintPresetCopyWithImpl<$Res, NewLintPreset>;
  @useResult
  $Res call({List<String> lints});
}

/// @nodoc
class _$NewLintPresetCopyWithImpl<$Res, $Val extends NewLintPreset>
    implements $NewLintPresetCopyWith<$Res> {
  _$NewLintPresetCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lints = null,
  }) {
    return _then(_value.copyWith(
      lints: null == lints
          ? _value.lints
          : lints // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_NewLintPresetCopyWith<$Res>
    implements $NewLintPresetCopyWith<$Res> {
  factory _$$_NewLintPresetCopyWith(
          _$_NewLintPreset value, $Res Function(_$_NewLintPreset) then) =
      __$$_NewLintPresetCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<String> lints});
}

/// @nodoc
class __$$_NewLintPresetCopyWithImpl<$Res>
    extends _$NewLintPresetCopyWithImpl<$Res, _$_NewLintPreset>
    implements _$$_NewLintPresetCopyWith<$Res> {
  __$$_NewLintPresetCopyWithImpl(
      _$_NewLintPreset _value, $Res Function(_$_NewLintPreset) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lints = null,
  }) {
    return _then(_$_NewLintPreset(
      lints: null == lints
          ? _value._lints
          : lints // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$_NewLintPreset extends _NewLintPreset {
  const _$_NewLintPreset({required final List<String> lints})
      : _lints = lints,
        super._();

  final List<String> _lints;
  @override
  List<String> get lints {
    if (_lints is EqualUnmodifiableListView) return _lints;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_lints);
  }

  @override
  String toString() {
    return 'NewLintPreset(lints: $lints)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NewLintPreset &&
            const DeepCollectionEquality().equals(other._lints, _lints));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_lints));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NewLintPresetCopyWith<_$_NewLintPreset> get copyWith =>
      __$$_NewLintPresetCopyWithImpl<_$_NewLintPreset>(this, _$identity);
}

abstract class _NewLintPreset extends NewLintPreset {
  const factory _NewLintPreset({required final List<String> lints}) =
      _$_NewLintPreset;
  const _NewLintPreset._() : super._();

  @override
  List<String> get lints;
  @override
  @JsonKey(ignore: true)
  _$$_NewLintPresetCopyWith<_$_NewLintPreset> get copyWith =>
      throw _privateConstructorUsedError;
}
