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
        'answers' :[
          {'text':'Ram', 'score':10},
          {'text':'Lakshman','score':9},
          {'text':'Bharat','score':8},
          {'text':'Shatrughn','score':7},
        ],
      },
      {
        'questionText': 'what\'s your city ?',
        'answers' :[
          {'text':'Nagpur', 'score':10},
          {'text':'Delhi','score':9},
          {'text':'Mumbai','score':8},
          {'text':'Raipur','score':7},
        ],
      },
      {
        'questionText': 'what\'s your fovorite color ?',
        'answers' :[
          {'text':'Orange', 'score':10},
          {'text':'Blue','score':9},
          {'text':'White','score':8},
          {'text':'Green','score':7},
        ],
      },
    ];


  var _questionIndex=0;
  var _totalScore=0;

  void _resetQuiz(){
    setState(() {
      _questionIndex=0;
      _totalScore=0;
    });
  }

  void _answerQuestion(int score){
    _totalScore=_totalScore+score;

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
       Result(_totalScore, _resetQuiz)
       ,
    ),
    );
  }

}