import 'package:flutter/material.dart';
import 'package:quiz/questionScreen.dart';
import 'package:quiz/startScreen.dart';
import 'package:quiz/questionScreen.dart';

var colors = [Colors.deepPurple, Colors.lightBlueAccent];

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  var activeScreen = 'start-screen';
  void switchScreen() {
    setState(() {
      activeScreen = 'question-screen';
    });
  }

  @override
  Widget build(context) {
    Widget screenWidget = Startscreen(switchScreen);

    if (activeScreen == 'question-screen') {
      screenWidget = QuestionScreen();
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
