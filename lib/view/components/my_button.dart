import 'package:flutter/material.dart';
import 'package:share_diary/single_import.dart';

class MyButton {
  Widget normalButton(double width, double height, VoidCallback? buttonAction,
      String buttonText) {
    return SizedBox(
        width: width,
        height: height,
        child: ElevatedButton(
            onPressed: () {
              buttonAction!();
            },
            style: ElevatedButton.styleFrom(
                backgroundColor: myColors.myColorBlue600,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0))),
            child: Text(buttonText,
                style: TextStyle(
                    color: myColors.myColorGray200,
                    fontSize: 14,
                    fontWeight: FontWeight.w500))));
  }

  Widget borderButton(VoidCallback? buttonAction, String buttonText) {
    //테두리가 있는 버튼
    return GestureDetector(
        onTap: () {
          buttonAction!();
        },
        child: Container(
            alignment: Alignment.center,
            width: 100,
            height: 40,
            decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(5)),
                border: Border.all(color: myColors.myColorBlue600!, width: 1)),
            child: Text(buttonText,
                style:
                    TextStyle(fontSize: 14, color: myColors.myColorGray700))));
  }

  Widget gradientButton(double height, bool isAble, VoidCallback? buttonAction,
      String buttonText) {
    return Container(
        width: double.infinity,
        height: height,
        decoration: isAble
            ? BoxDecoration(
            gradient: LinearGradient(colors: [
              myColors.myColorBlue700!,
              myColors.myColorBlue300!
            ]))
            : BoxDecoration(color: myColors.myDisable),
        child: MaterialButton(
          materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
          onPressed: isAble
              ? () async {
            buttonAction!();
          }
              : null,
          child: Text(
            buttonText,
            style: TextStyle(
              fontSize: 16,
              color: myColors.myColorGray300
            ),
          ),
        ));
  }
}
