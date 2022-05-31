import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:url_launcher/url_launcher_string.dart';

import '../AppTheme.dart';
import '../myWidgets/quiz.dart';
import '../myWidgets/result.dart';
import '../utils/constants.dart';

class QuizPage extends StatefulWidget {
  const QuizPage({Key? key}) : super(key: key);

  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  bool quizTaken = false;
  bool isLoading = true;
  final _questions = const [
    {
      'questionText':
          'How soon after you wake up do you smoke your first cigarette ?',
      'answers': [
        {'text': 'I don\'t smoke', 'score': -1},
        {'text': 'Within 5 minutes', 'score': 3},
        {'text': '5-30 minutes', 'score': 2},
        {'text': '31-60 minutes', 'score': 1},
        {'text': 'After 60 minutes', 'score': 0},
      ],
    },
    {
      'questionText':
          'Do you find it difficult not to smoke in places where you shouln\'t such as in temple or in a movie, at the library, on a bus , in a hospital etc. ?',
      'answers': [
        {'text': 'Yes', 'score': 1},
        {'text': 'No', 'score': 0},
      ],
    },
    {
      'questionText': 'Which cigarette would you most hate to give up ?',
      'answers': [
        {'text': 'The first one in the morning', 'score': 1},
        {'text': 'After class or exams', 'score': 2},
        {'text': 'Any other', 'score': 0},
      ],
    },
    {
      'questionText': 'How many cigarettes do you smoke each day ?',
      'answers': [
        {'text': '5 or fewer', 'score': 1},
        {'text': '6 - 10', 'score': 2},
        {'text': '10 - 15', 'score': 3},
        {'text': '15 - more', 'score': 4},
      ],
    },
    {
      'questionText':
          'Do you smoke more during the first few hours after waking up than during the rest of the day ?',
      'answers': [
        {'text': 'Yes', 'score': 1},
        {'text': 'No', 'score': 0},
      ],
    },
    {
      'questionText':
          'Do you still smoke if you are so sick that you are in bed most of the day, or if you have cold or diffculty breathing ?',
      'answers': [
        {'text': 'Yes', 'score': 1},
        {'text': 'No', 'score': 0},
      ],
    },
  ];
  var _questionIndex = 0;
  var _totalScore = 0;

  @override
  void initState() {
    super.initState();
    SchedulerBinding.instance!.addPostFrameCallback((timeStamp) {
      Future.sync(() async {
        SharedPreferences sharedPreferences =
            await SharedPreferences.getInstance();
        if (sharedPreferences.containsKey('quiz_status')) {
          quizTaken = sharedPreferences.getBool('quiz_status')!;
        } else
          quizTaken = false;
      }).whenComplete(() => setState(() => isLoading = false));
    });
  }

  void _answerQuestion(int score) {
    // var aBool = true;
    // aBool = false;

    _totalScore += score;

    setState(() {
      if (_totalScore >= 0)
        _questionIndex = _questionIndex + 1;
      else
        _questionIndex = _questions.length;
    });
    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      print('We have more questions!');
    } else {
      print('No more questions!');
      Future.sync(() async {
        SharedPreferences sharedPreferences =
            await SharedPreferences.getInstance();
        sharedPreferences.setBool('quiz_status', true);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return isLoading
        ? CircularProgressIndicator()
        : quizTaken
            ? Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(colors: Constants.nccColors)
                    // image: DecorationImage(
                    //     image: AssetImage('assets/new_images/Hologram.png'),
                    //     fit: BoxFit.fill),
                    ),
                child: Center(
                  child: TextButton(
                    child: Text(
                      'To learn more about self analysing your nicotine dependence, click here !',
                      style: TextStyle(
                          decoration: TextDecoration.underline,
                          color: Colors.white),
                    ),
                    onPressed: () async {
                      launchUrlString(Constants.smokingUrl).then(
                        (value) => print(value),
                      );
                    },
                  ),
                ))
            : _questionIndex < _questions.length
                ? Container(
                    height: MediaQuery.of(context).size.height,
                    width: double.infinity,
                    padding: const EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                        gradient: LinearGradient(colors: Constants.nccColors)
                        // image: DecorationImage(
                        //     image: AssetImage(
                        //       'assets/new_images/planet-sphere.jpg',
                        //     ),
                        //     fit: BoxFit.fill)
                        ),
                    child: Quiz(
                      answerQuestion: _answerQuestion,
                      questionIndex: _questionIndex,
                      questions: _questions,
                    ),
                  )
                : Result(_totalScore, () {});
  }
}
