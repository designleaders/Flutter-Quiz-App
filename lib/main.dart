import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'আপনার পছন্দের খাবার কি?\n What is your favorite foods?',
      'answers': [
        {'text': 'birani', 'score': 10},
        {'text': 'plain rice', 'score': 20},
        {'text': 'fry', 'score': 15},
        {'text': 'salad', 'score': 25},
      ],
    },
    {
      'questionText': 'আপনার পছন্দের রং কি?\n What is your favorite color?',
      'answers': [
        {'text': 'blue', 'score': 10},
        {'text': 'red', 'score': 20},
        {'text': 'black', 'score': 30},
        {'text': 'white', 'score': 10},
      ],
    },
    {
      'questionText':
          'আপনার পছন্দের প্রানী কি?\n What is your favorite animal?',
      'answers': [
        {'text': 'tiger', 'score': 10},
        {'text': 'lion', 'score': 20},
        {'text': 'fox', 'score': 30},
        {'text': 'elephant', 'score': 10},
      ],
    },
    {
      'questionText': 'আপনার পছন্দের খেলা কি?\n What is your favorite sports?',
      'answers': [
        {'text': 'badminton', 'score': 10},
        {'text': 'cricket', 'score': 20},
        {'text': 'football', 'score': 30},
        {'text': 'ragbi', 'score': 10},
      ],
    },
    {
      'questionText':
          'আপনার পছন্দের প্রযুক্তিবিদ কে?\n Who is your favorite tech person?',
      'answers': [
        {'text': 'bill gates', 'score': 10},
        {'text': 'mark zukerbaerg', 'score': 20},
        {'text': 'elon mask', 'score': 30},
        {'text': 'jeff bejos', 'score': 10},
      ],
    },
    {
      'questionText': 'আপনার পছন্দের দেশ কি?\n What is your favorite country?',
      'answers': [
        {'text': 'USA', 'score': 10},
        {'text': 'UK', 'score': 20},
        {'text': 'EU', 'score': 30},
        {'text': 'AU', 'score': 10},
      ],
    },
  ];
  var _answerIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _answerIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestions(int score) {
    _totalScore = _totalScore + score;
    setState(() {
      _answerIndex = _answerIndex + 1;
    });

    print(_answerIndex);

    if (_answerIndex < _questions.length) {
      print('ÿour have more questions!');
    } else {
      print("you have done");
    }
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("কুইজ টেস্ট"),
        ),
        body: _answerIndex < _questions.length
            ? Quiz(
                answerQuestions: _answerQuestions,
                questions: _questions,
                answerIndex: _answerIndex,
              )
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
