import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});
  final void Function() startQuiz;

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/1.png',
            width: 300,
            color: const Color.fromARGB(100, 255, 255, 255),
          ),
          // Opacity(
          //   opacity: 0.6,
          //   child: Image.asset(
          //     'assets/images/1.png',
          //     width: 300,
          //   ),
          // ),
          const SizedBox(
            height: 60,
          ),
           Text(
            'Learn Flutter the fun way!',
            style: GoogleFonts.lato(
              color: const Color.fromARGB(255, 233, 241, 243),
              fontSize: 24,
            ),
          ),
          const SizedBox(
            height: 60,
          ),
          OutlinedButton.icon(
            onPressed: startQuiz,
            // onPressed: () {
            //   startQuiz();
            // },
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white,
            ),
            label: const Text('Start Quiz'),
            icon: const Icon(Icons.arrow_right_alt),
          )
        ],
      ),
    );
  }
}
