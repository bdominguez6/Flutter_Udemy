import 'package:flutter/material.dart';

/// Class with screen change method passed by parameter (this will be executed when we press the button below the image)
class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 300,
            color: const Color.fromARGB(150, 255, 255, 255),
          ),
          // Opacity(
          //   opacity: 0.6,
          //   child: Image.asset('assets/images/quiz-logo.png', width: 300),
          // ),
          const SizedBox(
              height: 40), // Puedes ajustar el valor según tus necesidades
          const Text(
            "Learn Flutter the fun way!",
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
            ),
          ),
          TextButton.icon(
            onPressed: startQuiz,
            style: TextButton.styleFrom(
              padding: const EdgeInsets.all(10),
              foregroundColor: Colors.white,
            ),
            icon: const Icon(Icons.arrow_right_alt),
            label: const Text(
              "Start Quiz",
              style: TextStyle(),
            ),
          ),
        ],
      ),
    );
  }
}
