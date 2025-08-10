import 'package:flutter/material.dart';
import 'package:quiz/answer_button.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key});

  @override
  State<QuestionScreen> createState() {
    return _QuestionScreen();
  }
}

class _QuestionScreen extends State<QuestionScreen> {
  @override
  Widget build(context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(style: TextStyle(color: Colors.white), "test"),
          SizedBox(height: 30),
          AnswerButton(answerText: "Odp", onTap: () {}),
          AnswerButton(answerText: "Odp", onTap: () {}),
          AnswerButton(answerText: "Odp", onTap: () {}),
        ],
      ),
    );
  }
}
