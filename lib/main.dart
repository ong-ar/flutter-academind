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

  void _answerQuestion() {
    setState(() {
      _questionIndex++;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    List<String> questions = [
      'What\'s your favorite color?',
      'What\'s your favorite animal?'
    ];
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('My First App'),
          ),
          body: Column(
            children: <Widget>[
              Question(
                questionText: questions[_questionIndex],
              ),
              Answer(
                buttonText: 'Answer 1',
                clickedHandler: _answerQuestion,
              ),
              Answer(
                buttonText: 'Answer 2',
                clickedHandler: null,
              ),
              Answer(
                buttonText: 'Answer 3',
                clickedHandler: () => print('text'),
              )
            ],
          )),
    );
  }
}
