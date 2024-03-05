import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'single_import.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    //myColors = Theme.of(context).extension<MyThemeColor>()!;
    return GetMaterialApp(
      title: 'Flutter test',
      theme: MyTheme.lightTheme,
      darkTheme: MyTheme.darkTheme,
      themeMode: ThemeMode.system,
      home: const TestView(),
    );
  }
}
