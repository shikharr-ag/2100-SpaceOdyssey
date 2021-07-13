import 'package:flutter/material.dart';

import '../AppTheme.dart';

class GuideScreen extends StatelessWidget {
  GuideScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);
    final text = RichText(
      text: new TextSpan(
        style: AppTheme.getTextStyle(themeData.textTheme.bodyText1,
            color: Colors.white),
        children: [
          TextSpan(
            text: 'Hey there, Guardians.\n\n',
            style: themeData.textTheme.headline5,
          ),
          TextSpan(
            text: 'A lot has happened since you went into',
          ),
          TextSpan(
            text: ' hibernation.',
            style: AppTheme.getTextStyle(themeData.textTheme.bodyText1,
                color: Colors.white, fontWeight: 700),
          ),
          TextSpan(
            text:
                'Not to make it overwhelming for you to grasp all the news and information, our research team has broadly divided the happenings into five main parts, which are present in the navbar on the left.\n\n',
          ),
          TextSpan(
            text:
                ' We have displayed the most critical news under the headlines section on the homepage to give you a glimpse of how bad the scenario is. To get a structured approach to get to know things, we encourage you to go through each section in the given order starting from the headlines section. Else, you can also start from any unit according to your wish and scan the entire website.\n\n',
            // style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          TextSpan(
            text: 'May We Succeed!',
            style: AppTheme.getTextStyle(themeData.textTheme.bodyText1,
                color: Colors.white, fontWeight: 700),
          ),
        ],
      ),
    );

    return Stack(
      fit: StackFit.expand,
      children: [
        Container(
          padding: const EdgeInsets.all(10.0),
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/new_images/Hologram.png'),
                fit: BoxFit.fill),
          ),
          alignment: Alignment.center,
          child: text,
        ),
        // Container(
        //   alignment: Alignment.center,
        //   child: Text(
        //       'Hey there, Guardians. A lot has happened since you went into hibernation. Not to make it overwhelming for you to grasp all the news and information, our research team has broadly divided the happenings into five main parts, which are present in the navbar on the left. We have displayed the most critical news under the headlines section on the homepage to give you a glimpse of how bad the scenario is. To get a structured approach to get to know things, we encourage you to go through each section in the given order starting from the headlines section. Else, you can also start from any unit according to your wish and scan the entire website.May We Succeed!'),
        // ),
      ],
    );
  }
}
