import 'package:flutter/foundation.dart';
import 'package:flutter_moviesapp_5/model/movie_book_model.dart';
import 'package:flutter_moviesapp_5/service/movie_service.dart';

class  MovieProvider  extends ChangeNotifier{
  Movies? movie;
  Future<void> getmovieprovider()async{
    movie= await MovieService.getmovie();
    notifyListeners();
  }
}