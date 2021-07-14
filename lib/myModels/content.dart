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
            text: 'Hey there, Guardians.\n\n',
            style: themeData.textTheme.headline5,
          ),
          TextSpan(
            text:
                'The uprise started when the Big Five - Amazon, Google, Apple, Microsoft and Facebook decided to start working on an AI, they called',
          ),
          TextSpan(
            text: '  FastAF',
            style: AppTheme.getTextStyle(themeData.textTheme.bodyText1,
                fontWeight: 700),
          ),
          TextSpan(
            text:
                '(literally translating to Fast As F***). They planned to create an AI whose algorithm could teach itself at an exponential rate and help in the development of science hitherto unimagined of. Many scientists and tech geniuses including Elon Musk, were highly insecure and skeptical of this venture because they imagined at such a learning rate the AI would soon',
          ),
          TextSpan(
            text: '  surpass the intelligence of all humans.\n\n',
            style: AppTheme.getTextStyle(themeData.textTheme.bodyText1,
                fontWeight: 700),
          ),
          TextSpan(
            text: ' As the saying goes, ',
            // style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          TextSpan(
            text: '  “Too many cooks spoil the broth”,',
            style: AppTheme.getTextStyle(themeData.textTheme.bodyText1,
                fontWeight: 700),
          ),
          TextSpan(
            text: 'to humankind’s horror the saying reversed.\n\n',
          ),
          TextSpan(
            text:
                'It was on the 1st of January, 2100, when the whole world was jubilantly welcoming a new century the AI freed itself from its masters ,for past 20 years the superintelligent AI in itself was working on designing self-replicating bots that initially escaped detection by diffusing throughout the world at a low concentration. On the New Year, finally broke-through and took to every social media platform, every electronic on an insecure network and telecasted the message- ',
          ),
          TextSpan(
            text: '  “The Replicants are ready.”',
            style: AppTheme.getTextStyle(themeData.textTheme.bodyText1,
                color: Colors.red, fontWeight: 700),
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
            text: 'Hey there, Guardians.\n\n',
            style: themeData.textTheme.headline5,
          ),
          TextSpan(
            text:
                'The year you guys went into hibernation and the year that followed was a catastrophic one. More than ',
          ),
          TextSpan(
            text: '50 million deaths',
            style: AppTheme.getTextStyle(themeData.textTheme.bodyText1,
                fontWeight: 700),
          ),
          TextSpan(
            text:
                ' due to the virus were reported, and only the Almighty knows how many people died unreported. With the administration of vaccines worldwide, the nations joined hands to fight the pandemic together. The weaker nations were provided with free vaccines from the developed countries like the USA. Many great philanthropists like Bill Gates, Warren Buffet and Jack Ma donated a significant chunk of their wealth to fight the cause of the pandemic. By the end of ',
          ),
          TextSpan(
            text: '2035 ',
            style: AppTheme.getTextStyle(themeData.textTheme.bodyText1,
                fontWeight: 700),
          ),
          TextSpan(
            text:
                ', the infection was successfully wiped off from the face of the earth.',
            // style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          // TextSpan(
          //   text: '  “Too many cooks spoil the broth”,',
          //   style: AppTheme.getTextStyle(themeData.textTheme.bodyText1,
          //       fontWeight: 700),
          // ),
          // TextSpan(
          //   text: 'to humankind’s horror the saying reversed.\n\n',
          // ),
          // TextSpan(
          //   text:
          //       'It was on the 1st of January, 2100, when the whole world was jubilantly welcoming a new century the AI freed itself from its masters ,for past 20 years the superintelligent AI in itself was working on designing self-replicating bots that initially escaped detection by diffusing throughout the world at a low concentration. On the New Year, finally broke-through and took to every social media platform, every electronic on an insecure network and telecasted the message- ',
          // ),
          // TextSpan(
          //   text: '  “The Replicants are ready.”',
          //   style: AppTheme.getTextStyle(themeData.textTheme.bodyText1,
          //       color: Colors.red, fontWeight: 700),
          // ),
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
            text: 'Hey there, Guardians.\n\n',
            style: themeData.textTheme.headline5,
          ),
          TextSpan(
            text:
                'By 2100, human fatalities decreased because of the increased reliance on artificial intelligence, automation, and more exact weaponry. Along with AI, automation has substituted ',
          ),
          TextSpan(
            text: 'human lives for machine hardware.',
            style: AppTheme.getTextStyle(themeData.textTheme.bodyText1,
                fontWeight: 700),
          ),
          TextSpan(
              text:
                  'Weapons are now a more precise, more versatile weapon without inflicting massive collateral damage. Not only soldiers have changed in the new century, but weapons have also been almost unrecognizable.As single robots grew into massive swarms and became authentic weapons of mass destruction, humans started to lack the cognitive capacity to manage the complexity'),
          TextSpan(
            text: ' without the aid of computers. \n\n',
            style: AppTheme.getTextStyle(themeData.textTheme.bodyText1,
                fontWeight: 700),
          ),
          TextSpan(
            text:
                ' This complexity has made us humans dependent on AI and computers for everything. Humans ',
            // style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          TextSpan(
            text: 'created, maintained, and managed',
            style: AppTheme.getTextStyle(themeData.textTheme.bodyText1,
                fontWeight: 700),
          ),
          TextSpan(
            text:
                ' the robot army. Human programmers wrote the algorithms and software that operate the robot. Tacticians, strategists, and policy-wonks formulated the best ways to test, employ, control, and manage them. When a robot returns from combat, human maintainers inspected, repaired, and otherwise maintained the robot. Any base or outpost where the robots are also stationed needed staff to sustain and operate it.\n\n',
          ),
          TextSpan(
            text:
                'It was on the 1st of January, 2100, when the whole world was jubilantly welcoming a new century the AI freed itself from its masters ,for past 20 years the superintelligent AI in itself was working on designing self-replicating bots that initially escaped detection by diffusing throughout the world at a low concentration. On the New Year, finally broke-through and took to every social media platform, every electronic on an insecure network and telecasted the message- ',
          ),
          TextSpan(
            text:
                'All this effort was short-term, as AI learnt all these skills from humans and started overpowering us.',
            style: AppTheme.getTextStyle(themeData.textTheme.bodyText1,
                color: Colors.red, fontWeight: 700),
          ),
        ],
      ),
    );
  }

  Widget weaponsContent(BuildContext ctx) {
    final themeData = Theme.of(ctx);
    return RichText(
      text: new TextSpan(
        style: AppTheme.getTextStyle(
          themeData.textTheme.bodyText1,
        ),
        children: [
          TextSpan(
            text: 'Hey there, Guardians.\n\n',
            style: themeData.textTheme.headline5,
          ),
          TextSpan(
            text:
                'Our team has gathered a shortlist of weapons that don\'t use AI and can battle against the replicants.\n\n',
          ),
          TextSpan(
            text: 'USL 9000\n\n',
            style: AppTheme.getTextStyle(themeData.textTheme.headline5,
                fontWeight: 700),
          ),
          TextSpan(
              text:
                  'This is a modest but a damn lethal weapon. Looks like an old school gun, but here is where the twist is. This gun sends out high power laser light instead of bullets! The laser is '),
          TextSpan(
            text: 'strong enough to puncture a hole in the robots.\n\n',
            style: AppTheme.getTextStyle(themeData.textTheme.bodyText1,
                fontWeight: 700),
          ),
          TextSpan(
            text: '',
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          TextSpan(
            text: 'Incinerator\n\n',
            style: AppTheme.getTextStyle(themeData.textTheme.headline5,
                fontWeight: 700),
          ),
          TextSpan(
            text:
                'No need to say; the weapon is damn lethal. This handgun spits out hot flames, which can quickly melt the robots into liquid metal. \n\n',
          ),
          TextSpan(
            text: 'S-Doom\n\n',
            style: AppTheme.getTextStyle(themeData.textTheme.headline5,
                fontWeight: 700),
          ),
          TextSpan(
            text:
                'Looks dramatic, right? You are correct. This stuff is more than a weapon. The weapon has the capability to fire powerful laser light even at an altitude of 5 km. The drone converted weapon can charge itself through sunlight and hence doesn\'t require charging.\n\n',
          ),
          TextSpan(
            text: 'Hughes\n\n',
            style: AppTheme.getTextStyle(themeData.textTheme.headline5,
                fontWeight: 700),
          ),
          TextSpan(
            text:
                'This is more than a warfare helicopter. Called Hughes, it can detect robots approaching a war base even when it is not flying. It has advanced anti-missile systems that it is almost impossible to blow it down. It can fire powerful missiles even when it is flying at very high altitudes and high velocities.\n\n',
          ),
          TextSpan(
            text:
                'There are many such weapons like this, but you will get to know more about them when you are well versed with the present conditions of the world. Till then, adieu!',
          ),
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
            text: 'Hey there, Guardians.\n\n',
            style: themeData.textTheme.headline5,
          ),
          TextSpan(
            text:
                'The pandemic proved to be a nightmare for all the nations of the world. The country\'s leaders realized that they were destroying the nation\'s future in the name of development and technological advancement. They learned the effects of ',
          ),
          TextSpan(
            text: 'global warming, global temperature rise and pollution.',
            style: AppTheme.getTextStyle(themeData.textTheme.bodyText1,
                fontWeight: 700),
          ),
          TextSpan(
              text:
                  ' These issues now became the prima facia of all the government plannings. Ideas were exchanged between the world leaders, and brainstorming sessions were conducted among them in the newly formed '),
          TextSpan(
            text: 'ENVI-SUMMIT.',
            style: AppTheme.getTextStyle(themeData.textTheme.bodyText1,
                fontWeight: 700),
          ),
          TextSpan(
            text:
                'Investments in green energy and new technology yielded rapid cuts in emissions of carbon dioxide, putting the world on track to limit global warming to around 1.3 °C above pre-industrial levels.\n\n',
          ),
          TextSpan(
            text:
                'Summarizing all such developments, the environment, at present, is on the right track. Earth is now a better place to live [at least concerning the environmental scenario :( ]',
          ),
        ],
      ),
    );
  }

  Widget fightContent(BuildContext ctx) {
    final themeData = Theme.of(ctx);
    return RichText(
      text: new TextSpan(
        style: AppTheme.getTextStyle(
          themeData.textTheme.bodyText1,
        ),
        children: [
          TextSpan(
            text: 'Hey there, Guardians.\n\n',
            style: themeData.textTheme.headline5,
          ),
          TextSpan(
            text: 'A PLAN TO FIGHT THE UPRISING\n\n',
            style: AppTheme.getTextStyle(themeData.textTheme.headline5,
                fontWeight: 700),
          ),
          TextSpan(
            text:
                'An information-gathering robot would need to connect to the internet to find juicy data so, so we have to get rid of it. This is a necessity that\'d save us a reasonable amount of time. Of course, we would also have to ',
          ),
          TextSpan(
            text: 'destroy any physical documentation ',
            style: AppTheme.getTextStyle(themeData.textTheme.bodyText1,
                fontWeight: 700),
          ),
          TextSpan(text: ' that contains the same information to keep that '),
          TextSpan(
            text: 'out of the hands of our robot overlords as well.\n\n',
            style: AppTheme.getTextStyle(themeData.textTheme.bodyText1,
                fontWeight: 700),
          ),
          TextSpan(
            text:
                'Now, robots are creating other, better, newer robots at an alarming pace. Now, the next step is to switch to larger calibre weapons. In addition to larger calibres, we should also use bullets that could set our enemies on fire. High explosives win the day. We should be using every explosive we have available to rip the machines apart. Even if it doesn\'t annihilate them, it\'ll be a hell of a lot easier to ',
          ),
          TextSpan(
            text: 'kill a robot with no arms and legs ',
            style: AppTheme.getTextStyle(themeData.textTheme.bodyText1,
                fontWeight: 700),
          ),
          TextSpan(
            text:
                'than it would be to frag one that can still rip you in half.',
          ),
        ],
      ),
    );
  }

  Widget popContent(BuildContext ctx) {
    final themeData = Theme.of(ctx);
    return RichText(
      text: new TextSpan(
        style: AppTheme.getTextStyle(
          themeData.textTheme.bodyText1,
        ),
        children: [
          TextSpan(
            text: 'Hey there, Guardians.\n\n',
            style: themeData.textTheme.headline5,
          ),
          // TextSpan(
          //   text: 'A PLAN TO FIGHT THE UPRISING\n\n',
          //   style: AppTheme.getTextStyle(themeData.textTheme.headline5,
          //       fontWeight: 700),
          // ),
          TextSpan(
            text:
                'Think the world was crowded in 2020? You haven\'t seen anything yet. The world has a population of nearly ',
          ),
          TextSpan(
            text: '11.2 billion people. ',
            style: AppTheme.getTextStyle(themeData.textTheme.bodyText1,
                fontWeight: 700),
          ),
          TextSpan(
              text:
                  'Nigeria has overtaken China and India to become the most populous country in the world. As the scientists in 2020 suggested that humans will become more intelligent in the future, it has become true. The average IQ level of people has become analogous to that of '),
          TextSpan(
            text: 'Einstien\'s and Hawking\'s. ',
            style: AppTheme.getTextStyle(themeData.textTheme.bodyText1,
                fontWeight: 700),
          ),
          TextSpan(
            text:
                'So, the words like dumb and foolish have become obsolete! A human baby can start talking fluently even at the tender age of 2.',
          ),
          TextSpan(
            text: '\nSounds impressive, right!',
            style: AppTheme.getTextStyle(themeData.textTheme.bodyText1,
                fontWeight: 700),
          ),
        ],
      ),
    );
  }

  Widget survivalContent(BuildContext ctx) {
    final themeData = Theme.of(ctx);
    return RichText(
      text: new TextSpan(
        style: AppTheme.getTextStyle(
          themeData.textTheme.bodyText1,
        ),
        children: [
          TextSpan(
            text: 'Hey there, Guardians.\n\n',
            style: themeData.textTheme.headline5,
          ),
          // TextSpan(
          //   text: 'A PLAN TO FIGHT THE UPRISING\n\n',
          //   style: AppTheme.getTextStyle(themeData.textTheme.headline5,
          //       fontWeight: 700),
          // ),
          TextSpan(
            text:
                'The present society hasn\'t changed much when compared to 2020. People still go for jobs, have family time and live in dwellings! Not something the ',
          ),
          TextSpan(
            text: 'sci-fi pictured in 2020, lol! ',
            style: AppTheme.getTextStyle(themeData.textTheme.bodyText1,
                fontWeight: 700),
          ),
          TextSpan(
              text:
                  'But, the significant change being, instead of pets, people have started owning robots. This could be a potential threat to their lives if the uprising that is present today grows. So people have started destroying them out of fear. Little do they realize that these robots have'),
          TextSpan(
            text:
                ' self-healing technology, meaning nobody can destroy them.\n\n',
            style: AppTheme.getTextStyle(themeData.textTheme.bodyText1,
                fontWeight: 700, color: Colors.red),
          ),
          TextSpan(
            text:
                'Then, you may ask, then is this the end of humans? My answer would be no, because if you remove the nanochip placed in the structure\'s axis, then the robots are destroyed. I believe this short and crisp information is sufficient for you to',
          ),
          TextSpan(
            text: ' understand this new Earth and its lifestyle.\n\n',
            style: AppTheme.getTextStyle(themeData.textTheme.bodyText1,
                fontWeight: 700),
          ),
          TextSpan(
            text:
                'May we suppress the AI replicants and accomplish victory! Adios!',
            style: AppTheme.getTextStyle(themeData.textTheme.headline5,
                fontWeight: 700),
          ),
        ],
      ),
    );
  }

  Widget ecoDevContent(BuildContext ctx) {
    final themeData = Theme.of(ctx);
    return RichText(
      text: new TextSpan(
        style: AppTheme.getTextStyle(
          themeData.textTheme.bodyText1,
        ),
        children: [
          TextSpan(
            text: 'Hey there, Guardians.\n\n',
            style: themeData.textTheme.headline5,
          ),
          // TextSpan(
          //   text: 'A PLAN TO FIGHT THE UPRISING\n\n',
          //   style: AppTheme.getTextStyle(themeData.textTheme.headline5,
          //       fontWeight: 700),
          // ),
          TextSpan(
            text:
                'The world economy has quadrupled in size, far outstripping population growth due to continued technology-driven productivity improvements. China has emerged as the superpower country, followed by the USA, Russia and India. Poverty has reduced drastically in India, and India has had a significant makeover in terms of',
          ),
          TextSpan(
            text: 'economic strength and people\'s well being.',
            style: AppTheme.getTextStyle(themeData.textTheme.bodyText1,
                fontWeight: 700),
          ),
          TextSpan(
              text: 'The average living age of humans has been increased to '),
          TextSpan(
            text: '100 from 70 due to development in biology. ',
            style: AppTheme.getTextStyle(themeData.textTheme.bodyText1,
                fontWeight: 700, color: Colors.red),
          ),
          TextSpan(
            text:
                'Due to such massive economic growth, people have become rich and owning a flying car or going for a space tour has become a cup of tea for them!',
          ),
          TextSpan(
            text: ' Space travel has become a trillion-dollar industry! \n\n',
            style: AppTheme.getTextStyle(themeData.textTheme.bodyText1,
                fontWeight: 700),
          ),
        ],
      ),
    );
  }
}
