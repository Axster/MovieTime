import 'package:movie_time/pages/movies_page/movies_cubit/movies_cubit.dart';
import 'package:movie_time/pages/movies_page/movies_cubit/movies_state.dart';
import 'package:movie_time/pages/movies_page/widgets/movie_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MoviesPage extends StatelessWidget {
  const MoviesPage({Key? key}) : super(key: key);

  static const TextStyle titleLogo = TextStyle(
  fontFamily: 'Title_logo', 
  fontSize: 50, 
  color: Color.fromRGBO(227, 134, 4, 1),
  ) ;

  @override
  Widget build(BuildContext context) {
    final cubit = BlocProvider.of<MoviesCubit>(context);
    return Scaffold(
      appBar: AppBar(
         title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/logo.png', height: 30,),
            const SizedBox(width: 8),
            const Text('MovieTime', style: titleLogo,),
          ],
        ),
        centerTitle: true,
        actions: [
          BlocBuilder<MoviesCubit, MoviesState>(
            builder: (context, state) {
              return IconButton(
                onPressed: () => context.read<MoviesCubit>().toggleOrder(),
                icon: Transform.rotate(
                  angle: state.isAscending ? 0 : 3.14, //al click ruoto di 180° l'icona
                  child: const Icon(Icons.sort),
                ),
              );
            },
          ),
        ],
      ),
      body: const MoviesList(),
       floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          //bottone avanti
          FloatingActionButton(
            onPressed: cubit.previousPage, 
            backgroundColor: const Color.fromRGBO(0, 0, 0, 0.2),
            foregroundColor: Colors.white70,
            child: const Icon(Icons.arrow_back),
          ),
          const SizedBox(width: 16),
          //bottone indietro
          FloatingActionButton(
            onPressed: cubit.nextPage, 
            backgroundColor: const Color.fromRGBO(0, 0, 0, 0.2),
            foregroundColor: Colors.white70,
            child: const Icon(Icons.arrow_forward),
          ),
        ],
      ),
    );



  }
}
