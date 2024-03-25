import 'package:flutter/material.dart';

class Search extends StatelessWidget {
  final List<String> images = [
    'images/me1.jpg',
    'images/pandy.jpg',
    'images/abdulghani.jpg',
    'images/me2.jpg',
    'images/pandy.jpg',
    'images/Salah.jpg',
    'images/wsam.jpg',
    'images/Ghazi.jpg',
    'images/me1.jpg',
    'images/pandy.jpg',
    'images/abdulghani.jpg',
    'images/me2.jpg',
    'images/pandy.jpg',
    'images/Salah.jpg',
    'images/wsam.jpg',
    'images/Ghazi.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 2.0,
          mainAxisSpacing: 2.0,
        ),
        itemCount: images.length,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.all(2.0),
            child: Image.asset(
              images[index],
              fit: BoxFit.cover,
            ),
          );
        },
      ),
    );
  }
}
