import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutkit/myModels/content.dart';
import 'package:flutkit/style/MyCol.dart';
import 'package:flutkit/style/MyContainer.dart';
import 'package:flutkit/style/MyRow.dart';
import 'package:flutkit/style/ScreenMedia.dart';

import 'package:flutkit/utils/SizeConfig.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:provider/provider.dart';
import '../../AppNotifier.dart';
import '../../AppTheme.dart';

class EventSingleEventScreen extends StatefulWidget {
  final String image, date, month, title, subject, time;
  EventSingleEventScreen({
    Key? key,
    required this.image,
    required this.date,
    required this.month,
    required this.title,
    required this.subject,
    required this.time,
  }) : super(key: key);
  @override
  _EventSingleEventScreenState createState() => _EventSingleEventScreenState();
}

class _EventSingleEventScreenState extends State<EventSingleEventScreen> {
  late ThemeData themeData;
  late CustomAppTheme customAppTheme;

  final List<String> imageAssets = [
    'weapon1.png',
    'weapon-2.webp',
    'weapon-3.jpeg',
    'weapon-4.webp'
  ];

  Widget build(BuildContext context) {
    themeData = Theme.of(context);
    return Consumer<AppNotifier>(
      builder: (BuildContext context, AppNotifier value, Widget? child) {
        customAppTheme = AppTheme.getCustomAppTheme(value.themeMode());
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: AppTheme.getThemeFromThemeMode(value.themeMode()),
          home: Scaffold(
            backgroundColor: customAppTheme.bgLayer1,
            body: ListView(
              padding: Spacing.bottom(16),
              children: [
                MyRow(
                  wrapAlignment: WrapAlignment.center,
                  spacing: 0,
                  children: [
                    MyCol(
                      flex: {
                        ScreenMediaType.MD: 12,
                        ScreenMediaType.XL: 8,
                        ScreenMediaType.XXL: 10,
                      },
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            child: Stack(
                              children: [
                                Image(
                                  image: AssetImage(widget.image),
                                  width: MediaQuery.of(context).size.width,
                                  fit: BoxFit.fill,
                                ),
                                Positioned(
                                  child: Container(
                                    margin: Spacing.fromLTRB(24, 48, 24, 0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        InkWell(
                                          onTap: () {
                                            Navigator.pop(context);
                                          },
                                          child: MyContainer.bordered(
                                            paddingAll: 8,
                                            child: Icon(MdiIcons.chevronLeft,
                                                color: themeData
                                                    .colorScheme.onBackground
                                                    .withAlpha(220),
                                                size: 20),
                                          ),
                                        ),
                                        // MyContainer.bordered(
                                        //   paddingAll: 8,
                                        //   child: Icon(MdiIcons.shareOutline,
                                        //       color: themeData
                                        //           .colorScheme.onBackground
                                        //           .withAlpha(220),
                                        //       size: 20),
                                        // ),
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            margin: Spacing.fromLTRB(16, 16, 16, 0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Expanded(
                                      child: Text(
                                        widget.title,
                                        style: AppTheme.getTextStyle(
                                            themeData.textTheme.headline5,
                                            fontSize: 22,
                                            color: themeData
                                                .colorScheme.onBackground,
                                            fontWeight: 600),
                                      ),
                                    ),
                                  ],
                                ),
                                Spacing.height(16),
                                Row(
                                  children: [
                                    Container(
                                      padding: Spacing.all(8),
                                      decoration: BoxDecoration(
                                          color: themeData.colorScheme.primary
                                              .withAlpha(24),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(8))),
                                      child: Icon(
                                        MdiIcons.calendar,
                                        size: 18,
                                        color: themeData.colorScheme.primary,
                                      ),
                                    ),
                                    Expanded(
                                      child: Container(
                                        margin: Spacing.left(16),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              widget.date +
                                                  " ${widget.month}" +
                                                  " 2100",
                                              style: AppTheme.getTextStyle(
                                                  themeData.textTheme.caption,
                                                  fontWeight: 600,
                                                  color: themeData.colorScheme
                                                      .onBackground),
                                            ),
                                            Container(
                                              margin: Spacing.top(2),
                                              child: Text(
                                                widget.time,
                                                style: AppTheme.getTextStyle(
                                                    themeData.textTheme.caption,
                                                    fontSize: 12,
                                                    fontWeight: 500,
                                                    color: themeData.colorScheme
                                                        .onBackground,
                                                    xMuted: true),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                Spacing.height(16),
                                Row(
                                  children: [
                                    Container(
                                      padding: Spacing.all(8),
                                      decoration: BoxDecoration(
                                          color: themeData.colorScheme.primary
                                              .withAlpha(24),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(8))),
                                      child: Icon(
                                        MdiIcons.mapMarkerOutline,
                                        size: 18,
                                        color: themeData.colorScheme.primary,
                                      ),
                                    ),
                                    Expanded(
                                      child: Container(
                                        margin: Spacing.left(16),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Guardians HQ",
                                              style: AppTheme.getTextStyle(
                                                  themeData.textTheme.caption,
                                                  fontWeight: 600,
                                                  color: themeData.colorScheme
                                                      .onBackground),
                                            ),
                                          ],
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                Spacing.height(16),
                                Spacing.height(16),
                                Text(
                                  widget.subject,
                                  style: AppTheme.getTextStyle(
                                      themeData.textTheme.subtitle1,
                                      fontWeight: 700,
                                      color:
                                          themeData.colorScheme.onBackground),
                                ),
                                Spacing.height(16),
                                if (widget.key == ValueKey('ai'))
                                  Content().aiContent(context),
                                if (widget.key == ValueKey('covid'))
                                  Content().covidContent(context),
                                if (widget.key == ValueKey('wepDev'))
                                  Content().warContent(context),
                                if (widget.key == ValueKey('weapons'))
                                  Content().weaponsContent(context),
                                if (widget.key == ValueKey('weapons'))
                                  Spacing.height(16),
                                if (widget.key == ValueKey('weapons'))
                                  Text(
                                    'Images',
                                    style: AppTheme.getTextStyle(
                                        themeData.textTheme.headline5,
                                        fontWeight: 700,
                                        color:
                                            themeData.colorScheme.onBackground),
                                  ),
                                if (widget.key == ValueKey('weapons'))
                                  Spacing.height(16),
                                if (widget.key == ValueKey('weapons'))
                                  CarouselSlider(
                                    options: CarouselOptions(
                                        autoPlay: true, height: 200),
                                    items: [0, 1, 2, 3].map((i) {
                                      return Builder(
                                        builder: (BuildContext context) {
                                          return Container(
                                            width: MediaQuery.of(context)
                                                .size
                                                .width,
                                            margin: EdgeInsets.symmetric(
                                                horizontal: 5.0),
                                            padding: EdgeInsets.all(8.0),
                                            decoration: BoxDecoration(
                                              border: Border.all(),
                                              borderRadius:
                                                  BorderRadius.circular(15.0),
                                              image: DecorationImage(
                                                  image: AssetImage(
                                                      'assets/new_images/${imageAssets[i]}'),
                                                  fit: BoxFit.fill),
                                            ),
                                          );
                                        },
                                      );
                                    }).toList(),
                                  ),
                                if (widget.key == ValueKey('climate'))
                                  Content().climateContent(context),
                                if (widget.key == ValueKey('weapon'))
                                  Content().fightContent(context),
                                if (widget.key == ValueKey('soc'))
                                  Content().popContent(context),
                                if (widget.key == ValueKey('csoc'))
                                  Content().survivalContent(context),
                                if (widget.key == ValueKey('ecoDev'))
                                  Content().ecoDevContent(context),
                              ],
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
