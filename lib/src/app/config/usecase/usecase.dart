import 'package:dartz/dartz.dart';
import 'package:movieplus/src/shared/exceptions/app_exceptions.dart';

abstract interface class UseCase<Type, Params> {
  Future<Either<AppExceptions, Type>> call(Params params);
}
