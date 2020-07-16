import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';



class Quiz extends StatelessWidget { //widget not private
  final List<Map<String, Object>>questions; //map holds string keys and pbbj values 
  final int questionIndex;
  final Function answerQuestion;

  Quiz({@required this.questions,@required this.answerQuestion,@required this.questionIndex});
  @override
  Widget build(BuildContext context) {
    return Column( //scaffold
          children: [
            Question(
              questions[questionIndex]['questionText'],
            ),
            ...(questions[questionIndex]['answers'] as List<Map<String, Object>>).map((answer) {
              //... : they take a list and pull allvalues out of it to add to another list
              return Answer(() => answerQuestion(answer['score']), answer['text']);
            }).toList() //map returns new list
            // list of widgets
          ],
        );
  }
}