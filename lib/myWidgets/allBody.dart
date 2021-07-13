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
