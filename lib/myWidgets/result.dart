import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final void Function()? resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    String resultText;
    if (resultScore >= 4) {
      resultText = 'You are completely safe from the Z.E.U.S Virus.';
    } else if (resultScore > 2) {
      resultText =
          'There is a possibility you have been affected by the Z.E.U.S Virus.\nHead to the nearest emergency room.';
    } else
      resultText =
          'You are affected by the Z.E.U.S Virus.\nOfficials are converging on your location to fix you.';
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        resultPhrase,
        style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
        textAlign: TextAlign.center,
      ),
    );
  }
}
