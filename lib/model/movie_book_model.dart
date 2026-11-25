class MovieBookModel {
  final int id;
  final String name;
  final String Poster;
  final String showTime;
  final String showDate;
  final List<Seats> seats;

  new({
    required this.id,
    required this.name,
    required this.Poster,
    required this.showTime,
    required this.showDate,
    required this.seats,
  });
}

// class Movies{
//     final List<MovieBookModel>movies;
//     Movies({required this.movies});
//     factory Movies.fromJson(Map json){
//         final templist= json["data"].map<MovieBookModel>(
//             (movie){
//                 return MovieBookModel(id: movie["id"], name:  movie["name"], Poster:  movie["poster"], showTime:  movie["showTime"], showDate:  movie["showDate"], seats:  movie["seats"]);
//             }
//         ).toList();
//         return Movies(movies: templist);
//     }
// }
class Seats {
  final int seatId;
  final int? bookingId;
  final String seatNumber;
  final String status;
  final String? customerName;

  new({
    required this.seatId,
    this.bookingId,
    required this.seatNumber,
    required this.status,
    this.customerName,
  });
}

class Movies {
  final List<MovieBookModel> movies;
  Movies({required this.movies});
  factory Movies.fromJson(Map json) {
    final templist = json["data"].map<MovieBookModel>((movie) {
      return MovieBookModel(
        id: movie["id"],
        name: movie["name"],
        Poster: movie["poster"],
        showTime: movie["showTime"],
        showDate: movie["showDate"],
        seats: movie["seats"].map<Seats>((seat) {
          return Seats(
            seatId: seat["seatId"],
            bookingId: seat["bookingId"],
            seatNumber: seat["seatNumber"],
            status: seat["status"],
            customerName: seat["customerName"],
          );
        }).toList(),
      );
    }).toList();
    return Movies(movies: templist);
  }
}
