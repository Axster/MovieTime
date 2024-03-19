import 'package:flutter/material.dart';
import 'package:movie_time/common/widgets/movie_image.dart';
import 'package:movie_time/model/movie.dart';
import 'package:go_router/go_router.dart';

class MovieItem extends StatelessWidget {
  final Movie movie;

  const MovieItem({
    Key? key,
    required this.movie,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {

    return Container(
      margin: const EdgeInsets.only(left: 8, right: 8),
      child: Card(
        color: Colors.black54,
        elevation: 1,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: InkWell(
          splashColor: Colors.orangeAccent,
          onTap: () => context.go('/details/${movie.id}'),
          child: Row(
            children: [
              MovieImage(
                imageUrl: movie.poster,
                size: 100,
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        movie.title,
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        movie.formattedReleaseDate,
                        style: const TextStyle(
                          fontSize: 12,
                          color: Colors.white30,
                        ),
                      ),
                      const SizedBox(height: 2),
                      Row(
                        children: [
                          const Icon(
                            Icons.star_rate_outlined,
                            color: Colors.orangeAccent,
                            size:16,
                          ),
                          const SizedBox(width: 3),
                          Text(
                            movie.formattedVoteAverage,
                            style: const TextStyle(
                              fontSize: 12,
                              color: Colors.white54,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
