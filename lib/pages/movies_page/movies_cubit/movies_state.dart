import 'package:movie_time/model/movie.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'movies_state.freezed.dart';

@freezed
class MoviesState with _$MoviesState {
  const MoviesState._();

  const factory MoviesState({
    @Default([]) List<Movie> movies,
    @Default(false) bool isAscending,
    @Default(false) bool isLoading,
    @Default(false) bool hasError,
  }) = _MoviesState;

  List<Movie> get sortedMovies {
    final sortMovies = List<Movie>.from(movies);
    sortMovies.sort((b, a) => isAscending
        ? b.voteAverage.compareTo(a.voteAverage)
        : a.voteAverage.compareTo(b.voteAverage));
    return sortMovies;
  }
}
