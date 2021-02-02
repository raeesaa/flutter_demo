import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': ['Black', 'White', 'Blue', 'Green']
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': ['Rabbit', 'Elephant', 'Lion', 'Tiger']
    },
    {
      'questionText': 'What\'s your favorite programming language?',
      'answers': ['C', 'Java', 'Javascript', 'Go']
    }
  ];

  int _questionIndex = 0;

  void answerQuestion() {
    if (_questionIndex < (_questions.length - 1)) {
      setState(() {
        _questionIndex++;
      });
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
        body: Column(
          children: [
            Question(_questions[_questionIndex]['questionText']),
            ...(_questions[_questionIndex]['answers'] as List<String>).map(
              (answer) {
                return Answer(answer, answerQuestion);
              },
            ).toList()
          ],
        ),
      ),
    );
  }
}
