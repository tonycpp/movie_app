import 'dart:convert';
import 'package:movie_app/src/models/movie_model.dart';
import 'package:http/http.dart' as http;

class MoviesProviders {
  String _apikey = 'd5adbd9941e791f48f47a86f23e53ac9';
  String _url = 'api.themoviedb.org';
  String _lenguage = 'en-EN';

  Future<List<Movie>> _processRespo(Uri url) async {
    final resp = await http.get(url);
    final decodedData = json.decode(resp.body);

    final movies = new Movies.fromJsonList(decodedData['results']);

    return movies.items;
  }

  Future<List<Movie>> getInCinema() async {
    final url = Uri.https(_url, '3/movie/now_playing',
        {'api_key': _apikey, 'lenguage': _lenguage});

    return await _processRespo(url);
  }

  Future<List<Movie>> getPopular() async {
    final url = Uri.http(
        _url, '3/movie/popular', {'api_key': _apikey, 'lenguage': _lenguage});

    return await _processRespo(url);
  }
}
