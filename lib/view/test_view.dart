import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:share_diary/single_import.dart';

class TestView extends StatefulWidget {
  const TestView({super.key});

  @override
  TestViewState createState() => TestViewState();
}

class TestViewState extends State<TestView> {
  MyAppBar myAppBar = MyAppBar();
  MyButton myButton = MyButton();
  MyTextField myTextField = MyTextField();

  final testFormKey = GlobalKey<FormState>();

  final FocusNode testFocusNode = FocusNode();

  final TextEditingController testController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    myColors = Theme.of(context).extension<MyThemeColor>()!;

    return Scaffold(
      appBar: myAppBar.titleAppbar('이것은 앱바 입니다.'),
      body: Center(
        child: Column(
          children: [
            myButton.normalButton(100, 30, () {
              Get.to(() => const TestTwoView());
            }, '버튼'),
            myTextField.titleTextField(
                testFormKey,
                testFocusNode,
                testController,
                false,
                () {},
                () {},
                '텍스트 필드',
                '텍스트를 입력하세요',
                const Icon(Icons.icecream),
                null,
                false),
            const Spacer(),
            myButton.gradientButton(72, true, () {}, '하단 버튼'),
          ],
        ),
      ),
    );
  }
}
