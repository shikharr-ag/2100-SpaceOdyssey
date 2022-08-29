import 'package:flutkit/myModels/content.dart';
import 'package:flutkit/style/MyCol.dart';
import 'package:flutkit/style/MyContainer.dart';
import 'package:flutkit/style/MyRow.dart';
import 'package:flutkit/style/ScreenMedia.dart';

import 'package:flutkit/utils/SizeConfig.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher_string.dart';
import '../../AppNotifier.dart';
import '../../AppTheme.dart';

class EventSingleEventScreen extends StatefulWidget {
  final String image, date, month, title, subject, time, link;
  EventSingleEventScreen({
    Key? key,
    required this.image,
    this.date = '31',
    this.month = 'May',
    required this.title,
    required this.subject,
    required this.time,
    required this.link,
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
                                Align(
                                  alignment: Alignment.center,
                                  child: Image(
                                    image: AssetImage(widget.image),
                                    width: 300,
                                    fit: BoxFit.fill,
                                  ),
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
                                                  " 2022",
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
                                        MdiIcons.read,
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
                                            TextButton(
                                              child: Text(
                                                'Read more..',
                                                style: AppTheme.getTextStyle(
                                                    themeData.textTheme.caption,
                                                    fontWeight: 600,
                                                    color: themeData.colorScheme
                                                        .onBackground),
                                              ),
                                              onPressed: () {
                                                launchUrlString(widget.link);
                                              },
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
                                if (widget.key == ValueKey('covid')) ...[
                                  Content().covidContent(context),
                                  // const SizedBox(
                                  //   height: 20,
                                  // ),
                                  // ConstrainedBox(
                                  //     constraints: BoxConstraints(
                                  //         maxHeight: 200, maxWidth: 200),
                                  //     child: Image.asset(
                                  //         'assets/new_images/cig_effects.png')),
                                ],
                                if (widget.key == ValueKey('wepDev'))
                                  Content().warContent(context),
                                if (widget.key == ValueKey('weapons'))
                                  Content().navyContent(context),
                                if (widget.key == ValueKey('climate'))
                                  Content().climateContent(context),
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
