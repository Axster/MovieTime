// ignore_for_file: avoid_print

import 'dart:convert';
import 'package:movie_time/model/movie_details.dart';
import 'package:movie_time/pages/movie_detail_page/movie_cubit/movie_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart' as http;
import 'package:movie_time/api_key.dart';

class MovieCubit extends Cubit<MovieDetailsState> {
  MovieCubit() : super(const MovieDetailsState());

  void getMovie(int movieId) async {
    emit(state.copyWith(
      isLoading: true,
      hasError: false,
    ));
    try {
      final response = await http.get(Uri.parse(
        'https://api.themoviedb.org/3/movie/$movieId?api_key=$apiKey&language=it-IT',
      ));

      if (response.statusCode == 200) {
        final movie = MovieDetails.fromJson(jsonDecode(response.body));
        emit(state.copyWith(
          isLoading: false,
          movie : movie,
        ));
      } else {
        throw Exception('Failed to load movie');
      }
    } catch (e, s) {
      print(e);
      print(s);
      emit(state.copyWith(
        isLoading: false,
        hasError: true,
      ));

    }
  }
}
