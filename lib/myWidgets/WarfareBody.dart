import 'package:flutkit/utils/SizeConfig.dart';
import 'package:flutter/material.dart';

import '../AppTheme.dart';
import 'SingleEvent.dart';

class WarfareBody extends StatelessWidget {
  const WarfareBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Warfare",
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
                  key: ValueKey('weapon'),
                  title: "How to fight the AI",
                  image: 'assets/new_images/aivhu.png',
                  date: "20",
                  month: "Dec",
                  subject:
                      "In a nutshell, a description as to how to fight the uprising.",
                  time: "4 mins read",
                  width: 200),
            ],
          ),
        ),
        Spacing.height(16),
      ],
    );
  }
}
