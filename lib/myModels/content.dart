import 'package:flutter/material.dart';

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
                "Millions of people know from personal experience that smoking is a tough habit to kick. The reason is that nicotine is addictive. Even though nicotine’s high isn’t as dramatic as cocaine or heroin’s, it’s equally as addictive as those illegal drugs. And ",
          ),
          TextSpan(
            text: 'nicotine withdrawal is very real. ',
            style: AppTheme.getTextStyle(themeData.textTheme.bodyText1,
                fontWeight: 700),
          ),
          TextSpan(
            text:
                'Nicotine affects all areas of your body, from your heart and blood vessels to your hormones, metabolism, and brain. When you don’t have it anymore, you go through withdrawal. You’ll physically crave that nicotine hit and become irritable if you can’t have it.',
          ),
          TextSpan(
            text:
                'Nicotine withdrawal usually lasts only a month or so, but you could be fighting the mental battle against cigarettes for a long time.\n\n',
            style: AppTheme.getTextStyle(themeData.textTheme.bodyText1,
                fontWeight: 700),
          ),
          TextSpan(
            text: '  “How Nicotine Withdrawal Works ?”\n\n',
            style: AppTheme.getTextStyle(themeData.textTheme.bodyText1,
                fontWeight: 700),
          ),
          TextSpan(
            text:
                'Nicotine withdrawal involves physical, mental, and emotional symptoms. The first week, ',
          ),
          TextSpan(
            text: 'especially days 3 through 5, is always the worst.',
            style: AppTheme.getTextStyle(themeData.textTheme.bodyText1,
                color: Colors.red, fontWeight: 700),
          ),
          TextSpan(
            text:
                ' That’s when the nicotine has finally cleared out of your body and you’ll start getting headaches, cravings, and insomnia.\n Most relapses happen within the first two weeks of quitting. If you can get over that hump, the physical symptoms will start to go away -- but you’ll still be dealing with mental and emotional challenges such as anxiety, depression, and irritability. Those will also taper off after a few weeks.',
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
                'Cigarette smoking harms nearly every organ of the body, causes many diseases, and reduces the health of smokers in general.',
            style: AppTheme.getTextStyle(themeData.textTheme.bodyText1,
                fontWeight: 700),
          ),
          TextSpan(
            text:
                'It is one of the major causes of death and disease in India and accounts for nearly 1.35  million deaths every year. India is also the second largest consumer and producer of tobacco. A variety of tobacco products are available at very low prices in the country.\n\n',
          ),
          TextSpan(
            text:
                'Non-communicable diseases (NCDs) like ischemic heart diseases, cancers, diabetes, chronic respiratory diseases are the leading causes of death globally and associated with tobacco use.',
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
            text: 'Here are some surprising facts: \n\n',
            style: AppTheme.getTextStyle(themeData.textTheme.bodyText1,
                fontWeight: 700),
          ),
          TextSpan(
              text:
                  '1. Nicotine can be absorbed through the skin, which is the delivery method with the nicotine patch. A spill of electronic cigarette nicotine solution (known as e-juice) can be hazardous for this reason.\n'),
          TextSpan(
            text:
                '2. Nicotine may decrease the ability of sperm to fertilize eggs by as much as 75%.\n',
          ),
          TextSpan(
            text:
                '3. Nicotine slows the production of bone-producing cells called osteoblasts. This prolongs healing when bones are broken.\n',
          ),
          TextSpan(
            text: '4. Nicotine is at least as difficult to give up as heroin.',
            style: AppTheme.getTextStyle(themeData.textTheme.bodyText1,
                color: Colors.red, fontWeight: 700),
          ),
        ],
      ),
    );
  }
}
