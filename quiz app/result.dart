import 'package:flutter/material.dart';

class Result extends StatelessWidget {

  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase{

    String resultText;

    if(resultScore<200){
      resultText='LOSER';
    }
    else{
      resultText='well done';
    }

    return resultText;
  }


  @override
  Widget build(BuildContext context) {
    return Center(
          child: Column(
            children:<Widget>[
              Text(
                resultPhrase, 
                style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
                ),
                FlatButton(
                  onPressed: resetHandler, 
                  child: 
                  Text('phirse khel lode'),
                  textColor: Colors.blue,
                  )
            ],
          ),
    );
  }
}