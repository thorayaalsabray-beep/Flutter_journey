import 'package:flutter/material.dart';
import 'package:quiz_app/data/question.dart';

class RusultsScreen extends StatelessWidget {
  const RusultsScreen({
    super.key,
    required this.chosenAnswer,
  });

  final List<String> chosenAnswer;
  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];
    for (var i = 0; i < chosenAnswer.length; i++) {
      summary.add(
        {
          'question_index': i,
          'question': questions[i].text,
          'correct_answer':questions[i].answers[0],
          'user_answers':chosenAnswer[i],
        },
      );
    }

    return summary;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('You answered X out of Y questions correctly! '),
            const SizedBox(
              height: 30,
            ),
            const Text('Lise of answer...'),
            const SizedBox(
              height: 30,
            ),
            TextButton(onPressed: () {}, child: const Text('Restart Quiz')),
          ],
        ),
      ),
    );
  }
}
