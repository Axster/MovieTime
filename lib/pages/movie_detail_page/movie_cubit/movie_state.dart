import 'package:movie_time/model/movie_details.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'movie_state.freezed.dart';


@freezed
class MovieDetailsState with _$MovieDetailsState {
  const factory MovieDetailsState({
    MovieDetails? movie,
    @Default(false) bool isLoading,
    @Default(false) bool hasError,
  }) = _MovieDetailsState;

}
