// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AppResponse {
  dynamic get data => throw _privateConstructorUsedError;
  int get statusCode => throw _privateConstructorUsedError;
  String? get statusMessage => throw _privateConstructorUsedError;

  /// Create a copy of AppResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AppResponseCopyWith<AppResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppResponseCopyWith<$Res> {
  factory $AppResponseCopyWith(
          AppResponse value, $Res Function(AppResponse) then) =
      _$AppResponseCopyWithImpl<$Res, AppResponse>;
  @useResult
  $Res call({dynamic data, int statusCode, String? statusMessage});
}

/// @nodoc
class _$AppResponseCopyWithImpl<$Res, $Val extends AppResponse>
    implements $AppResponseCopyWith<$Res> {
  _$AppResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AppResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? statusCode = null,
    Object? statusMessage = freezed,
  }) {
    return _then(_value.copyWith(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as dynamic,
      statusCode: null == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int,
      statusMessage: freezed == statusMessage
          ? _value.statusMessage
          : statusMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AppResponseImplCopyWith<$Res>
    implements $AppResponseCopyWith<$Res> {
  factory _$$AppResponseImplCopyWith(
          _$AppResponseImpl value, $Res Function(_$AppResponseImpl) then) =
      __$$AppResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({dynamic data, int statusCode, String? statusMessage});
}

/// @nodoc
class __$$AppResponseImplCopyWithImpl<$Res>
    extends _$AppResponseCopyWithImpl<$Res, _$AppResponseImpl>
    implements _$$AppResponseImplCopyWith<$Res> {
  __$$AppResponseImplCopyWithImpl(
      _$AppResponseImpl _value, $Res Function(_$AppResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? statusCode = null,
    Object? statusMessage = freezed,
  }) {
    return _then(_$AppResponseImpl(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as dynamic,
      statusCode: null == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int,
      statusMessage: freezed == statusMessage
          ? _value.statusMessage
          : statusMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$AppResponseImpl extends _AppResponse {
  const _$AppResponseImpl(
      {required this.data,
      required this.statusCode,
      required this.statusMessage})
      : super._();

  @override
  final dynamic data;
  @override
  final int statusCode;
  @override
  final String? statusMessage;

  @override
  String toString() {
    return 'AppResponse(data: $data, statusCode: $statusCode, statusMessage: $statusMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppResponseImpl &&
            const DeepCollectionEquality().equals(other.data, data) &&
            (identical(other.statusCode, statusCode) ||
                other.statusCode == statusCode) &&
            (identical(other.statusMessage, statusMessage) ||
                other.statusMessage == statusMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(data), statusCode, statusMessage);

  /// Create a copy of AppResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AppResponseImplCopyWith<_$AppResponseImpl> get copyWith =>
      __$$AppResponseImplCopyWithImpl<_$AppResponseImpl>(this, _$identity);
}

abstract class _AppResponse extends AppResponse {
  const factory _AppResponse(
      {required final dynamic data,
      required final int statusCode,
      required final String? statusMessage}) = _$AppResponseImpl;
  const _AppResponse._() : super._();

  @override
  dynamic get data;
  @override
  int get statusCode;
  @override
  String? get statusMessage;

  /// Create a copy of AppResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AppResponseImplCopyWith<_$AppResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
