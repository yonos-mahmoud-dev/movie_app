import 'package:flutter/material.dart';
import 'package:movies_app/components/slider_opacity.dart';
import 'package:movies_app/providers/movie_provider.dart';
import 'package:movies_app/views/movei_details.dart';
import 'package:provider/provider.dart';

class MoviesGridView extends StatelessWidget {
  const MoviesGridView({super.key, this.isDetails = false});
  final bool isDetails;
  @override
  Widget build(BuildContext context) {
    final movieData = Provider.of<MovieProvider>(context);
    return SliverGrid.builder(
      itemCount: movieData.moviesList.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        // crossAxisSpacing: 5,
        mainAxisSpacing: 20,
        mainAxisExtent: 300,
      ),
      itemBuilder: (BuildContext context, int index) {
        final movie = movieData.moviesList[index];
        return Padding(
          padding: const EdgeInsets.only(left: 8, right: 8),
          child: GestureDetector(
            onTap: () {
              Navigator.push(
                (context),
                MaterialPageRoute(
                  builder: (context) => MoveiDetails(movie: movie),
                ),
              );
            },
            child: Container(
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(12),
                image: DecorationImage(
                  image: NetworkImage(movie.images[5]),
                  fit: BoxFit.cover,
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black,
                    offset: Offset(1, 1),
                    blurRadius: 3,
                  ),
                ],
              ),
              child: Stack(
                children: [
                  Positioned(child: SliderOpacity()),
                  Positioned(
                    top: 16,
                    left: 10,
                    child: CircleAvatar(
                      backgroundColor: Colors.transparent,

                      child: Text(
                        movie.imdbRating,
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 16,
                    right: 10,
                    child: Container(
                      alignment: Alignment.center,
                      width: 110,
                      height: 30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: const Color.fromRGBO(255, 110, 64, 0.2),
                        border: Border.all(color: Colors.white),
                      ),
                      child: Text(
                        movie.type,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 50,
                    left: 5,
                    child: SizedBox(
                      width: 150,
                      child: Text(
                        "${movie.title}(${movie.year})",
                        overflow: TextOverflow.clip,
                        maxLines: 2,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 10,
                    right: 10,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          alignment: Alignment.center,
                          width: 50,
                          height: 25,
                          decoration: BoxDecoration(
                            color: Colors.deepOrangeAccent,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Text(
                            movie.genre.split(",")[0].toString(),
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w400,
                              fontSize: 10,
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 8),
                          alignment: Alignment.center,
                          width: 50,
                          height: 25,
                          decoration: BoxDecoration(
                            color: Colors.deepOrangeAccent,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Text(
                            movie.genre.split(",")[1].toString(),
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w400,
                              fontSize: 10,
                            ),
                          ),
                        ),
                        Container(
                          alignment: Alignment.center,
                          width: 50,
                          height: 25,
                          decoration: BoxDecoration(
                            color: Colors.deepOrangeAccent,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Text(
                            movie.genre.split(",")[2].toString(),
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w400,
                              fontSize: 10,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
