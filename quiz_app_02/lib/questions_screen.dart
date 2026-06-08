import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/answer_button.dart';
import 'package:quiz_app/data/question.dart';

class QuiztionsScreen extends StatefulWidget {
  const QuiztionsScreen({
    super.key,
    required this.onSelectAnswer,
  });
  final void Function(String answer) onSelectAnswer;
  @override
  State<QuiztionsScreen> createState() {
    return _QuiztionsScreenState();
  }
}

class _QuiztionsScreenState extends State<QuiztionsScreen> {
  var currentQeustionIndex = 0;
  void answerQuestion(String selectedAnswers) {
    // currentQeustionIndex=currentQeustionIndex+1;
    // currentQeustionIndex+= 1 ;
    widget.onSelectAnswer(selectedAnswers);
    setState(() {
      currentQeustionIndex++;
    });
  }

  @override
  Widget build(constant) {
    final currentQuestion = questions[currentQeustionIndex];

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              currentQuestion.text,
              style: GoogleFonts.lato(
                color: const Color.fromARGB(255, 253, 254, 255),
                fontSize: 20, 
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 30,
            ),
            ...currentQuestion.getShuffledAnswers().map((answer) {
              return AnswerButton(
                answerText: answer,
                onTap: (){
                  answerQuestion(answer);
                },
              );
            }),
          ],
        ),
      ),
    );
  }
}
