import 'package:flutkit/utils/constants.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';

import '../AppTheme.dart';

class Content {
  Widget aiContent(BuildContext ctx) {
    final themeData = Theme.of(ctx);
    return RichText(
      text: new TextSpan(
        style: AppTheme.getTextStyle(
          themeData.textTheme.bodyText1,
        ),
        children: [
          TextSpan(
            text: 'Hey there.\n\n',
            style: themeData.textTheme.headline5,
          ),
          TextSpan(
            text:
                "The National Cadet Corps is the youth wing of the Indian Armed Forces with its headquarters in New Delhi, India. It is a part of",
          ),
          TextSpan(
            text: ' The Ministry of Defence.',
            style: AppTheme.getTextStyle(themeData.textTheme.bodyText1,
                fontWeight: 700),
          ),
          TextSpan(
            text:
                ' The NCC aims at developing character, comradeship, discipline, a secular outlook, the spirit of adventure and ideals of selfless service amongst young citizens.',
          ),
          TextSpan(
            text:
                'It aims at creating a pool of organized, trained and motivated youth with leadership qualities in all walks of life, who will serve the Nation regardless of which career they choose.\n\n',
            style: AppTheme.getTextStyle(themeData.textTheme.bodyText1,
                fontWeight: 700),
          ),
          TextSpan(
            text: '  “UNITY AND DISCIPLINE”\n\n',
            style: AppTheme.getTextStyle(themeData.textTheme.bodyText1,
                fontWeight: 700),
          ),
          TextSpan(
            text: 'Our motto in itself summarises what NCC is all about. ',
          ),
          TextSpan(
            text: 'The core life skills needed to be a leader.',
            style: AppTheme.getTextStyle(themeData.textTheme.bodyText1,
                fontWeight: 700),
          ),
          // TextSpan(
          //   text:
          //       ' That’s when the nicotine has finally cleared out of your body and you’ll start getting headaches, cravings, and insomnia.\n Most relapses happen within the first two weeks of quitting. If you can get over that hump, the physical symptoms will start to go away -- but you’ll still be dealing with mental and emotional challenges such as anxiety, depression, and irritability. Those will also taper off after a few weeks.',
          // ),
        ],
      ),
    );
  }

  Widget climateContent(BuildContext ctx) {
    final themeData = Theme.of(ctx);
    return RichText(
      text: new TextSpan(
        style: AppTheme.getTextStyle(
          themeData.textTheme.bodyText1,
        ),
        children: [
          TextSpan(
            text: 'Hey there.\n\n',
            style: themeData.textTheme.headline5,
          ),
          TextSpan(
            text:
                "The expectations that we have from our cadets is minimal and we expect that they will respect them. The primary thing to understand that NCC unlike other clubs or projects is not a part of MAHE but a part of the",
          ),
          TextSpan(
            text: ' The Ministry of Defence.',
            style: AppTheme.getTextStyle(themeData.textTheme.bodyText1,
                fontWeight: 700),
          ),
          TextSpan(
            text: ' Every cadet is registered under the Ministry of Defence.',
            style: AppTheme.getTextStyle(themeData.textTheme.bodyText1,
                fontWeight: 700),
          ),
          TextSpan(
            text:
                '\n\nEvery Sunday, we have NCC activity starting 7:30AM or 8:30AM depending on the activity.',
            style: AppTheme.getTextStyle(themeData.textTheme.bodyText1,
                fontWeight: 700),
          ),
          TextSpan(
            text:
                'If you are going for boat pulling or rigging these activities take place at our unit so you leave early to go there and train with the rest of the cadets from other colleges.',
            style: AppTheme.getTextStyle(themeData.textTheme.bodyText1,
                fontWeight: 700),
          ),
          TextSpan(
            text: ' Otherwise we train in our campus itself.',
          ),
          TextSpan(
            text:
                ' \nThe training session usually consists PT, practicing drills and parade and then followed by theory classes.',
            style: AppTheme.getTextStyle(themeData.textTheme.bodyText1,
                fontWeight: 700),
          ),
          TextSpan(
            text:
                ' \n\nAs a cadet, there are multiple different camps that you can attend which will might take place in different colleges or cities so we expect that you explain to your parents that complete safety is ensured in these activities and are required to be a cadet.',
            style: AppTheme.getTextStyle(themeData.textTheme.bodyText1,
                fontWeight: 700),
          ),
          TextSpan(
            text:
                ' \n\nImportant thing to note is that for all these camps attendance is provided and re examinations are taken for students who missed their acadaemics due to it.',
            style: AppTheme.getTextStyle(themeData.textTheme.bodyText1,
                fontWeight: 700),
          ),
          TextSpan(
            text:
                '\n\nAnother critical requirement from you is to maintain a proper haircut and a clean shave with trimmed nails whenever you appear for any ncc activity',
          ),
          TextSpan(
            text:
                '\n\nYou have to maintain a mandatory 75% attendance in these activities to write your B and C certificate examinations, so we expect you to diligently appear in these and LEARN.',
          ),
        ],
      ),
    );
  }

