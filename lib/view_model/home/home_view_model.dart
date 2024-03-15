import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeViewModel extends GetxController {
  RxInt selectedIndex = 0.obs;

  List<Widget> widgetOptions = <Widget>[
    const Center(
      child: Text('작성한 일기 보기'),
    ),
    const Center(
      child: Text('오늘의 일기 쓰기'),
    ),
    const Center(
      child: Text('친구 일기 보기'),
    ),
    const Center(
      child: Text('설정'),
    )
  ];

  onItemTapped(int index) {
    selectedIndex.value = index;
    debugPrint('index: ${selectedIndex.value}');
  }
}
