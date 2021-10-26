import 'package:flutter/material.dart';
import 'package:get_it_done/models/color_theme_data.dart';
import 'package:get_it_done/models/items_data.dart';
import 'package:provider/provider.dart';

import 'screens/home_page.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider<ItemData>(
        create: (BuildContext context) => ItemData()),
    ChangeNotifierProvider<ColorThemeData>(
        create: (context) => ColorThemeData())
  ], child: MyApp()));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: Provider.of<ColorThemeData>(context).selectedTehemeData,
      home: HomePage(),
    );
  }
}

ThemeData greenTheme = ThemeData(
    primarySwatch: Colors.green,
    scaffoldBackgroundColor: Colors.green,
    primaryColor: Colors.green,
    accentColor: Colors.green,
    appBarTheme: AppBarTheme(color: Colors.green),
    visualDensity: VisualDensity.adaptivePlatformDensity,
    textTheme: TextTheme(
        subtitle1: TextStyle(color: Colors.white),
        headline3: TextStyle(color: Colors.white)));
ThemeData redTheme = ThemeData(
    primarySwatch: Colors.red,
    scaffoldBackgroundColor: Colors.red,
    primaryColor: Colors.red,
    accentColor: Colors.red,
    appBarTheme: AppBarTheme(color: Colors.red),
    visualDensity: VisualDensity.adaptivePlatformDensity,
    textTheme: TextTheme(
        subtitle1: TextStyle(color: Colors.white),
        headline3: TextStyle(color: Colors.white)));
