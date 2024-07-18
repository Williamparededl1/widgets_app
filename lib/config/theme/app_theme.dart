import 'package:flutter/material.dart';

const List<Color> colorList = [
  Colors.black,
  Colors.blue,
  Colors.brown,
  Colors.yellow,
  Colors.red,
  Colors.purple,
  Colors.green,
  Colors.deepOrange,
];

class AppTheme {
  final int selecterColor;
  final bool isDarkMode;

  AppTheme({this.selecterColor = 0, this.isDarkMode = false})
      : assert(
            selecterColor >= 0, 'selecterColor color tiene que ser mayor a 0'),
        assert(selecterColor < colorList.length,
            'selecterColor color tiene que ser mayor a 0');

  ThemeData getTheme() => ThemeData(
      useMaterial3: true,
      brightness: isDarkMode ? Brightness.dark : Brightness.light,
      colorSchemeSeed: colorList[selecterColor],
      appBarTheme: const AppBarTheme(centerTitle: false));
}
