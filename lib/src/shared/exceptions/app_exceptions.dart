import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_exceptions.freezed.dart';

@freezed
class AppExceptions with _$AppExceptions {
  const AppExceptions._();
  const factory AppExceptions({
    required int statusCode,
    required String message,
    required String identifier,
  }) = _AppExceptions;
}