  Widget navyContent(BuildContext ctx) {
    final themeData = Theme.of(ctx);
    return RichText(
      text: new TextSpan(
        style: AppTheme.getTextStyle(
          themeData.textTheme.bodyText1,
        ),
        children: [
          TextSpan(
            text: 'Hey there..\n\n',
            style: themeData.textTheme.headline5,
          ),
          TextSpan(
            text:
                'NCC is a Tri-Services Organisation this article is about the Naval Wing.',
            style: AppTheme.getTextStyle(themeData.textTheme.bodyText1,
                fontWeight: 700),
          ),
          TextSpan(
            text:
                'The Naval Wing of the NCC teaches a cadet the aspects of being a sea man with our drills matching that of the Indian Navy.\n\n',
          ),
          TextSpan(
            text:
                'The number of activities that you get to be a part of being a Navy cadet is huge. Some of the activities are:\n',
          ),
          TextSpan(
            text:
                'Boat Pulling, Ship Modelling, Weapon Drills, Semaphore, Navigation, Map Reading',
            style: AppTheme.getTextStyle(themeData.textTheme.bodyText1,
                fontWeight: 700),
          ),
          TextSpan(
            text:
                '\nThis is only the tip of the iceberg a myriad of other activities are available being a Navy cadet.',
          ),
        ],
      ),
    );
  }

  Widget covidContent(BuildContext ctx) {
    final themeData = Theme.of(ctx);
    return RichText(
      text: new TextSpan(
        style: AppTheme.getTextStyle(
          themeData.textTheme.bodyText1,
        ),
        children: [
          TextSpan(
            text: 'Hey there..\n\n',
            style: themeData.textTheme.headline5,
          ),
          TextSpan(
            text:
                'There are two certificate examinations in NCC for senior students they being B and C certificate examinations',
            style: AppTheme.getTextStyle(themeData.textTheme.bodyText1,
                fontWeight: 700),
          ),
          TextSpan(
            text:
                'For a student from an engineering background these examinations are not a headache at all and can be easily cleared if NCC activities are attended seriously.\n\n',
          ),
          TextSpan(
            text: 'Coming to the benefits:',
          ),
          TextSpan(
            text: '\n\nHelps in personality development.\n',
          ),
          TextSpan(
            text: 'Helps you in obtaining OLQs.\n',
          ),
          TextSpan(
            text:
                'If you plan on joining the armed forces, clearing the C certificate examinations will help you get a NCC Special Entry which qualifies you to directly appear for SSB to get into the Indian Naval Academy.\n',
          ),
        ],
      ),
    );
  }

  Widget warContent(BuildContext ctx) {
    final themeData = Theme.of(ctx);
    return RichText(
      text: new TextSpan(
        style: AppTheme.getTextStyle(
          themeData.textTheme.bodyText1,
        ),
        children: [
          TextSpan(
            text: 'Hey there..\n\n',
            style: themeData.textTheme.headline5,
          ),
          TextSpan(
            text:
                'Click below to open the form and become a part of the recruitment process. \n\n',
            style: AppTheme.getTextStyle(themeData.textTheme.bodyText1,
                fontWeight: 700),
          ),
          TextSpan(
              text: Constants.regiLink,
              recognizer: TapGestureRecognizer()
                ..onTap = () async {
                  await launchUrlString(Constants.regiLink);
                }),
        ],
      ),
    );
  }
}
