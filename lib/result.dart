import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final resetQuiz;

  Result(this.resultScore, this.resetQuiz);

  String get resultPhrase {
    String resultText = 'done';

    if (resultScore <= 20) {
      resultText = 'your are average';
    } else if (resultScore <= 30) {
      resultText = 'you are good';
    } else {
      resultText = 'you are excellent';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            color: Colors.blue,
            child: Text(
              'Restart Quiz',
            ),
            onPressed: resetQuiz,
          )
        ],
      ),
    );
  }
}
