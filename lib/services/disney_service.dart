import 'package:dio/dio.dart';
import 'package:nonton/models/disney_model.dart';

class DisneyService {
  final baseUrl = 'https://api.themoviedb.org';
  final apikey = 'ab3a67a225bfc7da852014189004fcb5';
  final dio = Dio();

  Future<List<DisneyModel>> getUpComingMovies() async {
    try {
      final res = await Dio().get('$baseUrl/3/movie/upcoming?api_key=$apikey');
      final List data = res.data['results'] as List;
      print('data: $data');
      final disney = data.map((e) => DisneyModel.fromJson(e)).toList();
      print(disney);
      return disney;
    } catch (e) {
      print(e);
      throw e;
    }
  }
}
