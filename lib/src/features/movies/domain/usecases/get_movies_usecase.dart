import 'package:dartz/dartz.dart';
import 'package:movieplus/src/app/config/usecase/usecase.dart';
import 'package:movieplus/src/app/core/failures/failures.dart';
import 'package:movieplus/src/features/movies/domain/entities/movie.dart';
import 'package:movieplus/src/features/movies/domain/repository/movies_repository.dart';

class GetNowMoviesUsecase implements UseCase<List<Movie>, int> {
  final MoviesRepository _moviesRepository;

  GetNowMoviesUsecase({
    required MoviesRepository moviesRepository,
  }) : _moviesRepository = moviesRepository;

  Future<Either<ServerFailure, List<Movie>>> call(int page) async {
    return await _moviesRepository.getNowMovies(page: page);
  }
}

// class GetMoviesUsecase implements UseCase2<List<Movie>, int> {
//   final MoviesRepository _moviesRepository;

//   GetMoviesUsecase({
//     required MoviesRepository moviesRepository,
//   }) : _moviesRepository = moviesRepository;

//   Future<List<Movie>> call(int page) async {
//     return await _moviesRepository.getMovies(page: page);
//   }
// }
