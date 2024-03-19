import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:url_launcher/url_launcher.dart';

import 'package:movie_time/common/widgets/movie_image.dart';
import 'package:movie_time/pages/movie_detail_page/movie_cubit/movie_cubit.dart';
import 'package:movie_time/pages/movie_detail_page/widgets/info_row.dart';

class MovieDetailPage extends StatelessWidget {
  const MovieDetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final state = context.watch<MovieCubit>().state;
    final movie = state.movie;

    if (state.isLoading) {
      return const Scaffold(
        body: Center(
          child: CircularProgressIndicator(color: Colors.orangeAccent),
        ),
      );
    }

    if (state.hasError) {
      return const Scaffold(
        body: Center(
          child: Text('Error in the request'),
        ),
      );
    }

    if (movie == null) {
      return const Scaffold(
        body: Center(
          child: Text('Movie not found'),
        ),
      );
    }

    Uri trailerUrl = Uri.parse('https://www.youtube.com/results?search_query=${Uri.encodeComponent('${movie.title.replaceAll(' ', '+')}+trailer+ita')}');

    return Scaffold(
      appBar: AppBar(
        title: Text(movie.title),
      ),
      body: ListView(
        children: [
          Stack(
            children: <Widget>[
              GestureDetector(
                child: MovieImage(
                  imageUrl: movie.backdrop,
                ), 
                onTap: () => launchUrl(trailerUrl),
              ),
              Positioned(
                bottom: 16, 
                right: 16, 
                child:GestureDetector(
                  onTap: () => launchUrl(trailerUrl),
                  child: Container(
                    padding: const EdgeInsets.all(14),
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.5), 
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Row(
                      children: [
                        Icon(
                          Icons.play_circle_outline,
                          color: Colors.white70,
                        ),
                        SizedBox(width: 8),
                        Text(
                          'Guarda il trailer',
                          style: TextStyle(
                            color: Colors.white70,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          InfoRow(
            label: 'Titolo',
            value: movie.title,
          ),
          const Divider(color: Colors.black38),
          if (movie.title != movie.originalTitle)
            InfoRow(
              label: 'Titolo Originale',
              value: movie.originalTitle,
            ),
          if (movie.title != movie.originalTitle)
            const Divider(color: Colors.black38),
          InfoRow(
            label: 'Data di uscita',
            value: movie.formattedReleaseDate,
          ),
          const Divider(color: Colors.black38),
          InfoRow(
            label: 'Genere',
            value: movie.genresList,
          ),
          const Divider(color: Colors.black38),
          InfoRow(
            label: 'Voto',
            value: movie.formattedVoteAverage,
          ),
          const Divider(color: Colors.black38),
          InfoRow(
            label: 'Numero di recensioni',
            value: movie.voteCount.toString(),
          ),
          const Divider(color: Colors.black38),
          InfoRow(
            label: 'Classificazione',
            value: movie.adult ? 'Adult' : 'For all',
          ),
          const Divider(color: Colors.black38),
          InfoRow(
            label: 'Trama',
            value: movie.overview,
          ),
          const SizedBox(height: 100)
        ],
      ),
    );
  }
}

