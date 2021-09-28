import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    String resultText;
    if (resultScore >= 8) {
      resultText = 'You are Brilliant...';
    } else if (resultScore >= 5) {
      resultText = 'You are average bro...';
    } else {
      resultText = 'You are soo bad at this bro...';
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
            style: TextStyle(
                fontStyle: FontStyle.italic,
                fontSize: 36,
                fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            child: Text('Restart Quiz'), textColor: Colors.blue,
            onPressed: resetHandler,
          )
        ],
      ),
    );
  }
}
