import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var questionIndex = 0;
  var totalScore = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First app'),
        ),
        body: questionIndex < question.length
            ? Quiz(
          question: question,
          answerQuestion: answerQuestion,
          questionIndex: questionIndex,
        ) : Result(totalScore, resetQuiz),
      ),
    );
  }

  void resetQuiz(){
    setState(() {
    questionIndex = 0;
    totalScore = 0;
  });
}
  void answerQuestion(int score) {
    totalScore += score;

    setState(() {
      questionIndex = questionIndex + 1;
    });
  }

  var question = [
    {
      'questionText':
          'In which year, Alexander the Great become the king of Macedonia',
      'answers': [
        {'text': '336 BC', 'score': 2},
        {'text': '323 BC', 'score': 0},
        {'text': '350 BC', 'score': 0},
        {'text': '200 BC', 'score': 0},
      ],
    },
    {
      'questionText': 'On which island of France, Napoleon was born',
      'answers': [
        {'text': 'Corsika', 'score': 2},
        {'text': 'Saint Helena', 'score': 0},
        {'text': 'Elba', 'score': 0},
        {'text': 'Oleron', 'score': 0},
      ],
    },
    {
      'questionText': 'In which year America got independence',
      'answers': [
        {'text': '1760', 'score': 0},
        {'text': '1776', 'score': 2},
        {'text': '1780', 'score': 0},
        {'text': '1782', 'score': 0},
      ],
    },
    {
      'questionText':
          'Who is known as the Artist of the world famous painting "Mona Lisa"',
      'answers': [
        {'text': ' Filippo Brunelleschi', 'score': 0},
        {'text': 'Michelangelo', 'score': 0},
        {'text': 'Vincent van Gogh', 'score': 0},
        {'text': 'Leonardo da Vinci', 'score': 2},
      ],
    },
  ];
}
