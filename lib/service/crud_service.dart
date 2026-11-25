import 'package:dio/dio.dart';

class CrudService {
  static Dio dio = Dio();
  static Future<void> addBooking({ required int movieId,required int seatId,required String customName}) async {
    try {
    await dio.post("https://apimovie.runasp.net/api/Bookings",data:{
      
    "CustomerName": customName,
    "movieId":movieId,
     "seatId": seatId
    });
    } on DioException catch (dioerror) {
      throw Exception(dioerror.message);
    } catch (othererror) {
      throw Exception(othererror.toString());
    }
  }
 
  static Future<void> putBooking({ required int bookingId,required String customName}) async {
    try {
    await dio.put("https://apimovie.runasp.net/api/Bookings/$bookingId",data:{
      
    "CustomerName": customName,
    "bookingId":bookingId
    });
    } on DioException catch (dioerror) {
      throw Exception(dioerror.message);
    } catch (othererror) {
      throw Exception(othererror.toString());
    }
  }
    static Future<void> deleteBooking({ required int bookingId,}) async {
    try {
    await dio.delete("https://apimovie.runasp.net/api/Bookings/$bookingId",data:{

    "bookinId":bookingId
    });
    } on DioException catch (dioerror) {
      throw Exception(dioerror.message);
    } catch (othererror) {
      throw Exception(othererror.toString());
    }
  }
}