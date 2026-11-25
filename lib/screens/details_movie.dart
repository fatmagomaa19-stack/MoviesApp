import 'package:flutter/material.dart';
import 'package:flutter_moviesapp_5/model/movie_book_model.dart';
import 'package:flutter_moviesapp_5/provider/booking_provider.dart';
import 'package:flutter_moviesapp_5/widgets/booking_card.dart';
import 'package:flutter_moviesapp_5/widgets/movie_item.dart';
import 'package:provider/provider.dart';

class DetailsMovie extends StatelessWidget {
  MovieBookModel movie;
  new({super.key, required this.movie});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 10, 42, 69),
        centerTitle: true,
        title: Text(
          "Details",
          style: TextStyle(
            fontSize: 18,
            fontWeight: .bold,
            color: Colors.white,
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: .center,
        children: [
          SizedBox(height: 20),
          MovieItem(item: movie, isClecck: false),
          SizedBox(height: 20),
          Text(
            "Select Your Seat",
            style: TextStyle(
              fontSize: 18,
              fontWeight: .bold,
              color: Colors.black,
            ),
          ),
            SizedBox(height: 20),
            Consumer<BookingProvider>(builder: (context,value,child){
                child: GridView.builder(gridDelegate: 
                        SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 5), itemBuilder: (context, index) {
              return BookingCard(seat: movie[index])
                        },);
            })
            
        ],
      ),
    );
  }
}
