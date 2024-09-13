import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:movieplus/src/app/config/base_config/base_app_config.dart';
import 'package:movieplus/src/app/core/failures/failures.dart';
import 'package:movieplus/src/app/environment/environment.dart';
import 'package:movieplus/src/features/movies/domain/entities/movie.dart';
import 'package:movieplus/src/features/movies/domain/repository/movies_repository.dart';
import 'package:movieplus/src/features/movies/domain/usecases/get_movies_usecase.dart';
import 'package:movieplus/src/features/movies/infrastructure/datasources/movie_data_source.dart';
import 'package:movieplus/src/features/movies/infrastructure/datasources/movie_db_data_source.dart';
import 'package:movieplus/src/features/movies/infrastructure/repository/movie_repository_impl.dart';
import 'package:movieplus/src/shared/globals.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'providers.freezed.dart';
part 'providers.g.dart';

@riverpod
BaseAppConfig config(ConfigRef ref) {
  return Environment.appConfig;
}

@riverpod
Dio dio(DioRef ref) {
  final _config = ref.read(configProvider);
  final _dio = Dio(
    BaseOptions(
      baseUrl: baseUrl,
      queryParameters: {'api_key': _config.movieDbApiKey, 'lenguage': 'es-MX'},
      headers: {'accept': 'application/json'},
    ),
  );
  return _dio;
}

@riverpod
MovieDataSource movieDataSource(MovieDataSourceRef ref) {
  final dio = ref.read(dioProvider);
  return MovieDbDataSource(dio: dio);
}

@riverpod
MoviesRepository MovieRepository(MovieRepositoryRef ref) {
  return MovieRepositoryImpl(
      remoteDataSource: ref.read(movieDataSourceProvider));
}

//Here we are using the freezed package to create a union type
//for the state of the notifier.
//This is reader a NotifierProvider since we are using a custom state
//for the notifier

@riverpod
class NowPlayingNotifier extends _$NowPlayingNotifier {
  int _currentPage = 0;
  @override
  MoviesState build() {
    return MoviesState.Loading();
  }

  Future<void> fetchMovies() async {
    _currentPage++;
    final GetNowMoviesUsecase _getNowMoviesUsecase = GetNowMoviesUsecase(
      moviesRepository: ref.read(movieRepositoryProvider),
    );
    final response = await _getNowMoviesUsecase.call(_currentPage);
    state = response.fold(
      (failure) => MoviesState.Error(failure),
      (movies) => MoviesState.Loaded(movies),
    );
  }
}

@freezed
class MoviesState with _$MoviesState {
  const MoviesState._();
  const factory MoviesState.Loading() = _Loading;
  const factory MoviesState.Loaded(List<Movie> movies) = _Loaded;
  const factory MoviesState.Error(ServerFailure error) = _Error;
}

//Here we are we are using a AsyncNotifierProvider to create
//the provider for the notifier. The state therefore
//is an AsyncValue<List<Movie>>.

@riverpod
class MoviesNotifier extends _$MoviesNotifier {
  int _currentPage = 0;

  @override
  FutureOr<List<Movie>> build() {
    return [];
  }

  // Future<List<Movie>> fetchMovies() async {
  //   _currentPage++;
  //   final GetMoviesUsecase _getMoviesUsecase = GetMoviesUsecase(
  //     moviesRepository: ref.read(movieRepositoryProvider),
  //   );
  //   final response = await _getMoviesUsecase.call(_currentPage);
  //   return response;
  // }

  // Future<void> fetchMoreMovies() async {
  //   state = AsyncValue.loading();
  //   _currentPage++;
  //   state = await AsyncValue.guard(
  //     () async {
  //       final GetMoviesUsecase _getMoviesUsecase = GetMoviesUsecase(
  //         moviesRepository: ref.read(movieRepositoryProvider),
  //       );
  //       final response = await _getMoviesUsecase.call(_currentPage);
  //       return response;
  //     },
  //   );
  // }
}
