import 'package:flutter/material.dart';

class PrincipalScreen extends StatefulWidget {
  const PrincipalScreen({super.key});

  @override
  State<PrincipalScreen> createState() {
    return _PrincipalScreen();
  }
}

/// This class contains the image, caption and 'Start Quiz' button
class _PrincipalScreen extends State<PrincipalScreen> {
  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset('assets/images/quiz-logo.png', width: 250),
        const Padding(
          padding: EdgeInsets.only(
              top: 40.0), // Puedes ajustar el valor según tus necesidades
          child: Text(
            "Learn Flutter the fun way!",
            style: TextStyle(color: Colors.white),
          ),
        ),
        TextButton(
          onPressed: () {},
          style: TextButton.styleFrom(
            padding: const EdgeInsets.all(10),
            foregroundColor: Colors.white,
            textStyle: const TextStyle(
              fontSize: 12,
              color: Colors.black,
            ),
          ),
          child: const Text(
            "Start Quiz",
            style: TextStyle(),
          ),
        ),
      ],
    );
  }
}
