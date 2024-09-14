import 'package:dartz/dartz.dart';
import 'package:movieplus/src/app/core/failures/failures.dart';
import 'package:movieplus/src/features/movies/domain/entities/movie.dart';

abstract interface class MoviesRepository {
  Future<Either<ServerFailure, List<Movie>>> getNowMovies({int page = 0});
}
