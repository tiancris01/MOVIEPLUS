// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ServerFailure {
  Object? get error => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DioException? error) Api,
    required TResult Function(String? error) Format,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DioException? error)? Api,
    TResult? Function(String? error)? Format,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DioException? error)? Api,
    TResult Function(String? error)? Format,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_api value) Api,
    required TResult Function(_format value) Format,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_api value)? Api,
    TResult? Function(_format value)? Format,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_api value)? Api,
    TResult Function(_format value)? Format,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServerFailureCopyWith<$Res> {
  factory $ServerFailureCopyWith(
          ServerFailure value, $Res Function(ServerFailure) then) =
      _$ServerFailureCopyWithImpl<$Res, ServerFailure>;
}

/// @nodoc
class _$ServerFailureCopyWithImpl<$Res, $Val extends ServerFailure>
    implements $ServerFailureCopyWith<$Res> {
  _$ServerFailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ServerFailure
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$apiImplCopyWith<$Res> {
  factory _$$apiImplCopyWith(_$apiImpl value, $Res Function(_$apiImpl) then) =
      __$$apiImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DioException? error});
}

/// @nodoc
class __$$apiImplCopyWithImpl<$Res>
    extends _$ServerFailureCopyWithImpl<$Res, _$apiImpl>
    implements _$$apiImplCopyWith<$Res> {
  __$$apiImplCopyWithImpl(_$apiImpl _value, $Res Function(_$apiImpl) _then)
      : super(_value, _then);

  /// Create a copy of ServerFailure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_$apiImpl(
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as DioException?,
    ));
  }
}

/// @nodoc

class _$apiImpl extends _api {
  const _$apiImpl({this.error}) : super._();

  @override
  final DioException? error;

  @override
  String toString() {
    return 'ServerFailure.Api(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$apiImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  /// Create a copy of ServerFailure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$apiImplCopyWith<_$apiImpl> get copyWith =>
      __$$apiImplCopyWithImpl<_$apiImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DioException? error) Api,
    required TResult Function(String? error) Format,
  }) {
    return Api(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DioException? error)? Api,
    TResult? Function(String? error)? Format,
  }) {
    return Api?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DioException? error)? Api,
    TResult Function(String? error)? Format,
    required TResult orElse(),
  }) {
    if (Api != null) {
      return Api(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_api value) Api,
    required TResult Function(_format value) Format,
  }) {
    return Api(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_api value)? Api,
    TResult? Function(_format value)? Format,
  }) {
    return Api?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_api value)? Api,
    TResult Function(_format value)? Format,
    required TResult orElse(),
  }) {
    if (Api != null) {
      return Api(this);
    }
    return orElse();
  }
}

abstract class _api extends ServerFailure {
  const factory _api({final DioException? error}) = _$apiImpl;
  const _api._() : super._();

  @override
  DioException? get error;

  /// Create a copy of ServerFailure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$apiImplCopyWith<_$apiImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$formatImplCopyWith<$Res> {
  factory _$$formatImplCopyWith(
          _$formatImpl value, $Res Function(_$formatImpl) then) =
      __$$formatImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? error});
}

/// @nodoc
class __$$formatImplCopyWithImpl<$Res>
    extends _$ServerFailureCopyWithImpl<$Res, _$formatImpl>
    implements _$$formatImplCopyWith<$Res> {
  __$$formatImplCopyWithImpl(
      _$formatImpl _value, $Res Function(_$formatImpl) _then)
      : super(_value, _then);

  /// Create a copy of ServerFailure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_$formatImpl(
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$formatImpl extends _format {
  const _$formatImpl({this.error}) : super._();

  @override
  final String? error;

  @override
  String toString() {
    return 'ServerFailure.Format(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$formatImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  /// Create a copy of ServerFailure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$formatImplCopyWith<_$formatImpl> get copyWith =>
      __$$formatImplCopyWithImpl<_$formatImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DioException? error) Api,
    required TResult Function(String? error) Format,
  }) {
    return Format(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DioException? error)? Api,
    TResult? Function(String? error)? Format,
  }) {
    return Format?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DioException? error)? Api,
    TResult Function(String? error)? Format,
    required TResult orElse(),
  }) {
    if (Format != null) {
      return Format(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_api value) Api,
    required TResult Function(_format value) Format,
  }) {
    return Format(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_api value)? Api,
    TResult? Function(_format value)? Format,
  }) {
    return Format?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_api value)? Api,
    TResult Function(_format value)? Format,
    required TResult orElse(),
  }) {
    if (Format != null) {
      return Format(this);
    }
    return orElse();
  }
}

abstract class _format extends ServerFailure {
  const factory _format({final String? error}) = _$formatImpl;
  const _format._() : super._();

  @override
  String? get error;

  /// Create a copy of ServerFailure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$formatImplCopyWith<_$formatImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
