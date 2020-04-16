import 'package:flutter/material.dart';

class Reset extends StatelessWidget {
  final String message;
  final Function resetArray;

  Reset(this.message, this.resetArray);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(message,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 36,
              )),
          FlatButton(
            child: Text('Restart'),
            textColor: Colors.blue,
            onPressed: resetArray,
          ),
        ],
      ),
    );
  }
}
