/*
* File : Shopping App
* Version : 1.0.0
* */

import 'package:flutkit/apps/event/EventCreateScreen.dart';
import 'package:flutkit/screens/EventHomeScreen.dart';
import 'package:flutkit/apps/event/EventProfileScreen.dart';
import 'package:flutkit/apps/event/EventTicketScreen.dart';
import 'package:flutkit/apps/event/EventUpcomingScreen.dart';
import 'package:flutkit/screens/GuideScreen.dart';
import 'package:flutkit/screens/QuizPage.dart';
import 'package:flutkit/widgets/custom/MyBottomNavigation.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:provider/provider.dart';

import '../../AppNotifier.dart';
import '../../AppTheme.dart';

class EventFullApp extends StatefulWidget {
  final int index;
  EventFullApp({this.index = 0});
  @override
  _EventFullAppState createState() => _EventFullAppState();
}

class _EventFullAppState extends State<EventFullApp>
    with SingleTickerProviderStateMixin {
  late ThemeData themeData;
  late CustomAppTheme customAppTheme;
  int numberVisited = 0;

  Widget build(BuildContext context) {
    numberVisited++;
    print("number $numberVisited");
    return Consumer<AppNotifier>(
      builder: (BuildContext context, AppNotifier value, Widget? child) {
        themeData = AppTheme.getThemeFromThemeMode(value.themeMode());
        customAppTheme = AppTheme.getCustomAppTheme(value.themeMode());
        return MyBottomNavigation(
          icons: [
            MdiIcons.homeOutline,
            // MdiIcons.plus,
            MdiIcons.graphOutline,
            MdiIcons.shieldOutline,
            MdiIcons.bookAccountOutline,
          ],
          activeIcons: [
            MdiIcons.home,
            //MdiIcons.plus,
            MdiIcons.graph,
            MdiIcons.shield,
            MdiIcons.bookAccount
            //MdiIcons.account,
          ],
          screens: [
            EventHomeScreen(),
            // EventCreateScreen(),
            EventUpcomingScreen(),
            QuizPage(),
            GuideScreen(),
            // EventProfileScreen(),
          ],
          titles: ["Home", "Timeline", "Z.E.U.S Quiz", "Guide"],
          color: themeData.colorScheme.onBackground,
          activeColor: themeData.colorScheme.primary,
          navigationBackground: customAppTheme.bgLayer1,
          brandTextColor: themeData.colorScheme.onBackground,
          initialIndex: widget.index,
          verticalDividerColor: customAppTheme.border2,
          bottomNavigationElevation: 8,
        );
      },
    );
  }
}
