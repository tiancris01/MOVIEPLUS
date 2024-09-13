import 'package:movieplus/src/features/movies/infrastructure/models/movie_model/movie_model.dart';

abstract interface class MovieDataSource {
  Future<MovieModel> getNowMovies({int page = 0});
}
