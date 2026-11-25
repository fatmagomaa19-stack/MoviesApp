import 'package:dio/dio.dart';
import 'package:flutter_moviesapp_5/model/movie_book_model.dart';

class MovieService {
  static Dio dio = Dio();
  static Future<Movies> getmovie() async {
    try {
      Response response = await dio.get(
        "https://apimovie.runasp.net/api/Movies",
      );
      return Movies.fromJson(response.data);
    } on DioException catch (dioerror) {
      throw Exception(dioerror.message);
    } catch (othererror) {
      throw Exception(othererror.toString());
    }
  }
}
