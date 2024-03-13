import 'package:flutter/material.dart';

import 'package:share_diary/single_import.dart';

class TestTwoView extends StatefulWidget{
  const TestTwoView({super.key});

  @override
  TestTwoViewState createState() => TestTwoViewState();
}

class TestTwoViewState extends State<TestTwoView>{
  MyAppBar myAppBar = MyAppBar();
  MyButton myButton = MyButton();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar.backArrowAppbar('이것은 앱바 입니다.'),
    );
  }
}