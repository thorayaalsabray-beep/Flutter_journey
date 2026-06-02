import 'package:flutter/material.dart';
import 'package:quiz_app/answer_button.dart';

class QuiztionsScreen extends StatefulWidget {
  const QuiztionsScreen({super.key});
  @override
  State<QuiztionsScreen> createState() {
    return _QuiztionsScreenState();
  }
}

class _QuiztionsScreenState extends State<QuiztionsScreen> {
  @override
  Widget build(constant) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'The Questions...',
            style: TextStyle(
              color: Color.fromARGB(255, 54, 53, 53),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          AnswerButton(answerText: 'answer 1', onTap: () {}),
          AnswerButton(answerText: 'answer 2', onTap: () {}),
          AnswerButton(answerText: 'answer 3', onTap: () {}),
        ],
      ),
    );
  }
}
