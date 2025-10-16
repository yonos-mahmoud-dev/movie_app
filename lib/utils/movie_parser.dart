import 'dart:convert';

import 'package:movies_app/models/movie_model.dart';

class MovieParser {
  static List<MovieModel> parseMovies(String jsonList) {
    final List<dynamic> moviesJson = json.decode(jsonList);
    return moviesJson
        .map((json) => MovieModel.fromJson(json as Map<String, dynamic>))
        .toList();
  }
}
