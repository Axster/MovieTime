import 'package:movie_time/pages/movie_detail_page/movie_cubit/movie_cubit.dart';
import 'package:movie_time/pages/movie_detail_page/movie_detail_page.dart';
import 'package:movie_time/pages/movies_page/movies_page.dart';
import 'package:movie_time/pages/movies_page/movies_cubit/movies_cubit.dart';
import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';


void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      routerConfig: GoRouter(
        routes: [
          GoRoute(
            path: '/',
            builder: (context, state) => BlocProvider(
              create: (context) => MoviesCubit()..getMovies(),
              child: const MoviesPage(),
            ),
            routes: [
              GoRoute(
                path: 'details/:movieId',
                builder: (context, state) {
                  final movieId = int.tryParse(
                    '${state.pathParameters['movieId']}',
                  );

                  if (movieId == null) {
                    return const Scaffold(
                      body: Center(
                        child: Text('MovieId non valido'),
                      ),
                    );
                  }

                  return BlocProvider(
                    create: (context) => MovieCubit()..getMovie(movieId),
                    child: const MovieDetailPage(),
                  );
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
