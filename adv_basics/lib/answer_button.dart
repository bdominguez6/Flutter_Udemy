import 'package:flutter/material.dart';

/// Class who store the 'answer buttons'
class AnswerButton extends StatelessWidget {
  const AnswerButton(
      {super.key, required this.answerText, required this.opTap});

  final String answerText;
  final void Function() opTap;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: opTap,
      style: OutlinedButton.styleFrom(
        backgroundColor: const Color.fromARGB(255, 22, 5, 98),
        foregroundColor: Colors.white,
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 40),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
      ),
      child: Text(
        answerText,
        textAlign: TextAlign.center,
      ),
    );
  }
}
