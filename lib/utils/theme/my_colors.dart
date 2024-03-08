import 'package:flutter/material.dart';

@immutable
class MyThemeColor extends ThemeExtension<MyThemeColor> {
  final Color? myColorGray500;
  final Color? myColorGray400;
  final Color? myColorGray300;
  final Color? myColorGray200;
  final Color? myColorGray100;

  final Color? myColorGreen500;
  final Color? myColorGreen400;
  final Color? myColorGreen300;
  final Color? myColorGreen200;
  final Color? myColorGreen100;

  final Color? myErrorColor;
  final Color? myColorBackground;

  const MyThemeColor({
    required this.myColorGray500,
    required this.myColorGray400,
    required this.myColorGray300,
    required this.myColorGray200,
    required this.myColorGray100,
    required this.myColorGreen500,
    required this.myColorGreen400,
    required this.myColorGreen300,
    required this.myColorGreen200,
    required this.myColorGreen100,
    required this.myErrorColor,
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
        myColorGray500: Color.lerp(myColorGray500, other.myColorGray500, t),
        myColorGray400: Color.lerp(myColorGray400, other.myColorGray400, t),
        myColorGray300: Color.lerp(myColorGray300, other.myColorGray300, t),
        myColorGray200: Color.lerp(myColorGray200, other.myColorGray200, t),
        myColorGray100: Color.lerp(myColorGray100, other.myColorGray100, t),
        myColorGreen500: Color.lerp(myColorGreen500, other.myColorGreen500, t),
        myColorGreen400: Color.lerp(myColorGreen400, other.myColorGreen400, t),
        myColorGreen300: Color.lerp(myColorGreen300, other.myColorGreen300, t),
        myColorGreen200: Color.lerp(myColorGreen200, other.myColorGreen200, t),
        myColorGreen100: Color.lerp(myColorGreen100, other.myColorGreen100, t),
        myErrorColor: Color.lerp(myErrorColor, other.myErrorColor, t),
        myColorBackground: Color.lerp(myColorBackground, other.myColorBackground, t));
  }

  static const light = MyThemeColor(
      myColorGray500: Color(0xff000000),
      myColorGray400: Color(0xff404040),
      myColorGray300: Color(0xff808080),
      myColorGray200: Color(0xffBFBFBF),
      myColorGray100: Color(0xffFFFFFF),
      myColorGreen500: Color(0xff6B9080),
      myColorGreen400: Color(0xffA4C3B2),
      myColorGreen300: Color(0xffCCE3DE),
      myColorGreen200: Color(0xffEAF4F4),
      myColorGreen100: Color(0xffF6FFF8),
      myErrorColor: Color(0xffe5383b),
      myColorBackground: Color(0xffF4F3EE));

  static const dark = MyThemeColor(
      myColorGray500: Color(0xffFFFFFF),
      myColorGray400: Color(0xffBFBFBF),
      myColorGray300: Color(0xff808080),
      myColorGray200: Color(0xff404040),
      myColorGray100: Color(0xff000000),
      myColorGreen500: Color(0xff6B9080),
      myColorGreen400: Color(0xffA4C3B2),
      myColorGreen300: Color(0xffCCE3DE),
      myColorGreen200: Color(0xffEAF4F4),
      myColorGreen100: Color(0xffF6FFF8),
      myErrorColor: Color(0xffe5383b),
      myColorBackground: Color(0xff463F3A));
}