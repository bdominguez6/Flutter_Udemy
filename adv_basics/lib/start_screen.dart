import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

/// This class contains all the main screen
/// Class with screen change method passed by parameter (this will be executed when we press the button below the image)
class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});
  // method that executes the method that changes to 'QuestionScreen'
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
            color: Color.fromARGB(114, 255, 255, 255),
          ),
          // Opacity(
          //   opacity: 0.6,
          //   child: Image.asset('assets/images/quiz-logo.png', width: 300),
          // ),
          const SizedBox(height: 40),
          Text(
            "Learn Flutter the fun way!",
            style: GoogleFonts.lato(
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
