import 'package:dio/dio.dart';
import 'package:movieplus/src/features/movies/infrastructure/datasources/movie_data_source.dart';
import 'package:movieplus/src/features/movies/infrastructure/models/movie_model/movie_model.dart';

class MovieDbDataSource implements MovieDataSource {
  final Dio _dio;

  MovieDbDataSource({
    required Dio dio,
  }) : _dio = dio;

  @override
  Future<MovieModel> getNowMovies({int page = 0}) async {
    try {
      final response = await _dio.get('/movie/now_playing', queryParameters: {
        'page': page,
      });

      final results = MovieModel.fromJson(response.data);
      return results;
    } on DioException {
      rethrow;
    } on Exception {
      rethrow;
    }
  }
}
