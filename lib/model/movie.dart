// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'movie.freezed.dart';
part 'movie.g.dart';

@freezed
class Movie with _$Movie {
  const factory Movie({
    required int id,
    @JsonKey(name: 'poster_path') String? posterPath,
    required String title,
    @JsonKey(name: 'release_date') required String releaseDate,
    @JsonKey(name: 'vote_average') required double voteAverage,
  }) = _Movie;

  factory Movie.fromJson(Map<String, dynamic> json) =>
      _$MovieFromJson(json);

  const Movie._();

  String get formattedReleaseDate {
    final List<String> months = [
      'Gennaio', 'Febbraio', 'Marzo', 'Aprile', 'Maggio', 'Giugno', 'Luglio', 
      'Agosto', 'Settembre', 'Ottobre', 'Novembre', 'Dicembre'
    ];
    return '${releaseDate.substring(8, 10).replaceAll('0', '')} ${months[int.parse(releaseDate.substring(5, 7))-1]} ${releaseDate.substring(0, 4)}';
  }

  String get formattedVoteAverage => voteAverage.toStringAsFixed(1);

  String get poster => 
  posterPath != null? 'https://image.tmdb.org/t/p/w300$posterPath' :'assets/missed_poster.jpg';
}
