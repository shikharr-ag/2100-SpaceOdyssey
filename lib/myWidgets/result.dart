import 'package:flutkit/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher_string.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final void Function()? resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    String resultText;
    if (resultScore >= 7) {
      resultText = 'You are highly dependent on Nicotine.';
    } else if (resultScore < 7 && resultScore >= 4) {
      resultText = 'You are moderately dependent on Nicotine';
    } else if (resultScore > 0)
      resultText = 'You are minimally dependent on Nicotine.';
    else
      resultText = 'You are Healthy and have no Nicotine dependence';
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          resultPhrase,
          style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        const SizedBox(
          height: 20,
        ),
        TextButton(
          child: Text(
            ' For a more accurate understanding of your situation head to this website.',
            style: TextStyle(
                decoration: TextDecoration.underline, color: Colors.blue),
          ),
          onPressed: () async {
            launchUrlString(Constants.smokingUrl).then(
              (value) => print(value),
            );
          },
        ),
      ],
    );
  }
}
