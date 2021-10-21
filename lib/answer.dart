// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';



class Answer extends StatelessWidget {

  final VoidCallback selectHandler;
  final String answerText;
  Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(left: 50, right: 50),
      // child:RaisedButton(
      //   color:Colors.blue, 
      //   child: Text('Answer 1'),
      //   onPressed: selectHandler,
      // ),
      child: ElevatedButton(
        onPressed: selectHandler, 
        child:Text(answerText)),
    );
  }
}