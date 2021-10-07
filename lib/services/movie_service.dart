import 'package:dio/dio.dart';
import 'package:nonton/models/movie_model.dart';

class MovieService {
  final baseUrl = 'https://api.themoviedb.org';
  final apikey = 'ab3a67a225bfc7da852014189004fcb5';

  Future<List<MovieModel>> getPlayingNowMovies() async {
    try {
      final res =
          await Dio().get('$baseUrl/3/movie/now_playing?api_key=$apikey');
      final List data = res.data['results'] as List;
      print('data: $data');
      final movies = data.map((e) => MovieModel.fromJson(e)).toList();
      print(movies);
      return movies;
    } catch (e) {
      // ignore: avoid_print
      print(e);
      throw e;
    }
  }

  Future<List<MovieModel>> getUpcComingMovies() async {
    try {
      final res = await Dio().get('$baseUrl/3/movie/upcoming?api_key=$apikey');
      final List data = res.data['results'] as List;
      print('data: $data');
      final movies = data.map((e) => MovieModel.fromJson(e)).toList();
      print(movies);
      return movies;
    } catch (e) {
      // ignore: avoid_print
      print(e);
      throw e;
    }
  }
}
