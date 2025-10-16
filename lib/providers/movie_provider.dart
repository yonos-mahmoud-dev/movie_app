import 'package:flutter/material.dart';
import 'package:movies_app/models/movie_model.dart';
import 'package:movies_app/utils/movie_parser.dart';

class MovieProvider with ChangeNotifier {
  List<MovieModel> _moviesList = [];
  List<MovieModel> get moviesList => _moviesList;
  Future<void> addMovies(BuildContext context) async {
    try {
      final jsonString = await DefaultAssetBundle.of(
        context,
      ).loadString('assets/data/films.json');
      final movie = MovieParser.parseMovies(jsonString);
      _moviesList = movie;
    } catch (e) {
      print("Erro cant't load movies : $e");
    }
  }
}
