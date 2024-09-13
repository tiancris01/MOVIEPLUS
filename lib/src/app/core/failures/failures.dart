import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'failures.freezed.dart';

@freezed
class ServerFailure with _$ServerFailure {
  const ServerFailure._();
  const factory ServerFailure.Api({DioException? error}) = _api;
  const factory ServerFailure.Format({String? error}) = _format;
}
