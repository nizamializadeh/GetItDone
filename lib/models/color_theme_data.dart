import 'package:flutter/material.dart';

class ColorThemeData with ChangeNotifier {
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
  ThemeData _selectedTehemeData = ThemeData(
      primarySwatch: Colors.green,
      scaffoldBackgroundColor: Colors.green,
      primaryColor: Colors.green,
      accentColor: Colors.green,
      appBarTheme: AppBarTheme(color: Colors.green),
      visualDensity: VisualDensity.adaptivePlatformDensity,
      textTheme: TextTheme(
          subtitle1: TextStyle(color: Colors.white),
          headline3: TextStyle(color: Colors.white)));

  void switchTeheme(bool selected) {
    _selectedTehemeData = selected ? greenTheme : redTheme;
    notifyListeners();
  }

  ThemeData get selectedTehemeData => _selectedTehemeData;
}
