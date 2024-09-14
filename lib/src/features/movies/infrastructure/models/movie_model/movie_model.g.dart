// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MovieModelImpl _$$MovieModelImplFromJson(Map<String, dynamic> json) =>
    _$MovieModelImpl(
      dates: json['dates'] == null
          ? null
          : Dates.fromJson(json['dates'] as Map<String, dynamic>),
      page: (json['page'] as num?)?.toInt(),
      results: (json['results'] as List<dynamic>)
          .map((e) => Results.fromJson(e as Map<String, dynamic>))
          .toList(),
      total_pages: (json['total_pages'] as num?)?.toInt(),
      total_results: (json['total_results'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$MovieModelImplToJson(_$MovieModelImpl instance) =>
    <String, dynamic>{
      'dates': instance.dates,
      'page': instance.page,
      'results': instance.results,
      'total_pages': instance.total_pages,
      'total_results': instance.total_results,
    };

_$DatesImpl _$$DatesImplFromJson(Map<String, dynamic> json) => _$DatesImpl(
      maximum: json['maximum'] == null
          ? null
          : DateTime.parse(json['maximum'] as String),
      minimum: json['minimum'] == null
          ? null
          : DateTime.parse(json['minimum'] as String),
    );

Map<String, dynamic> _$$DatesImplToJson(_$DatesImpl instance) =>
    <String, dynamic>{
      'maximum': instance.maximum?.toIso8601String(),
      'minimum': instance.minimum?.toIso8601String(),
    };

_$ResultsImpl _$$ResultsImplFromJson(Map<String, dynamic> json) =>
    _$ResultsImpl(
      adult: json['adult'] as bool,
      backdrop_path: _backdrop_path(json['backdrop_path']),
      genre_ids: (json['genre_ids'] as List<dynamic>)
          .map((e) => (e as num).toInt())
          .toList(),
      id: (json['id'] as num).toInt(),
      original_language: json['original_language'] as String,
      original_title: json['original_title'] as String,
      overview: json['overview'] as String,
      popularity: (json['popularity'] as num).toDouble(),
      poster_path: json['poster_path'] as String,
      release_date: DateTime.parse(json['release_date'] as String),
      title: json['title'] as String,
      video: json['video'] as bool,
      vote_average: (json['vote_average'] as num).toDouble(),
      vote_count: (json['vote_count'] as num).toInt(),
    );

Map<String, dynamic> _$$ResultsImplToJson(_$ResultsImpl instance) =>
    <String, dynamic>{
      'adult': instance.adult,
      'backdrop_path': instance.backdrop_path,
      'genre_ids': instance.genre_ids,
      'id': instance.id,
      'original_language': instance.original_language,
      'original_title': instance.original_title,
      'overview': instance.overview,
      'popularity': instance.popularity,
      'poster_path': instance.poster_path,
      'release_date': instance.release_date.toIso8601String(),
      'title': instance.title,
      'video': instance.video,
      'vote_average': instance.vote_average,
      'vote_count': instance.vote_count,
    };
