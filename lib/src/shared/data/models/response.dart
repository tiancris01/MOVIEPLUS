import 'package:freezed_annotation/freezed_annotation.dart';

part 'response.freezed.dart';

@freezed
class AppResponse with _$AppResponse {
  const AppResponse._();
  const factory AppResponse({
    required dynamic data,
    required int statusCode,
    required String? statusMessage,
  }) = _AppResponse;
}
