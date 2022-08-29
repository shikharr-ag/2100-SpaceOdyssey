import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Constants with ChangeNotifier {
  static const List<Color> nccColors = [
    Color.fromRGBO(237, 50, 55, 1),
    Color.fromRGBO(62, 64, 149, 1),
    Color.fromRGBO(0, 175, 239, 1)
  ];
  static const List<Color> triColors = [
    Colors.orange,
    Colors.white,
    Colors.green
  ];

  static const int posters = 22;

  static const String smokingUrl =
      'https://www.aafp.org/pubs/afp/issues/2000/0801/p579.html#:~:text=CAGE%20Questionnaire%20Modified%20for%20Smoking%20Behavior*&text=Have%20you%20ever%20felt%20a,you%20ought%20to%20quit%20smoking%3F';

  static const String instaLink =
      'https://instagram.com/mit_navalncc?igshid=YmMyMTA2M2Y=';
  static const String nccSongLink =
      'https://www.youtube.com/watch?v=LVRBfHXcKzo';

  static const String regiLink =
      'https://docs.google.com/forms/d/e/1FAIpQLSeAADMHvRUqQ78es-JLfAlvQHa22T2XfubR3qPljpwBLqdsaw/viewform';
}
