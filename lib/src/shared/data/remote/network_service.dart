import 'package:dartz/dartz.dart';
import 'package:movieplus/src/shared/data/models/response.dart';
import 'package:movieplus/src/shared/exceptions/app_exceptions.dart';

abstract class NetworkService {
  String get baseUrl;

  Map<String, Object> get headers;

  void updateHeader(Map<String, dynamic> data);

  Future<Either<AppExceptions, AppResponse>> get(
    String endpoint, {
    Map<String, dynamic>? queryParameters,
  });

  Future<Either<AppExceptions, AppResponse>> post(
    String endpoint, {
    Map<String, dynamic>? data,
  });
}
