import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:movieplus/src/app/core/failures/failures.dart';
import 'package:movieplus/src/features/movies/domain/entities/movie.dart';
import 'package:movieplus/src/features/movies/domain/repository/movies_repository.dart';
import 'package:movieplus/src/features/movies/infrastructure/datasources/movie_data_source.dart';
import 'package:movieplus/src/features/movies/infrastructure/models/movie_model/movie_model.dart';

class MovieRepositoryImpl implements MoviesRepository {
  final MovieDataSource _remoteDataSource;

  MovieRepositoryImpl({
    required MovieDataSource remoteDataSource,
  }) : _remoteDataSource = remoteDataSource;
  @override
  Future<Either<ServerFailure, List<Movie>>> getNowMovies(
      {int page = 1}) async {
    try {
      final MovieModel response =
          await _remoteDataSource.getNowMovies(page: page);
      final List<Movie> movie =
          response.results.map((e) => e.toDomain()).toList();
      return Right(movie);
    } on DioException catch (e) {
      return Left(ServerFailure.Api(error: e.error as DioException));
    } on Exception catch (e) {
      return Left(ServerFailure.Format(error: e.toString()));
    }
  }
}
