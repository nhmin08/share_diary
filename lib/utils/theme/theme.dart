import 'package:flutter/material.dart';

import 'package:share_diary/single_import.dart';


// extension BuildContextExtensions on BuildContext{
//   ThemeData get theme => Theme.of(this);
// }

late MyThemeColor myColors;

class MyTheme{
  static final ThemeData lightTheme = ThemeData(
    extensions:  const <ThemeExtension<dynamic>>[
      MyThemeColor.light,
    ]
  );

  static final ThemeData darkTheme = ThemeData(
      extensions:  const <ThemeExtension<dynamic>>[
        MyThemeColor.dark,
      ]
  );
}