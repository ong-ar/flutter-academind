import 'package:flutter/material.dart';
import 'package:flutter_academind/question.dart';
import "./answer.dart";

// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _questionIndex = 0;

  static const questions = [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': ['Black', 'Red', 'Green', 'White'],
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': ['Rabbit', 'Snake', 'Elephant', 'Lion'],
    },
    {
      'questionText': 'What\'s your favorite instructor?',
      'answers': ['1', '2', '3', '4'],
    },
  ];

  void _answerQuestion() {
    setState(() {
      _questionIndex++;
    });
    if (_questionIndex < questions.length - 1) {
      print('more content');
    } else {
      print('no more content');
    }
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('My First App'),
          ),
          body: _questionIndex < questions.length
              ? Column(
                  children: <Widget>[
                    Question(
                      questionText: questions[_questionIndex]['questionText'],
                    ),
                    ...(questions[_questionIndex]['answers'] as List<String>)
                        .map((answer) => Answer(
                              buttonText: answer,
                              clickedHandler: _answerQuestion,
                            ))
                        .toList(),
                  ],
                )
              : Center(child: Text('no more Content'))),
    );
  }
}
