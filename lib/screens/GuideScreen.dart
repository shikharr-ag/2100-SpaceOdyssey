import 'dart:io';

import 'package:flutkit/utils/constants.dart';
import 'package:flutkit/utils/gradient_text.dart';
import 'package:flutter/material.dart';

import '../AppTheme.dart';

class GuideScreen extends StatelessWidget {
  GuideScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);
    final text = RichText(
      text: new TextSpan(
        style: AppTheme.getTextStyle(themeData.textTheme.bodyText1,
            color: Colors.white),
        children: [
          TextSpan(
            text: 'We the cadets at',
          ),
          TextSpan(
            text: ' 6 KAR NAVAL NCC,',
            style: AppTheme.getTextStyle(themeData.textTheme.bodyText1,
                color: Colors.white, fontWeight: 700),
          ),
          TextSpan(
            text: 'on this ',
          ),
          TextSpan(
            text: 'World No-Tobacco Day,',
            style: AppTheme.getTextStyle(themeData.textTheme.bodyText1,
                color: Colors.white, fontWeight: 700),
          ),
          TextSpan(
              text:
                  'have come up with this website where you may find different articles made by us on different harmful effects and facts about '
              // ' We have displayed the most critical news under the headlines section on the homepage to give you a glimpse of how bad the scenario is. To get a structured approach to get to know things, we encourage you to go through each section in the given order starting from the headlines section. Else, you can also start from any unit according to your wish and scan the entire website.\n\n',
              // style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
          TextSpan(
            text: 'Nicotine Addiction and Cigarette Smoking.',
            style: AppTheme.getTextStyle(themeData.textTheme.bodyText1,
                color: Colors.white, fontWeight: 700),
          ),
          TextSpan(
              text:
                  'Along with a medically proven Self Analysis Quiz that you can take to identify the state of your nicotine dependence.\n\n'),
          TextSpan(
              text:
                  'Let us all take an Oath and help ourselves and the YOUTH of our country.\n\n'),
          TextSpan(text: 'Let us eradicate SMOKING.'),
          // TextSpan(
          //   text: '!',
          //   style: AppTheme.getTextStyle(themeData.textTheme.bodyText1,
          //       color: Colors.white, fontWeight: 700),
          // ),
        ],
      ),
    );

    return Container(
      padding: const EdgeInsets.all(10.0),
      width: double.infinity,
      decoration:
          BoxDecoration(gradient: LinearGradient(colors: Constants.nccColors)
              // image: DecorationImage(
              //     image: AssetImage('assets/new_images/Hologram.png'),
              //     fit: BoxFit.fill),
              ),
      alignment: Alignment.center,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Platform.isIOS
            //     ? Text(
            //         'A Warm Welcome to the Youth.\n\n',
            //         style: themeData.textTheme.headline5!
            //             .copyWith(color: Colors.white),
            //       )
            //     :
            GradientText('A Warm Welcome to the Youth.\n\n',
                style: themeData.textTheme.headline5!,
                gradient: LinearGradient(colors: Constants.triColors)),
            text,
            // Platform.isIOS
            //     ? Text(
            //         'JAI HIND !',
            //         style: themeData.textTheme.headline5!
            //             .copyWith(color: Colors.white),
            //       )
            //     :
            GradientText(
              'JAI HIND !',
              style: themeData.textTheme.headline5!,
              gradient: LinearGradient(colors: Constants.triColors),
            ),
          ],
        ),
      ),
    );
  }
}
