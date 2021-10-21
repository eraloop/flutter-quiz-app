import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  Result(this.resultScore);

  String get resultPhrase {
    var resultText ;
    if(resultScore <= 8){
      resultText = 'Your are awesome and inocent';
    }else if(resultScore <=12 ){
      resultText = 'Pretty likeable';
    }  else if(resultScore <= 16){
      resultText = 'You are .... strange';
    }else{
      resultText = 'Your are so bad';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child:Text('You did it',
        style: TextStyle(fontSize: 36,
        fontWeight: FontWeight.bold )
        )
      )
    );
  }
}