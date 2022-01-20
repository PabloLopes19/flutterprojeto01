import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _index = 0;
  var _totalScore = 0;

  final _questions = const [
    {
      "questionText": "What\'s your favorite color?",
      "answers": [
        {"text": 'Red', "score": 8},
        {"text": 'Blue', "score": 1},
        {"text": 'Green', "score": 3},
        {"text": "Yellow", "score": 5},
      ]
    },
    {
      "questionText": "What\'s your favorite animal?",
      "answers": [
        {"text": 'Rabbit', "score": 1},
        {"text": 'Snake', "score": 9},
        {"text": 'Elephant', "score": 2},
        {"text": "Lion", "score": 5},
      ]
    },
    {
      "questionText": "Who\'s your favorite instructor?",
      "answers": [
        {"text": 'Max', "score": 1},
        {"text": 'Max', "score": 1},
        {"text": 'Max', "score": 1},
        {"text": 'Max', "score": 1},
      ]
    }
  ];

  void _resetQuiz() {
    setState(() {
      _index = 0;
      _totalScore = 0;
    });
  }

  void _btnPressed(int score) {
    _totalScore += score;

    if (_index < (_questions.length + 1)) {
      setState(() {
        _index += 1;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Hello world'),
        ),
        body: _index < _questions.length
            ? Quiz(
                btnPressed: _btnPressed,
                questions: _questions,
                index: _index,
              )
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
