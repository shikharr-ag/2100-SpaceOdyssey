import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final void Function()? selectHandler;
  final String answerText;

  Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      margin: const EdgeInsets.all(10.0),
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
        child: Text(answerText),
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
        ),
        onPressed: selectHandler,
      ),
    );
  }
}
