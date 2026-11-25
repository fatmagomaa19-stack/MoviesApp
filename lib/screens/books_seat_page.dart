import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BooksSeatPage extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
         appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 10, 42, 69),
        centerTitle: true,
        title: Text(
          "Books  Seat",
          style: TextStyle(
            fontSize: 18,
            fontWeight: .bold,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}