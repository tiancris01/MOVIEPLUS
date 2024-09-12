// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_exceptions.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AppExceptions {
  String get message => throw _privateConstructorUsedError;
  int get code => throw _privateConstructorUsedError;
  String? get identifier => throw _privateConstructorUsedError;

  /// Create a copy of AppExceptions
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AppExceptionsCopyWith<AppExceptions> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppExceptionsCopyWith<$Res> {
  factory $AppExceptionsCopyWith(
          AppExceptions value, $Res Function(AppExceptions) then) =
      _$AppExceptionsCopyWithImpl<$Res, AppExceptions>;
  @useResult
  $Res call({String message, int code, String? identifier});
}

/// @nodoc
class _$AppExceptionsCopyWithImpl<$Res, $Val extends AppExceptions>
    implements $AppExceptionsCopyWith<$Res> {
  _$AppExceptionsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AppExceptions
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? code = null,
    Object? identifier = freezed,
  }) {
    return _then(_value.copyWith(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      identifier: freezed == identifier
          ? _value.identifier
          : identifier // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AppExceptionsImplCopyWith<$Res>
    implements $AppExceptionsCopyWith<$Res> {
  factory _$$AppExceptionsImplCopyWith(
          _$AppExceptionsImpl value, $Res Function(_$AppExceptionsImpl) then) =
      __$$AppExceptionsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message, int code, String? identifier});
}

/// @nodoc
class __$$AppExceptionsImplCopyWithImpl<$Res>
    extends _$AppExceptionsCopyWithImpl<$Res, _$AppExceptionsImpl>
    implements _$$AppExceptionsImplCopyWith<$Res> {
  __$$AppExceptionsImplCopyWithImpl(
      _$AppExceptionsImpl _value, $Res Function(_$AppExceptionsImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppExceptions
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? code = null,
    Object? identifier = freezed,
  }) {
    return _then(_$AppExceptionsImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      identifier: freezed == identifier
          ? _value.identifier
          : identifier // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$AppExceptionsImpl extends _AppExceptions {
  const _$AppExceptionsImpl(
      {required this.message, required this.code, required this.identifier})
      : super._();

  @override
  final String message;
  @override
  final int code;
  @override
  final String? identifier;

  @override
  String toString() {
    return 'AppExceptions(message: $message, code: $code, identifier: $identifier)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppExceptionsImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.identifier, identifier) ||
                other.identifier == identifier));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message, code, identifier);

  /// Create a copy of AppExceptions
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AppExceptionsImplCopyWith<_$AppExceptionsImpl> get copyWith =>
      __$$AppExceptionsImplCopyWithImpl<_$AppExceptionsImpl>(this, _$identity);
}

abstract class _AppExceptions extends AppExceptions {
  const factory _AppExceptions(
      {required final String message,
      required final int code,
      required final String? identifier}) = _$AppExceptionsImpl;
  const _AppExceptions._() : super._();

  @override
  String get message;
  @override
  int get code;
  @override
  String? get identifier;

  /// Create a copy of AppExceptions
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AppExceptionsImplCopyWith<_$AppExceptionsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
