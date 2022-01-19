import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int index;
  final Function btnPressed;

  Quiz(
      {required this.btnPressed, required this.index, required this.questions});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
            '${index + 1}. ' + (questions[index]['questionText'] as String)),
        ...(questions[index]['answers'] as List<Map<String, Object>>)
            .map((answer) {
          return Answer(
              () => btnPressed(answer['score']), answer['text'] as String);
        }).toList(),
      ],
    );
  }
}
