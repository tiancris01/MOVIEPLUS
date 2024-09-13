import 'package:dartz/dartz.dart';
import 'package:movieplus/src/app/core/failures/failures.dart';

abstract interface class UseCase<Type, Params> {
  Future<Either<ServerFailure, Type>> call(Params params);
}
