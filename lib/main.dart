import 'package:first_app/result.dart';
import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';
import './quiz.dart';
import './result.dart';

// void main(){
// runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatefulWidget{

@override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }

}

class _MyAppState extends State{

  final _questions=const[
      {
        'questionText': 'what\'s your name ?',
        'answers' :['Bharat','Ram','Gandhari','william'],
      },
      {
        'questionText': 'what\'s your city ?',
        'answers' :['Bhandara','Raipur','Gondia','White house'],
      },
      {
        'questionText': 'what\'s your fovorite color ?',
        'answers' :['Blue','Red','GGreen','White'],
      },
    ];


var _questionIndex=0;

  void _answerQuestion(){
    setState(() {
      _questionIndex=_questionIndex+1;
    });
    if(_questionIndex < _questions.length){
      print('we have more questions');
    }else{
      print('No More Questions');
    }
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    
    // return MaterialApp(home: Text('Jai Shri Ram'),);

    return MaterialApp(home: Scaffold(
      appBar: AppBar(title: Text('My First App'),
      ),
      body:_questionIndex < _questions.length ? 
      Quiz(
        answerQuestion: _answerQuestion,
        questionIndex: _questionIndex,
        questions: _questions,
        )
       : 
       Result()
       ,
    ),
    );
  }

}