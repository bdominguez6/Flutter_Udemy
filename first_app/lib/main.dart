import 'package:first_app/grandient_container.dart';
import 'package:flutter/material.dart';

void main() {
  const List<Color> listaColores = [
    Color.fromARGB(255, 71, 5, 83),
    Colors.deepPurple
  ];

  runApp(
    MaterialApp(
      home: Scaffold(
        body: GradientContainer.purple(),
      ),
    ),
  );
}
