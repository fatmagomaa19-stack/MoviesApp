import 'package:flutter/material.dart';
import 'package:flutter_moviesapp_5/provider/movie_provider.dart';
import 'package:flutter_moviesapp_5/widgets/movie_item.dart';
import 'package:provider/provider.dart';

class MoviePage extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 10, 42, 69),
        centerTitle: true,
        title: Text("Movies",style: TextStyle(fontSize: 18,fontWeight: .bold,color:Colors.white),),
      ),
      body: Consumer<MovieProvider>(builder: (context,value,child){
        final movie= value.movie?.movies;
        if(movie==null){
          value.getmovieprovider();
          return Center(child: CircularProgressIndicator());
        }
        else{
          return ListView.separated(itemBuilder: (context, index) {
            return MovieItem(item: movie[index],isClecck: true,);
          }, 
          separatorBuilder:  (context, index) => SizedBox() , 
          itemCount: movie.length
          );
        }
      }),
    );
  }
}