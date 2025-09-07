import 'package:flutter/material.dart';

class Startscreen extends StatelessWidget {
  const Startscreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 300,
            height: 300,
            color: const Color.fromARGB(48, 255, 255, 255),
          ),
          const SizedBox(height: 50),
          const Text(
            style: TextStyle(fontSize: 20, color: Colors.black87),
            "Hit that",
          ),
          OutlinedButton.icon(
            onPressed: startQuiz,
            icon: const Icon(Icons.arrow_back),
            label: Text("Start game"),
          ),
        ],
      ),
    );
  }
}
