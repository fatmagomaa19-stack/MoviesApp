import 'package:flutter/material.dart';
import 'package:flutter_moviesapp_5/provider/movie_provider.dart';
import 'package:flutter_moviesapp_5/screens/movie_page.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context)=> MovieProvider(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: .fromSeed(seedColor: Colors.deepPurple),
        ),
        home: MoviePage()
      ),
    );
  }
}

