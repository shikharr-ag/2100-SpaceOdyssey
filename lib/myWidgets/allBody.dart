import 'package:flutkit/utils/SizeConfig.dart';
import 'package:flutter/material.dart';

import '../AppTheme.dart';
import 'SingleEvent.dart';

class AllBody extends StatelessWidget {
  const AllBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
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
                  title: "War Over AI",
                  image: './assets/design/pattern-1.png',
                  date: "01",
                  month: "Jan",
                  subject: "A brief explanation of current scenario",
                  time: "3 mins read",
                  width: 200),
              Spacing.width(16),
              SingleEvent(
                  title: "Guardians To The Rescue",
                  image: './assets/images/social/post-l1.jpg',
                  date: "31",
                  month: "Dec",
                  subject: "New Delhi, India",
                  time: "2 mins read",
                  width: 200),
              Spacing.width(16),
              SingleEvent(
                  title: "When will all this be over?",
                  image: './assets/design/pattern-1.png',
                  date: "20",
                  month: "Dec",
                  subject: "London, UK",
                  time: "4 mins read",
                  width: 200),
            ],
          ),
        ),
      ],
    );
  }
}
