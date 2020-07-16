import 'package:flutter/material.dart'; //has many widgets and material themes of flutter,
//but most importantly it has a class which lets us make our own widgets

//import './question.dart';
//import './answer.dart';

import './quiz.dart';
import './result.dart';


//void main(){ bgt5
//runApp(MyApp());//func by flutter, it runs our app
//}

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    //to do: implement createState
    return _MyAppState(); // object which knows about this class as well as the lower class
  }
}

class _MyAppState extends State<MyApp> {
  
  final _questions =  const [
      {
        'questionText': 'Ah shit',
        'answers': [{'text':'i pooped my pants','score': 0}, {'text':'here we go again', 'score': 100}, {'text':'my dick fell out','score': 0}]
      },
      {
        'questionText': 'nikal lavde',
        'answers': [{'text':'pehli fursat me nikal', 'score': 100},{'text': 'lassun','score': 0},{'text': 'macchar ki jhaat','score': 0}],
      },
      {
        'questionText': 'no,',
        'answers': [
          {'text':'i don\'t think i will', 'score': 100},
          {'text':'impossible','score': 0},
          {'text':'you are breathtaking','score': 0}
        ],
      },
    ];

  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz(){
    setState(() {
      _questionIndex = 0;
    _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    
     _totalScore +=score; 

    setState(() {
      //func which takes func as argument
      //anonymous func
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);

    if(_questionIndex<_questions.length) {
      print('good work!');
    } 
  }

  @override
  Widget build(BuildContext context) {
    //build is a function returning a widget
    //Buildcontext: special object type provided by flutter in material dart file
    

    //questions=[]; //doesn't work when questions is a const

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Redeem you meme'),
        ),
        body: _questionIndex< _questions.length 
        ?Quiz(
          answerQuestion: _answerQuestion, 
          questionIndex:  _questionIndex,
          questions: _questions,
          )
         
      : Result(_totalScore, _resetQuiz),
      ),
    );
  }
} //this turns our class into a widget which can be used by flutter
