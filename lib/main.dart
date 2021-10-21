// ignore_for_file: deprecated_member_use, non_constant_identifier_names

import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';
import 'dart:convert';

void main() {
  runApp(MyApp());
}

// ignore: use_key_in_widget_constructors
class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions =[
    {
      'question': 'whats your fav color',
      'answers': [
        {'text': 'black', 'score': '4'},
        "{'text':'red', 'score':'6'}",
        {'text': 'blue', 'score': '2'},
        {'text': 'yellow', 'score': '8'}
      ]
    },
    {
      'question': 'whats your fav club',
      'answers': [
        {'text': 'Chelsea', 'score': '10'},
        {'text': 'liverpool', 'score': '7'},
        {'text': 'madrid'},
        {'text': 'porto', 'score': '3'}
      ]
    },
    {
      'question': 'who is your fav instructor',
      'answers': [
        {'text': 'Max', 'score': '4'},
        {'text': 'NetNinja', 'score': '8'},
        {'text': 'traversy', 'score': '7'},
        {'text': 'schafer', 'score': '6'}
      ]
    }
  ];

  var _questionIndex = 0;
  var _totalScore = 0;

  _AnswerQuestion(int score ) {
    _totalScore += score;
    setState(() {
      if (_questionIndex > 2) {
        _questionIndex = 0;
      } else {
        _questionIndex += 1;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('TestApp')),
        body: _questionIndex < _questions.length
            ? Quiz(
                questions: _questions,
                answerQuestion: _AnswerQuestion,
                questionIndex: _questionIndex)
            : Result(_totalScore),
      ),
    );
  }
}
