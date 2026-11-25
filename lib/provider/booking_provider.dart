import 'package:flutter/material.dart';
import 'package:flutter_moviesapp_5/model/movie_book_model.dart';
import 'package:flutter_moviesapp_5/service/crud_service.dart';
import 'package:flutter_moviesapp_5/service/movie_service.dart';

class BookingProvider  extends ChangeNotifier {
  Movies? movie;
  Future<void>addbookingprovider({ required int movieId,required int seatId,required String customName}) async{
     await CrudService.addBooking(movieId: movieId, seatId: seatId, customName: customName);
    notifyListeners();
  }
    Future<void>updatebookingprovider({ required int bookingId,required String customName}) async{
     await CrudService.putBooking(bookingId: bookingId, customName: customName);
  notifyListeners();
  }
  Future<void>deletebookingprovider({ required int bookingId,}) async{
     await CrudService.deleteBooking(bookingId: bookingId);
      notifyListeners();
  }
}