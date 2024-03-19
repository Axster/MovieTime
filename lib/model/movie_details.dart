// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';

part 'movie_details.freezed.dart';
part 'movie_details.g.dart';

@JsonSerializable()
class Genre {
  final int id;
  final String name;

  Genre({
    required this.id,
    required this.name,
  });

  factory Genre.fromJson(Map<String, dynamic> json) => _$GenreFromJson(json);

  Map<String, dynamic> toJson() => _$GenreToJson(this);
}

@freezed
class MovieDetails with _$MovieDetails {
  const factory MovieDetails({
    required bool adult,
    @JsonKey(name: 'backdrop_path') String? backdropPath,
    required int id,
    @JsonKey(name: 'original_language') required String originalLanguage,
    @JsonKey(name: 'original_title') required String originalTitle,
    required String overview,
    @JsonKey(name: 'poster_path') String? posterPath,
    @JsonKey(name: 'release_date') required String releaseDate,
    required String title,
    @JsonKey(name: 'vote_average') required double voteAverage,
    @JsonKey(name: 'vote_count') required int voteCount,
    required List<Genre> genres,
  }) = _MovieDetails;

  factory MovieDetails.fromJson(Map<String, dynamic> json) => _$MovieDetailsFromJson(json);

  const MovieDetails._();

  String get formattedReleaseDate {
    final List<String> months = [
      'Gennaio', 'Febbraio', 'Marzo', 'Aprile', 'Maggio', 'Giugno', 'Luglio',
      'Agosto', 'Settembre', 'Ottobre', 'Novembre', 'Dicembre'
    ];

    return '${releaseDate.substring(8, 10).replaceAll('0', '')} ${months[int.parse(releaseDate.substring(5, 7))-1]} ${releaseDate.substring(0, 4)}';
  }

  String get formattedVoteAverage => voteAverage.toStringAsFixed(1);

  String get poster => posterPath != null ? 'https://image.tmdb.org/t/p/w300$posterPath' : 'assets/missed_poster.jpg';
  String get backdrop => backdropPath != null ? 'https://image.tmdb.org/t/p/w780$backdropPath' : 'assets/missed_backdrop.jpg';
  String get genresList => genres.map((genre) => genre.name).join(', ');
}
