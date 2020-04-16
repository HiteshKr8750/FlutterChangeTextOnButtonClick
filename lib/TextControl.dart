import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final int questionIndex;
  final String question;
  final Function answerQuestion;

  Question(this.questionIndex, this.question, this.answerQuestion);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
        margin: EdgeInsets.all(20),
        child: Column(
          children: <Widget>[
            Center(
              child: Text(question),
            ),
            RaisedButton(
              child: Text('Change Text'),
              textColor: Colors.white,
              color: Colors.blue,
              onPressed: answerQuestion,
            )
          ],
        ),
    );
  }
}


