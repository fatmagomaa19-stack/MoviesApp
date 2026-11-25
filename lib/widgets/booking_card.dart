import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_moviesapp_5/model/movie_book_model.dart';
import 'package:flutter_moviesapp_5/screens/booking_page.dart';
import 'package:flutter_moviesapp_5/screens/books_seat_page.dart';

class BookingCard extends StatelessWidget {
  Seats seat;
  BookingCard({super.key,required this.seat});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 30,
      height: 30,
      child: GestureDetector(
        onTap: (){
          if(seat.status=="Booked"){
            Navigator.push(context, MaterialPageRoute(builder: (context)=> BookingPage()),);
          }
           if(seat.status=="Available"){
            Navigator.push(context, MaterialPageRoute(builder: (context)=> BooksSeatPage()),);
          }
        },
        child: Card(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          child:    Text(seat.seatNumber)
          
        ),
      ),
    );
  }
}