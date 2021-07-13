import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../myWidgets/quiz.dart';
import '../myWidgets/result.dart';

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
          '1.	What is the answer of ("1" + "1"), and what is the response of (1+1) ?',
      'answers': [
        {'text': '"2", 2', 'score': 0},
        {'text': '"11", 11', 'score': 0},
        {'text': '"11", 2', 'score': 1},
        {'text': '"2", 11', 'score': 0},
      ],
    },
    {
      'questionText':
          'Just now, a close friend of yours is reported missing. What will be your emotion?',
      'answers': [
        {'text': 'happy', 'score': 3},
        {'text': 'Excited', 'score': 0},
        {'text': 'Tensed', 'score': 1},
        {'text': 'Long term depression', 'score': 0},
      ],
    },
    {
      'questionText': 'What is always in front of you but can\'t be seen?',
      'answers': [
        {'text': 'The wall', 'score': 0},
        {'text': 'The future ', 'score': 1},
        {'text': 'AI', 'score': 0},
        {'text': 'The past', 'score': 0},
      ],
    },
    {
      'questionText': 'A child is alone and is crying. What will you do first?',
      'answers': [
        {'text': 'Pick him up and console him', 'score': 1},
        {'text': 'Give him medicines', 'score': 0},
        {'text': 'Spank him ', 'score': 0},
        {'text': 'Ignore him as it is none of your business', 'score': 0},
      ],
    },
    {
      'questionText':
          '5.	A student copies and gets the first rank in a test. You are the head-teacher, and you know that the student has copied. What will you do?',
      'answers': [
        {'text': 'Call him and educate him', 'score': 1},
        {'text': 'Congratulate him', 'score': 0},
        {'text': 'Encourage him to do such things', 'score': 0},
        {'text': 'Kill him as he did a wrong thing', 'score': 0},
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
        sharedPreferences.setBool('quiz_status', true);
      }).whenComplete(() => setState(() => isLoading = false));
    });
  }

  void _resetQuiz() {
    Future.sync(() async {
      SharedPreferences sharedPreferences =
          await SharedPreferences.getInstance();
      if (sharedPreferences.containsKey('quiz_status')) {
        quizTaken = sharedPreferences.getBool('quiz_status')!;
      } else
        quizTaken = false;
      sharedPreferences.setBool('first', true);
      setState(() {
        _questionIndex = 0;
        _totalScore = 0;
      });
    });
  }

  void _answerQuestion(int score) {
    // var aBool = true;
    // aBool = false;

    _totalScore += score;

    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      print('We have more questions!');
    } else {
      print('No more questions!');
    }
  }

  @override
  Widget build(BuildContext context) {
    return isLoading
        ? CircularProgressIndicator()
        : quizTaken
            ? Center(
                child: Text(
                    'You have already taken the self assessment.\nOfficials will get in contact with you soon.'),
              )
            : _questionIndex < _questions.length
                ? Quiz(
                    answerQuestion: _answerQuestion,
                    questionIndex: _questionIndex,
                    questions: _questions,
                  )
                : Result(_totalScore, _resetQuiz);
  }
}
