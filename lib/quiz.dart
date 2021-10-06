import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> question;
  final Function answerQuestion;
  final int questionIndex;

  Quiz({
    @required this.question,
    @required this.answerQuestion,
    @required this.questionIndex,
  });

  @override
  Widget build(BuildContext context) {
    final q = Question(
      question[questionIndex]['questionText'],
    );
    final questionDictionary = question[questionIndex]['answers'] as List<Map<String, Object>>;

    final c = questionDictionary.map((answer) {
      return Answer(() {
        answerQuestion(answer['score']);
      }, answer['text']);
    }).toList();
    
    return Column(
      children: [
        q,
        Expanded(child: Column(
          children: c,
        ))
      ],
    );
  }
}
