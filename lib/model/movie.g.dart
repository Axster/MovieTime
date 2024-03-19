// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MovieImpl _$$MovieImplFromJson(Map<String, dynamic> json) => _$MovieImpl(
      id: json['id'] as int,
      posterPath: json['poster_path'] as String?,
      title: json['title'] as String,
      releaseDate: json['release_date'] as String,
      voteAverage: (json['vote_average'] as num).toDouble(),
    );

Map<String, dynamic> _$$MovieImplToJson(_$MovieImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'poster_path': instance.posterPath,
      'title': instance.title,
      'release_date': instance.releaseDate,
      'vote_average': instance.voteAverage,
    };
