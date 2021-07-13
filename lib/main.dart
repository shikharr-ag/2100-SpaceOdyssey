/*
* File : Main File
* Version : 1.0.0
* */

import 'package:flutkit/AppsHome.dart';
import 'package:flutkit/apps/shopping/ShoppingFullApp.dart';
// import 'package:flutkit/apps/event/EventFullApp.dart';
// import 'package:flutkit/apps/food/FoodLoginScreen.dart';
// import 'package:flutkit/apps/food/FoodPasswordScreen.dart';
// import 'package:flutkit/apps/food/FoodRegisterScreen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'AppNotifier.dart';
import 'AppTheme.dart';
import 'apps/event/EventFullApp.dart';

void main() {
  //You will need to initialize AppThemeNotifier class for theme changes.
  WidgetsFlutterBinding.ensureInitialized();
  runApp(ChangeNotifierProvider<AppNotifier>(
    create: (context) => AppNotifier(),
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<AppNotifier>(
      builder: (BuildContext context, AppNotifier value, Widget? child) {
        return MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: AppTheme.getThemeFromThemeMode(value.themeMode()),
            home: EventFullApp());
      },
    );
  }
}
