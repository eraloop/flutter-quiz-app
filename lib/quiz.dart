import 'package:flutter/material.dart';
import 'package:ubuntu/question.dart';


import './question.dart';
import './answer.dart';

class Quiz  extends StatelessWidget {
  var questions;
  final  answerQuestion;
  final questionIndex;

  Quiz({Key? key, @required this.questions, @required this.answerQuestion, @required this.questionIndex}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return 
      Column(
            children:<Widget>[
              Question(questions[questionIndex]['question']?.toString() ?? '', ),
                ...(questions[questionIndex]['answers'] as List<dynamic>)
                    .map((answer) {
                    return Answer(()=> answerQuestion(answer['score']), answer['text']);
                    }).toList()
            ],
          );
      
  }
} 