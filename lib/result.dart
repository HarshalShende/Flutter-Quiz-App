import 'package:flutter/material.dart';

class Result extends StatelessWidget {

  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase{
    String resultText ;

    if(resultScore == 30){
      resultText='You Are Awesome And Innocent!';
    }else if(resultScore < 30){
      resultText="Pretty Likable!";
    }else if(resultScore <= 25){
      resultText="You Are Strange!";
    }else{
      resultText="You Are So Bad!";
    }

    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
     child: Column(
         children: <Widget>[
           Text(resultPhrase,
                style: TextStyle(
                  fontSize: 36,
                  fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
          ),
          FlatButton(
            child: Text('Restart'),
            textColor: Colors.blue,
            onPressed:resetHandler,
            )
         ],
         ),
    );
  }
}