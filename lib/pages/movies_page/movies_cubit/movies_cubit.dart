// ignore_for_file: avoid_print

import 'dart:convert';

import 'package:movie_time/model/movie.dart';
import 'package:movie_time/pages/movies_page/movies_cubit/movies_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart' as http;
import 'package:movie_time/api_key.dart';

class MoviesCubit extends Cubit<MoviesState> {
  MoviesCubit() : super(const MoviesState());

  int currentPage = 1;
  late int totalPages;

  void nextPage() {
    if (currentPage < totalPages) {
      currentPage++;
      getMovies();
    }
    
  }

  void previousPage() {
    if (currentPage > 1) {
      currentPage--;
      getMovies();
    }
  }


  void getMovies() async {
    emit(state.copyWith(
      isLoading: true,
      hasError: false,
      movies: [],
      isAscending: false,
    ));
    //String twoMonthsAgo = DateTime.now().subtract(const Duration(days: 60)).toString().substring(0, 10);
    try {
      final response = await http.get(Uri.parse(
        'https://api.themoviedb.org/3/movie/now_playing?api_key=$apiKey&language=it-IT&region=IT&page=$currentPage',
      ));

      if (response.statusCode == 200) {
        final jsonData = jsonDecode(response.body);
        final List<dynamic> results = jsonData['results'];
        totalPages = jsonData['total_pages'];
        final movies = results.map((e) => Movie.fromJson(e)).toList();


        emit(state.copyWith(
          isLoading: false,
          movies: movies,
          hasError: false,
          isAscending: false,
        ));
      } else {
        throw Exception('Failed to load movies');
      }
    } catch (e, s) {
      emit(state.copyWith(
        isLoading: false,
        hasError: true,
        movies: [],
        isAscending: false,
      ));
      print(e);
      print(s);
    }
  }

  void toggleOrder() {
    emit(state.copyWith(isAscending: !state.isAscending));
  }
}
