import 'package:dartz/dartz.dart';
import 'package:movieplus/src/features/movies/domain/entities/movie.dart';
import 'package:movieplus/src/shared/exceptions/app_exceptions.dart';

abstract interface class MoviesRepository {
  Future<Either<AppExceptions, List<Movie>>> getNowMovies({int page = 0});
  Future<List<Movie>> getMovies({int page = 0});
}
