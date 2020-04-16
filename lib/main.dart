import 'package:flutter/material.dart';
import 'package:taskone/reset.dart';

import './TextControl.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyStateApp();
  }
}

class MyStateApp extends State<MyApp> {
  var _questionIndex = 0;
  static const String msg = "You have reached at end ";

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
  }

  void resetArray() {
    setState(() {
      _questionIndex = 0;
    });
  }

  final _question = const [
    'Hitesh',
    'Vikas',
    'Sachin',
    'Kirt',
    'Shalu',
    'Deepali',
    'Nitesh'
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Task One'),
          ),
          body: _questionIndex < _question.length
              ? Question(
                  _questionIndex, _question[_questionIndex], _answerQuestion)
              : Reset(msg,resetArray)),
    );
  }
}
