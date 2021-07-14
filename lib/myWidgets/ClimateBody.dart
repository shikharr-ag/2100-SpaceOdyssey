import 'package:flutkit/utils/SizeConfig.dart';
import 'package:flutter/material.dart';

import '../AppTheme.dart';
import 'SingleEvent.dart';

class ClimateBody extends StatelessWidget {
  const ClimateBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Climate",
          style: AppTheme.getTextStyle(themeData.textTheme.subtitle1,
              fontWeight: 700, color: themeData.colorScheme.onBackground),
        ),
        Spacing.height(16),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              Spacing.width(16),
              SingleEvent(
                  key: ValueKey('covid'),
                  title: "The COVID Timeline",
                  image: 'assets/new_images/covid.png',
                  date: "20",
                  month: "Feb",
                  subject: "A small description of how we fought COVID.",
                  time: "2 mins read",
                  width: 200),
              Spacing.width(16),
              SingleEvent(
                  key: ValueKey('climate'),
                  title: "The COVID Effect",
                  image: 'assets/new_images/resp.png',
                  date: "22",
                  month: "Feb",
                  subject:
                      "A small description of how COVID changed the society.",
                  time: "2 mins read",
                  width: 200),
            ],
          ),
        ),
        Spacing.height(16),
      ],
    );
  }
}
