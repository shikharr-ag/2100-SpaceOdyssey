import 'package:flutkit/utils/SizeConfig.dart';
import 'package:flutter/material.dart';

import '../AppTheme.dart';
import '../utils/constants.dart';
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
          "Following artworks / posters were made by our cadets",
          style: AppTheme.getTextStyle(themeData.textTheme.subtitle1,
              fontWeight: 700, color: Colors.white),
        ),
        Spacing.height(16),
        ConstrainedBox(
          constraints: BoxConstraints(
              maxHeight: MediaQuery.of(context).size.height,
              maxWidth: MediaQuery.of(context).size.width - 40),
          child: GridView.count(
            crossAxisCount: 2,
            mainAxisSpacing: 30,
            crossAxisSpacing: 30,
            clipBehavior: Clip.antiAlias,
            children: List.generate(
              Constants.posters,
              (i) => GestureDetector(
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      title: null,
                      actions: null,
                      titlePadding: EdgeInsets.zero,
                      contentPadding: EdgeInsets.zero,
                      content: Stack(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              gradient:
                                  LinearGradient(colors: Constants.triColors),
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20.0),
                              child: Image.asset(
                                  'assets/new_images/poster${i + 1}.jpeg'),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20.0),
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                              'assets/new_images/poster${i + 1}.jpeg'),
                          fit: BoxFit.fill),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
        Spacing.height(16),
      ],
    );
  }
}
