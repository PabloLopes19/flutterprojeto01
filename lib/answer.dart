import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback selectHandler;
  final String answerText;

  Answer(
    this.selectHandler,
    this.answerText,
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: OutlinedButton(
        onPressed: selectHandler,
        // style: OutlinedButton.styleFrom(
        //   EdgeInsets.all(),
        // ),
        child: Text(answerText),
      ),
    );
  }
}
