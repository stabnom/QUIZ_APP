import 'package:flutter/material.dart';
import 'package:quiz/question_screen.dart';
import 'package:quiz/start_screen.dart';
import 'package:quiz/data/questions.dart';
import 'package:quiz/result_screen.dart';
import 'package:quiz/questions_summary.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key, required this.chosenAnswers});

  final List<String> chosenAnswers;

  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];
    for (var i = 0; i < chosenAnswers.length; i++) {
      summary.add({
        'question_index': i,
        'question': questions[i].question,
        'correct_answer': questions[i].answers[0],
        'user_answer': chosenAnswers[i],
      });
    }
    return summary;
  }

  @override
  Widget build(context) {
    final summaryData = getSummaryData();
    final numberOfTotalQuestion = questions.length;
    final numberOfCorrectQuestion = getSummaryData()
        .where((data) => data['user_answer'] == data['correct_answer'])
        .length;

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
          child: ListView(
            children: [
              Text(
                style: TextStyle(fontSize: 20, color: Colors.white),
                'You\'ve answered $numberOfCorrectQuestion out of $numberOfTotalQuestion questions correctly!'),
              SizedBox(height: 30),
              QuestionsSummary(summaryData: summaryData),
              TextButton(onPressed: () {}, child: Text("Restart quiz")),
            ],
          ),
        ),
    );
  }
}
