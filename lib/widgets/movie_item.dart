import 'package:flutter/material.dart';
import 'package:flutter_moviesapp_5/model/movie_book_model.dart';
import 'package:flutter_moviesapp_5/screens/details_movie.dart';

class MovieItem extends StatelessWidget {
  MovieBookModel item;
  final bool isClecck;
  MovieItem({super.key, required this.item, this.isClecck=true});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if(isClecck){
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) =>DetailsMovie(movie: item)),
        );
      }},

      child: Card(
        elevation: 8,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        child: Row(
          mainAxisSize: .min,
          children: [
            Container(
              width: 100,
              height: 100,
              child: Image.network(
                item.Poster,
                errorBuilder: (context, error, stackTrace) =>
                    Icon(Icons.broken_image),
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: .start,
                children: [
                  Text(
                    item.name,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: .bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisSize: .min,
                    children: [
                      Icon(Icons.date_range, color: Colors.black),
                      Text(item.showDate),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisSize: .min,
                    children: [
                      Icon(Icons.schedule, color: Colors.black),
                      Text(item.showTime),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
