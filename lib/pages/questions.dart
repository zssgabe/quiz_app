import 'package:flutter/material.dart';
import '../components/answer_button.dart';
import '../data/questions.dart';

class Questions extends StatefulWidget {
  const Questions({super.key});

  @override
  State<Questions> createState() => _QuestionsState();
}

class _QuestionsState extends State<Questions> {
  var currentQuestion = questions[0];

  @override
  Widget build(context) {
    return Container(
      margin: const EdgeInsets.all(40),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              currentQuestion.text,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 12),
            ...currentQuestion.answers.map(
              (answer) => AnswerButton(
                text: answer.toUpperCase(),
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
