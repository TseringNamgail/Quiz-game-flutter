import 'package:flutter/material.dart';
import './Quiz.dart';
import './Result.dart';

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

  void answerQuestion() {
    setState(() {
      questionIndex = questionIndex + 1;
    });
  }

  var question = [
    {
      'questionText': 'What\s your fav color',
      'answers': ['Blue', 'Black', 'Yellow', 'Green'],
    },
    {
      'questionText': 'What\s your fav food',
      'answers': ['Pasta', 'Rice', 'Chicken', 'Egg'],
    },
    {
      'questionText': 'What\s your fav place',
      'answers': ['India', 'USA', 'Bhutan', 'Japan'],
    },
    {
      'questionText': 'What\s your fav movie',
      'answers': ['Batman', 'Spiderman', 'Ironman', 'Avengers'],
    },
  ];

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
              )
            : Result(),
      ),
    );
  }
}
