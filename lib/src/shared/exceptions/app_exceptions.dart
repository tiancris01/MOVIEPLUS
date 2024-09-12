import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_exceptions.freezed.dart';

@freezed
class AppExceptions with _$AppExceptions {
  const AppExceptions._();
  const factory AppExceptions({
    required String message,
    required int code,
    required String? identifier,
  }) = _AppExceptions;
}
