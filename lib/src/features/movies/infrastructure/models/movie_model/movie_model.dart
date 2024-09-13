import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:movieplus/src/features/movies/domain/entities/movie.dart';

part 'movie_model.freezed.dart';
part 'movie_model.g.dart';

@freezed
class MovieModel with _$MovieModel {
  const MovieModel._();
  const factory MovieModel({
    Dates? dates,
    int? page,
    required List<Results> results,
    int? total_pages,
    int? total_results,
  }) = _MovieModel;

  factory MovieModel.fromJson(Map<String, dynamic> json) =>
      _$MovieModelFromJson(json);
}

@freezed
class Dates with _$Dates {
  const Dates._();
  const factory Dates({
    DateTime? maximum,
    DateTime? minimum,
  }) = _Dates;

  factory Dates.fromJson(Map<String, dynamic> json) => _$DatesFromJson(json);
}

@freezed
class Results with _$Results {
  const Results._();
  const factory Results({
    required bool adult,
    required String backdrop_path,
    required List<int> genre_ids,
    required int id,
    required String original_language,
    required String original_title,
    required String overview,
    required double popularity,
    required String poster_path,
    required DateTime release_date,
    required String title,
    required bool video,
    required double vote_average,
    required int vote_count,
  }) = _Results;

  factory Results.fromJson(Map<String, dynamic> json) =>
      _$ResultsFromJson(json);

  factory Results.fromDomain(Movie movieModel) {
    return Results(
      adult: movieModel.adult,
      backdrop_path: movieModel.backdropPath,
      genre_ids: movieModel.genreIds.map((e) => int.parse(e)).toList(),
      id: movieModel.id,
      original_language: movieModel.originalLanguage,
      original_title: movieModel.originalTitle,
      overview: movieModel.overview,
      popularity: movieModel.popularity,
      poster_path: movieModel.posterPath,
      release_date: movieModel.releaseDate,
      title: movieModel.title,
      video: movieModel.video,
      vote_average: movieModel.voteAverage,
      vote_count: movieModel.voteCount,
    );
  }

  Movie toDomain() {
    return Movie(
      adult: adult,
      backdropPath: backdrop_path,
      genreIds: genre_ids.map((e) => e.toString()).toList(),
      id: id,
      originalLanguage: original_language,
      originalTitle: original_title,
      overview: overview,
      popularity: popularity,
      posterPath: poster_path,
      releaseDate: release_date,
      title: title,
      video: video,
      voteAverage: vote_average,
      voteCount: vote_count,
    );
  }
}
