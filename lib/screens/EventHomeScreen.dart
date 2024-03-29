import 'package:flutkit/myWidgets/ClimateBody.dart';
import 'package:flutkit/myWidgets/EconomicBody.dart';
import 'package:flutkit/myWidgets/SocietyBody.dart';
import 'package:flutkit/myWidgets/WarfareBody.dart';
import 'package:flutkit/myWidgets/allBody.dart';

import 'package:flutkit/style/MyCard.dart';
import 'package:flutkit/style/MyContainer.dart';
import 'package:flutkit/utils/SizeConfig.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:provider/provider.dart';

import 'package:shared_preferences/shared_preferences.dart';

import '../AppNotifier.dart';
import '../AppTheme.dart';

import 'EventFullApp.dart';
import 'EventSingleEventScreen.dart';

class EventHomeScreen extends StatefulWidget {
  EventHomeScreen();
  @override
  _EventHomeScreenState createState() => _EventHomeScreenState();
}

class _EventHomeScreenState extends State<EventHomeScreen> {
  late ThemeData themeData;
  late CustomAppTheme customAppTheme;
  bool isFirst = true;
  int? selectedCategory = 0;
  bool isLoading = true;
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();

    print("Called init event home");
    SchedulerBinding.instance!.addPostFrameCallback((timeStamp) {
      Future.sync(() async {
        SharedPreferences sharedPreferences =
            await SharedPreferences.getInstance();
        if (sharedPreferences.containsKey('first')) {
          isFirst = sharedPreferences.getBool('first')!;
        } else
          isFirst = true;
        sharedPreferences.setBool('first', false);
      }).whenComplete(() {
        setState(() {
          isLoading = false;
        });
        if (isFirst) {
          showModalBottomSheet(
            context: context,
            builder: (context) => Container(
              height: 250,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15.0),
                    topRight: Radius.circular(15.0)),
                color: Colors.white,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Spacing.height(20.0),
                  Text(
                    'Guardian , please take the Z.E.U.S Virus Self Assessment',
                    style: Theme.of(context).textTheme.headline5,
                  ),
                  Spacing.height(10.0),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'This self assessment will determine if the traces of the computer virus are detected in your implanted nanochip, based on the options that you choose. This is a necessary step to ensure your fidelity to mankind.',
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                    ),
                    child: const Text('Proceed'),
                    onPressed: () => Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => EventFullApp(index: 1),
                      ),
                    ),
                  ),
                  TextButton(
                    child: const Text('Skip'),
                    onPressed: () => Navigator.pop(context),
                  ),
                ],
              ),
            ),
          );
        }
      });
    });
  }

  Widget build(BuildContext context) {
    themeData = Theme.of(context);
    return Consumer<AppNotifier>(
      builder: (BuildContext context, AppNotifier value, Widget? child) {
        customAppTheme = AppTheme.getCustomAppTheme(value.themeMode());
        return isLoading
            ? CircularProgressIndicator()
            : SafeArea(
                child: Scaffold(
                    key: _scaffoldKey,
                    resizeToAvoidBottomInset: false,
                    body: Container(
                      color: customAppTheme.bgLayer1,
                      child: ListView(
                        padding: Spacing.fromLTRB(24, 16, 24, 0),
                        children: [
                          Row(
                            children: [
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Welcome, Guardians.",
                                      style: AppTheme.getTextStyle(
                                          themeData.textTheme.bodyText2,
                                          fontWeight: 500,
                                          letterSpacing: 0,
                                          color: themeData
                                              .colorScheme.onBackground),
                                    ),
                                    Container(
                                      child: Text(
                                        "Century in Glimpse",
                                        style: AppTheme.getTextStyle(
                                            themeData.textTheme.headline5,
                                            fontSize: 24,
                                            fontWeight: 700,
                                            letterSpacing: -0.3,
                                            color: themeData
                                                .colorScheme.onBackground),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Stack(
                                children: [
                                  MyCard.bordered(
                                    paddingAll: 8,
                                    child: Icon(
                                      MdiIcons.bellOutline,
                                      size: 18,
                                      color: themeData.colorScheme.onBackground
                                          .withAlpha(160),
                                    ),
                                  ),
                                  Positioned(
                                    right: 6,
                                    top: 6,
                                    child: Container(
                                      width: 6,
                                      height: 6,
                                      decoration: BoxDecoration(
                                          color: customAppTheme.colorError,
                                          shape: BoxShape.circle),
                                    ),
                                  )
                                ],
                              ),
                              Spacing.width(16),
                              Container(
                                color: customAppTheme.bgLayer1,
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Text(
                                      "Dark Theme",
                                      style: AppTheme.getTextStyle(
                                          themeData.textTheme.subtitle2,
                                          fontWeight: 600),
                                    ),
                                    Switch(
                                      value: value.themeMode() != 1,
                                      onChanged: (bool value) {
                                        Provider.of<AppNotifier>(context,
                                                listen: false)
                                            .updateTheme(value ? 2 : 1);
                                      },
                                      activeColor:
                                          themeData.colorScheme.primary,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Spacing.height(16),

                          Container(
                            padding: Spacing.y(16),
                            child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                children: [
                                  singleCategory(
                                      title: "All",
                                      iconData: MdiIcons.ballotOutline,
                                      index: 0),
                                  Spacing.width(16),
                                  singleCategory(
                                      title: "World Economy",
                                      iconData: MdiIcons.cash,
                                      index: 1),
                                  Spacing.width(16),
                                  singleCategory(
                                      title: "Societal Guidelines",
                                      iconData: MdiIcons.naturePeople,
                                      index: 2),
                                  Spacing.width(16),
                                  singleCategory(
                                      title: "Warfare",
                                      iconData: MdiIcons.sword,
                                      index: 3),
                                  Spacing.width(16),
                                  singleCategory(
                                      title: "Climate",
                                      iconData: MdiIcons.weatherCloudy,
                                      index: 4),
                                ],
                              ),
                            ),
                          ),
                          if (selectedCategory == 0)
                            AllBody(
                              isFirst: isFirst,
                            ),
                          if (selectedCategory == 1) EconomicBody(),
                          if (selectedCategory == 2) SocietyBody(),
                          if (selectedCategory == 3) WarfareBody(),
                          if (selectedCategory == 4) ClimateBody(),

                          // if (selectedCategory == 0) AllBody(),
                        ],
                      ),
                    )),
              );
      },
    );
  }

  Widget singleCategory(
      {IconData? iconData, required String title, int? index}) {
    bool isSelected = (selectedCategory == index);
    return MyCard(
      onTap: () {
        if (!isSelected) {
          setState(() {
            selectedCategory = index;
          });
        }
      },
      color:
          isSelected ? themeData.colorScheme.primary : customAppTheme.bgLayer1,
      border:
          Border.all(color: customAppTheme.bgLayer2, width: isSelected ? 0 : 1),
      bordered: isSelected,
      shadow: MyShadow(
          elevation: isSelected ? 4 : 0,
          color: themeData.colorScheme.primary.withAlpha(80)),
      padding: Spacing.fromLTRB(16, 8, 16, 8),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            iconData,
            size: 22,
            color: isSelected
                ? themeData.colorScheme.onPrimary
                : themeData.colorScheme.onBackground,
          ),
          Container(
            margin: Spacing.left(8),
            child: Text(
              title,
              style: AppTheme.getTextStyle(themeData.textTheme.bodyText2,
                  color: isSelected
                      ? themeData.colorScheme.onPrimary
                      : themeData.colorScheme.onBackground),
            ),
          )
        ],
      ),
    );
  }

  Widget singleEvent(
      {required String image,
      required String date,
      required String month,
      required String title,
      required String subject,
      required String time,
      required double width}) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => EventSingleEventScreen(
                    image: image,
                    date: date,
                    month: month,
                    title: title,
                    subject: subject,
                    time: time)));
      },
      child: MyContainer.bordered(
        clipBehavior: Clip.hardEdge,
        paddingAll: 0,
        width: width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(8),
                        topRight: Radius.circular(8)),
                    child: Image(
                      image: AssetImage(image),
                      fit: BoxFit.cover,
                      width: width,
                      height: width * 0.55,
                    ),
                  ),
                  Positioned(
                    bottom: -16,
                    left: 16,
                    child: MyCard(
                      shadow: MyShadow(elevation: 16, darkShadow: true),
                      padding: Spacing.fromLTRB(8, 4, 8, 4),
                      child: Column(
                        children: [
                          Text(
                            date,
                            style: AppTheme.getTextStyle(
                                themeData.textTheme.bodyText2,
                                color: themeData.colorScheme.primary,
                                fontWeight: 600),
                            textAlign: TextAlign.center,
                          ),
                          Text(
                            month,
                            style: AppTheme.getTextStyle(
                                themeData.textTheme.caption,
                                fontSize: 11,
                                color: themeData.colorScheme.primary,
                                fontWeight: 600),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              padding: Spacing.fromLTRB(16, 24, 16, 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: AppTheme.getTextStyle(themeData.textTheme.bodyText2,
                        color: themeData.colorScheme.onBackground,
                        fontWeight: 600),
                  ),
                  Container(
                    margin: Spacing.top(8),
                    child: Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                subject,
                                style: AppTheme.getTextStyle(
                                    themeData.textTheme.caption,
                                    fontSize: 12,
                                    color: themeData.colorScheme.onBackground,
                                    fontWeight: 500,
                                    xMuted: true),
                              ),
                              Container(
                                margin: Spacing.top(2),
                                child: Text(
                                  time,
                                  style: AppTheme.getTextStyle(
                                      themeData.textTheme.caption,
                                      fontSize: 10,
                                      color: themeData.colorScheme.onBackground,
                                      fontWeight: 500,
                                      xMuted: true),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          child: Icon(
                            MdiIcons.heartOutline,
                            size: 20,
                            color: themeData.colorScheme.primary,
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
