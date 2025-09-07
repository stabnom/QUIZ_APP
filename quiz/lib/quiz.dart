import 'package:flutter/material.dart';
import 'package:quiz/question_screen.dart';
import 'package:quiz/start_screen.dart';
import 'package:quiz/data/questions.dart';
import 'package:quiz/result_screen.dart';

var colors = [Colors.deepPurple, Colors.lightBlueAccent];

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  final List<String> selectedAnswer = [];
  var activeScreen = 'start-screen';
  
  void switchScreen() {
    setState(() {
      activeScreen = 'question-screen';
    });
  }

  void chooseAnswer(String answer){
    selectedAnswer.add(answer);



    if(selectedAnswer.length == questions.length){
      setState(() {
        activeScreen = 'result-screen';
      });
    }
  }

  @override
  Widget build(context) {
    Widget screenWidget = Startscreen(switchScreen);

  //Here lies the logic for switching between screens

    if (activeScreen == 'question-screen') {
      screenWidget = QuestionScreen(onSelectAnswer: chooseAnswer);
    }
  
    if (activeScreen == 'result-screen') {
      screenWidget = ResultScreen(chosenAnswers: selectedAnswer);
    }


    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(gradient: LinearGradient(colors: colors)),
          child: screenWidget,
        ),
      ),
    );
  }
}
