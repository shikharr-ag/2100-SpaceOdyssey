import 'package:flutkit/utils/SizeConfig.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:url_launcher/url_launcher_string.dart';

import '../AppTheme.dart';
import '../utils/constants.dart';
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
              fontWeight: 700, color: Colors.white),
        ),
        Spacing.height(16),
        SingleEvent(
          key: ValueKey('Guide'),
          title: "What is this website ?",
          image: 'assets/new_images/whatisiot.jpg',
          subject: "A brief explanation of the purpose this website serves",
          time: "3 mins read",
          width: 200,
          link: '',
        ),
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
          "Articles",
          style: AppTheme.getTextStyle(themeData.textTheme.subtitle1,
              fontWeight: 700, color: Colors.white),
        ),
        Spacing.height(16),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              SingleEvent(
                key: ValueKey('ai'),
                title: "What is NCC ?",
                image: 'assets/new_images/ncc_nobg.png',
                subject: "A brief explanation about NCC.",
                time: "3 mins read",
                width: 200,
                link: 'https://indiancc.nic.in/',
              ),
              Spacing.width(10),
              SingleEvent(
                  key: ValueKey('weapons'),
                  title: "The Naval Wing of NCC",
                  image: 'assets/new_images/navy.png',
                  subject: "A brief explanation about the Naval Wing of NCC",
                  time: "4 mins read",
                  link: '',
                  width: 200),
              Spacing.width(10),
              SingleEvent(
                key: ValueKey('covid'),
                title: "NCC Examinations and Benefits",
                image: 'assets/new_images/benefits.png',
                subject:
                    "A brief explanation on the certificate examinations and benefits of NCC.",
                time: "3 mins read",
                width: 200,
                link: 'https://indiancc.nic.in/eligibility-certificate-exams/',
              ),
              Spacing.width(10),
              SingleEvent(
                key: ValueKey('wepDev'),
                title: "Register Now",
                image: 'assets/new_images/regi.png',
                subject:
                    "Here you can find the registration form to be a part of the recruitment process for NCC",
                time: "1 mins read",
                width: 200,
                link:
                    'https://www.verywellmind.com/nicotine-facts-you-should-know-2825019',
              ),
              Spacing.width(10),

              SingleEvent(
                  key: ValueKey('climate'),
                  title: "Expectations from our Cadet",
                  image: 'assets/new_images/expectations.jpg',
                  subject:
                      "A small description of what we expect from our cadets.",
                  time: "2 mins read",
                  link: '',
                  width: 200),
              // Spacing.width(16),
            ],
          ),
        ),
        Spacing.height(30),
        Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              new Center(
                child: new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    new Container(
                      height: 45.0,
                      width: 45.0,
                      child: Center(
                        child: Card(
                          elevation: 5.0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                                25.0), // half of height and width of Image
                          ),
                          child: IconButton(
                            icon: new Icon(
                              Icons.audiotrack,
                              size: 20.0,
                            ),
                            color: Color(0xFF162A49),
                            onPressed: () {
                              launchUrlString(Constants.nccSongLink);
                            },
                          ),
                        ),
                      ),
                    ),
                    new Container(
                      height: 45.0,
                      width: 45.0,
                      child: Center(
                        child: Card(
                          elevation: 5.0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                                25.0), // half of height and width of Image
                          ),
                          child: IconButton(
                            icon: new Icon(
                              MdiIcons.instagram,
                              size: 20.0,
                            ),
                            color: Color(0xFF162A49),
                            onPressed: () {
                              launchUrlString(Constants.instaLink);
                            },
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Spacing.height(10),
              FittedBox(
                child: Text(
                  'Copyright ©2022, All Rights Reserved. 6KAR NAVAL NCC ( MIT SUB UNIT )',
                  style: TextStyle(
                      fontWeight: FontWeight.w300,
                      fontSize: 12.0,
                      color: Colors.white),
                ),
              ),
              Spacing.height(10),
              FittedBox(
                child: Text(
                  'Made by Cadet Shikhar Agarwal',
                  style: TextStyle(
                      fontWeight: FontWeight.w300,
                      fontSize: 12.0,
                      color: Colors.white),
                ),
              ),
            ]),
      ],
    );
  }
}
