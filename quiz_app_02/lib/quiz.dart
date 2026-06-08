import 'package:flutter/material.dart';
import 'package:quiz_app/data/question.dart';
import 'package:quiz_app/questions_screen.dart';
import 'package:quiz_app/start_screen.dart';
import 'package:quiz_app/results_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});
  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  @override
  List<String> selectedAnswers = [];
  var activeScreen = 'start-screen';

  void switchSceen() {
    setState(() {
      activeScreen = 'Quiztions-screen';
    });
  }

  void chooseAnswer(answer) {
    selectedAnswers.add(answer);

    if(selectedAnswers.length == questions.length){
      setState(() {
        selectedAnswers=[];
        activeScreen = 'results-screen';
      });
    }
  }

  // Widget? activeScreen ;

  //  void initState() {
  //   activeScreen=StartScreen(switchSceen);
  //   super.initState();
  // }

  // void switchSceen() {
  //   setState(() {
  //     activeScreen= QuiztionsScreen();
  //   });
  // }

  @override
  Widget build(constant) {
    // final screenWidget=activeScreen == 'start-screen'
    //             ? StartScreen(switchSceen)
    //             :const QuiztionsScreen();

    Widget screenWidget = StartScreen(switchSceen);
    if (activeScreen == 'Quiztions-screen') {
      screenWidget = QuiztionsScreen(
        onSelectAnswer: chooseAnswer,
      );
    }

    if(activeScreen == 'results-screen'){
      screenWidget= RusultsScreen(chosenAnswer: selectedAnswers,);
    }

    return MaterialApp(
      home: Scaffold(
        body: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color.fromARGB(255, 6, 243, 255),
                  Color.fromARGB(255, 182, 228, 230),
                  Color.fromARGB(255, 40, 113, 124)
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
            // child:activeScreen();
            child: screenWidget),
      ),
    );
  }
}

