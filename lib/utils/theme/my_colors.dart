import 'package:flutter/material.dart';

@immutable
class MyThemeColor extends ThemeExtension<MyThemeColor> {
  final Color? myColorBlue700;
  final Color? myColorBlue600;
  final Color? myColorBlue500;
  final Color? myColorBlue400;
  final Color? myColorBlue300;
  final Color? myColorBlue200;
  final Color? myColorBlue100;
  final Color? myColorBlue50;

  final Color? myColorRed700;
  final Color? myColorRed600;
  final Color? myColorRed500;
  final Color? myColorRed400;
  final Color? myColorRed300;
  final Color? myColorRed200;
  final Color? myColorRed100;
  final Color? myColorRed50;

  final Color? myColorGray700;
  final Color? myColorGray600;
  final Color? myColorGray500;
  final Color? myColorGray400;
  final Color? myColorGray300;
  final Color? myColorGray200;
  final Color? myColorGray100;
  final Color? myColorGray50;

  final Color? myDisable;
  final Color? myColorBackground;

  const MyThemeColor({
    required this.myColorBlue700,
    required this.myColorBlue600,
    required this.myColorBlue500,
    required this.myColorBlue400,
    required this.myColorBlue300,
    required this.myColorBlue200,
    required this.myColorBlue100,
    required this.myColorBlue50,
    required this.myColorRed700,
    required this.myColorRed600,
    required this.myColorRed500,
    required this.myColorRed400,
    required this.myColorRed300,
    required this.myColorRed200,
    required this.myColorRed100,
    required this.myColorRed50,
    required this.myColorGray700,
    required this.myColorGray600,
    required this.myColorGray500,
    required this.myColorGray400,
    required this.myColorGray300,
    required this.myColorGray200,
    required this.myColorGray100,
    required this.myColorGray50,
    required this.myDisable,
    required this.myColorBackground
  });

  @override
  ThemeExtension<MyThemeColor> copyWith() {
    // TODO: implement copyWith
    throw UnimplementedError();
  }

  @override
  ThemeExtension<MyThemeColor> lerp(covariant ThemeExtension<MyThemeColor>? other, double t) { //모드 교체시 오류 발생 방지
    // TODO: implement lerp
    if(other is! MyThemeColor){
      return this;
    }
    return MyThemeColor(
        myColorBlue700: Color.lerp(myColorBlue700, other.myColorBlue700, t),
        myColorBlue600: Color.lerp(myColorBlue600, other.myColorBlue600, t),
        myColorBlue500: Color.lerp(myColorBlue500, other.myColorBlue500, t),
        myColorBlue400: Color.lerp(myColorBlue400, other.myColorBlue400, t),
        myColorBlue300: Color.lerp(myColorBlue300, other.myColorBlue300, t),
        myColorBlue200: Color.lerp(myColorBlue200, other.myColorBlue200, t),
        myColorBlue100: Color.lerp(myColorBlue100, other.myColorBlue100, t),
        myColorBlue50: Color.lerp(myColorBlue50, other.myColorBlue50, t),
        myColorRed700: Color.lerp(myColorRed700, other.myColorRed700, t),
        myColorRed600: Color.lerp(myColorRed600, other.myColorRed600, t),
        myColorRed500: Color.lerp(myColorRed500, other.myColorRed500, t),
        myColorRed400: Color.lerp(myColorRed400, other.myColorRed400, t),
        myColorRed300: Color.lerp(myColorRed300, other.myColorRed300, t),
        myColorRed200: Color.lerp(myColorRed200, other.myColorRed200, t),
        myColorRed100: Color.lerp(myColorRed100, other.myColorRed100, t),
        myColorRed50: Color.lerp(myColorRed50, other.myColorRed50, t),
        myColorGray700: Color.lerp(myColorGray700, other.myColorGray700, t),
        myColorGray600: Color.lerp(myColorGray600, other.myColorGray600, t),
        myColorGray500: Color.lerp(myColorGray500, other.myColorGray500, t),
        myColorGray400: Color.lerp(myColorGray400, other.myColorGray400, t),
        myColorGray300: Color.lerp(myColorGray300, other.myColorGray300, t),
        myColorGray200: Color.lerp(myColorGray200, other.myColorGray200, t),
        myColorGray100: Color.lerp(myColorGray100, other.myColorGray100, t),
        myColorGray50: Color.lerp(myColorGray50, other.myColorGray50, t),
        myDisable: Color.lerp(myDisable, other.myDisable, t),
        myColorBackground: Color.lerp(myColorBackground, other.myColorBackground, t));
  }

  static const light = MyThemeColor(
      myColorBlue700: Color(0xff3A7BDF),
      myColorBlue600: Color(0xff6195E6),
      myColorBlue500: Color(0xff9DBDEF),
      myColorBlue400: Color(0xffA9CBFF),
      myColorBlue300: Color(0xffC8DEFF),
      myColorBlue200: Color(0xffE5F0FF),
      myColorBlue100: Color(0xffF4F9FF),
      myColorBlue50: Color(0xffFAFCFF),
      myColorRed700: Color(0xffFF4848),
      myColorRed600: Color(0xffFF5A5A),
      myColorRed500: Color(0xffFF6C6C),
      myColorRed400: Color(0xffFF7E7E),
      myColorRed300: Color(0xffFF9090),
      myColorRed200: Color(0xffFFA2A2),
      myColorRed100: Color(0xffFFB4B4),
      myColorRed50: Color(0xffFFC6C6),
      myColorGray700: Color(0xff444444),
      myColorGray600: Color(0xff666666),
      myColorGray500: Color(0xff888888),
      myColorGray400: Color(0xffAAAAAA),
      myColorGray300: Color(0xffCCCCCC),
      myColorGray200: Color(0xffDDDDDD),
      myColorGray100: Color(0xffEEEEEE),
      myColorGray50: Color(0xffF9F9F9),
      myDisable: Color(0xff8C8C8C),
      myColorBackground: Colors.white);

  static const dark = MyThemeColor(
      myColorBlue700: Color(0xff3A7BDF),
      myColorBlue600: Color(0xff6195E6),
      myColorBlue500: Color(0xff9DBDEF),
      myColorBlue400: Color(0xffA9CBFF),
      myColorBlue300: Color(0xffC8DEFF),
      myColorBlue200: Color(0xffE5F0FF),
      myColorBlue100: Color(0xffF4F9FF),
      myColorBlue50: Color(0xffFAFCFF),
      myColorRed700: Color(0xffFF4848),
      myColorRed600: Color(0xffFF5A5A),
      myColorRed500: Color(0xffFF6C6C),
      myColorRed400: Color(0xffFF7E7E),
      myColorRed300: Color(0xffFF9090),
      myColorRed200: Color(0xffFFA2A2),
      myColorRed100: Color(0xffFFB4B4),
      myColorRed50: Color(0xffFFC6C6),
      myColorGray700: Color(0xffF9F9F9),
      myColorGray600: Color(0xffEEEEEE),
      myColorGray500: Color(0xffDDDDDD),
      myColorGray400: Color(0xffCCCCCC),
      myColorGray300: Color(0xffAAAAAA),
      myColorGray200: Color(0xff888888),
      myColorGray100: Color(0xff666666),
      myColorGray50: Color(0xff444444),
      myDisable: Color(0xff8C8C8C),
      myColorBackground: Colors.black);
}