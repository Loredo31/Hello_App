import 'package:flutter/material.dart';

const colorList = <Color> [
  Colors.red,
  Colors.green,
  Colors.blue,
  Colors.orange,
  Colors.purple,
];

class AppTheme {
  final int selectColor;

  AppTheme({ 
    this.selectColor = 0 
  }): assert (selectColor >= 0, 'Selected Color must be greated the 0'),
      assert(selectColor < colorList.length, 'Selected color mest be less than ${colorList.length}');

  ThemeData getTheme() => ThemeData(
    // useMaterial3: true,
    colorSchemeSeed: colorList [selectColor],
    appBarTheme: AppBarTheme(
      centerTitle: true,
    )
  );
}