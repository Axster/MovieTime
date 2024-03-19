import 'package:movie_time/pages/movies_page/movies_cubit/movies_cubit.dart';
import 'package:movie_time/pages/movies_page/widgets/movie_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MoviesList extends StatelessWidget {
  const MoviesList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final state = context.watch<MoviesCubit>().state;
    final movies = state.sortedMovies;

    if (state.isLoading) {
      return const Center(
        child: CircularProgressIndicator(color: Color.fromRGBO(227, 134, 4, 1)),//rotellina di caricamento
      );
    }

    if (state.hasError) {
      return const Center(
        child: Text('Connessione assente'),
      );
    }

    if (movies.isEmpty) {
      return const Center(
        child: Text('Nessun film trovato'),
      );
    }

    return ListView.separated(
      itemCount: movies.length,
      itemBuilder: (context, index) => MovieItem(
        movie: movies[index],
      ),
      separatorBuilder: (context, index) =>  const SizedBox(),
      padding: const EdgeInsets.only(bottom: 100),
    );
  }
}
