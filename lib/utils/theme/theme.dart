import 'package:flutter/material.dart';

import 'package:share_diary/single_import.dart';

// extension BuildContextExtensions on BuildContext{
//   ThemeData get theme => Theme.of(this);
// }

late MyThemeColor myColors;

class MyTheme {
  static final ThemeData lightTheme = ThemeData(
      colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xff6B9080)),
      useMaterial3: true,
      fontFamily: 'MaruBuri',
      extensions: const <ThemeExtension<dynamic>>[
        MyThemeColor.light,
      ]);

  static final ThemeData darkTheme = ThemeData(
      colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xff6B9080)),
      useMaterial3: true,
      fontFamily: 'MaruBuri',
      extensions: const <ThemeExtension<dynamic>>[
        MyThemeColor.dark,
      ]);
}
