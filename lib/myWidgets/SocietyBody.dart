import 'package:flutkit/utils/SizeConfig.dart';
import 'package:flutter/material.dart';

import '../AppTheme.dart';
import 'SingleEvent.dart';

class SocietyBody extends StatelessWidget {
  const SocietyBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Societal Norms",
          style: AppTheme.getTextStyle(themeData.textTheme.subtitle1,
              fontWeight: 700, color: themeData.colorScheme.onBackground),
        ),
        Spacing.height(16),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              SingleEvent(
                  key: ValueKey('soc'),
                  title: "Change in society",
                  image: 'assets/new_images/society.jpeg',
                  date: "01",
                  month: "Jan",
                  subject: "A brief explanation of current scenario",
                  time: "3 mins read",
                  width: 200),
              Spacing.width(16),
              SingleEvent(
                  key: ValueKey('csoc'),
                  title: "Change in lifestyle",
                  image: 'assets/new_images/lifestyle.jpeg',
                  date: "01",
                  month: "Jan",
                  subject: "A survival of fittest",
                  time: "3 mins read",
                  width: 200),
              Spacing.width(16),
            ],
          ),
        ),
        Spacing.height(16),
      ],
    );
  }
}
