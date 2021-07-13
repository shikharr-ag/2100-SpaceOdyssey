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
          "Popular",
          style: AppTheme.getTextStyle(themeData.textTheme.subtitle1,
              fontWeight: 700, color: themeData.colorScheme.onBackground),
        ),
        Spacing.height(16),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              SingleEvent(
                  title: "Flutter Test",
                  image: './assets/design/pattern-1.png',
                  date: "04",
                  month: "May",
                  subject: "California, US",
                  time: "07:30 PM - 09:00 PM",
                  width: 200),
              Spacing.width(16),
              SingleEvent(
                  title: "Flutter Dev",
                  image: './assets/images/social/post-l1.jpg',
                  date: "29",
                  month: "Feb",
                  subject: "California, US",
                  time: "07:30 PM - 09:00 PM",
                  width: 200),
              Spacing.width(16),
              SingleEvent(
                  title: "Flutter Test",
                  image: './assets/design/pattern-1.png',
                  date: "04",
                  month: "May",
                  subject: "California, US",
                  time: "07:30 PM - 09:00 PM",
                  width: 200),
            ],
          ),
        ),
        Spacing.height(16),
        Text(
          "This Weekend",
          style: AppTheme.getTextStyle(themeData.textTheme.subtitle1,
              fontWeight: 700, color: themeData.colorScheme.onBackground),
        ),
        Spacing.height(16),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              SingleEvent(
                  title: "Flutter Test",
                  image: './assets/design/pattern-1.png',
                  date: "04",
                  month: "May",
                  subject: "California, US",
                  time: "07:30 PM - 09:00 PM",
                  width: 200),
              Spacing.width(16),
              SingleEvent(
                  title: "Flutter Dev",
                  image: './assets/images/social/post-l1.jpg',
                  date: "29",
                  month: "Feb",
                  subject: "California, US",
                  time: "07:30 PM - 09:00 PM",
                  width: 200),
            ],
          ),
        ),
      ],
    );
  }
}
