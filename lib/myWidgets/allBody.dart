import 'package:flutkit/utils/SizeConfig.dart';
import 'package:flutter/material.dart';

import '../AppTheme.dart';
import 'SingleEvent.dart';

class AllBody extends StatelessWidget {
  final bool isFirst;
  const AllBody({Key? key, this.isFirst = true}) : super(key: key);

  Widget buildGuideLink(BuildContext context) {
    final themeData = Theme.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "A Guide",
          style: AppTheme.getTextStyle(themeData.textTheme.subtitle1,
              fontWeight: 700, color: themeData.colorScheme.onBackground),
        ),
        Spacing.height(16),
        SingleEvent(
            key: ValueKey('Guide'),
            title: "What is this website ?",
            image: 'assets/new_images/whatisiot.jpg',
            date: "01",
            month: "Jan",
            subject: "A brief explanation of the purpose this website serves",
            time: "3 mins read",
            width: 200),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        buildGuideLink(context),
        Spacing.height(16),
        Text(
          "Headlines",
          style: AppTheme.getTextStyle(themeData.textTheme.subtitle1,
              fontWeight: 700, color: themeData.colorScheme.onBackground),
        ),
        Spacing.height(16),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              SingleEvent(
                  key: ValueKey('ai'),
                  title: "Rise of AI",
                  image: 'assets/new_images/ai.jpeg',
                  date: "01",
                  month: "Jan",
                  subject: "A brief explanation of current scenario",
                  time: "3 mins read",
                  width: 200),
              Spacing.width(16),
              SingleEvent(
                  key: ValueKey('covid'),
                  title: "The COVID Timeline",
                  image: 'assets/new_images/covid.png',
                  date: "31",
                  month: "Dec",
                  subject: "A small description of how we fought COVID.",
                  time: "2 mins read",
                  width: 200),
              Spacing.width(16),
              SingleEvent(
                  key: ValueKey('wepDev'),
                  title: "Development of War Machines",
                  image: 'assets/new_images/weapon-3.jpeg',
                  date: "20",
                  month: "Dec",
                  subject: "Warfare techniques developed over the century.",
                  time: "4 mins read",
                  width: 200),
              Spacing.width(16),
              SingleEvent(
                  key: ValueKey('weapons'),
                  title: "Weapons to fight the AI",
                  image: 'assets/new_images/wep.jpg',
                  date: "20",
                  month: "Dec",
                  subject:
                      "Warfare techniques developed to fight the uprising.",
                  time: "4 mins read",
                  width: 200),
              Spacing.width(16),
              SingleEvent(
                  key: ValueKey('climate'),
                  title: "The COVID Effect",
                  image: 'assets/new_images/resp.png',
                  date: "31",
                  month: "Dec",
                  subject:
                      "A small description of how COVID changed the society.",
                  time: "2 mins read",
                  width: 200),
              Spacing.width(16),
            ],
          ),
        ),
        Spacing.height(16),
        Text(
          "Note",
          style: AppTheme.getTextStyle(themeData.textTheme.subtitle1,
              fontWeight: 700, color: themeData.colorScheme.onBackground),
        ),
        Spacing.height(16),
        Container(
          margin: EdgeInsets.all(8.0),
          padding: EdgeInsets.all(8.0),
          child: Text(
            'Please go to specific topics from the buttons above to read more content :)',
            style: AppTheme.getTextStyle(themeData.textTheme.headline5,
                fontWeight: 700,
                color: themeData.colorScheme.onBackground,
                fontSize: 25),
          ),
        ),
      ],
    );
  }
}
