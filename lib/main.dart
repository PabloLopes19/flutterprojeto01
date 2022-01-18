import 'package:flutter/material.dart';

import './question.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _index = 0;

  var questions = [
    'What\'s your name?',
    'What\'s your dog\'s name?',
  ];

  void _btnPressed() {
    if (_index < (questions.length - 1)) {
      setState(() {
        _index = _index + 1;
      });
    }
  }

  void _goBack() {
    if (_index > 0) {
      setState(() {
        _index = _index - 1;
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
      body: Column(
        children: [
          Question('${_index + 1}. ' + questions[_index]),
          OutlinedButton(onPressed: _btnPressed, child: Text("Next")),
          OutlinedButton(onPressed: _goBack, child: Text("back")),
        ],
      ),
    ));
  }
}
