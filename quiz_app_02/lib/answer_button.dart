import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  AnswerButton({required this.answerText, required this.onTap, super.key});

  final String answerText;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
          backgroundColor: Color.fromARGB(215, 2, 132, 146),
          foregroundColor: Color.fromARGB(235, 255, 255, 255),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50))),
      child: Text(answerText),
    );
  }
}
