import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;
  //final keyword tells dart its value will never change after its initialisation in constructor

  Question(this.questionText); //constructor with positional argument

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      width: double.infinity,
      child: Text(
        questionText,
        style: TextStyle(fontSize: 30),
        textAlign: TextAlign.center,
      ),
    );
  }
}

//file to output question in a nicely styled way
