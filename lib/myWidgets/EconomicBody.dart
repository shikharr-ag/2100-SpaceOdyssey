import 'package:flutkit/utils/SizeConfig.dart';
import 'package:flutter/material.dart';

import '../AppTheme.dart';
import 'SingleEvent.dart';

class EconomicBody extends StatelessWidget {
  const EconomicBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Economic Development",
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
                  key: ValueKey('ecoDev'),
                  title: "The Economic Development",
                  image: 'assets/new_images/ecomic-dvp.jpeg',
                  date: "31",
                  month: "Dec",
                  subject: "A small description of how economy developed.",
                  time: "2 mins read",
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
