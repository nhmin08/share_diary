import 'package:flutter/material.dart';

import 'package:share_diary/single_import.dart';

class MyDialog extends StatelessWidget {
  const MyDialog(
      {super.key,
      this.title,
      this.content,
      this.cancelMsg,
      this.cancelFunction,
      this.confirmMsg,
      this.confirmFunction});

  final String? title;
  final String? content;
  final String? cancelMsg;
  final VoidCallback? cancelFunction;
  final String? confirmMsg;
  final VoidCallback? confirmFunction;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Dialog(
        backgroundColor: myColors.myColorGray400,
        surfaceTintColor: Colors.transparent,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            textArea(title, content),
            buttonArea(cancelMsg, cancelFunction, confirmMsg, confirmFunction)
          ],
        ),
      ),
    );
  }

  Widget textArea(String? title, String? content) {
    return Padding(
      padding: const EdgeInsetsDirectional.fromSTEB(12, 32, 12, 32),
      child: Column(
        children: [
          (title != null) ? titleText(title) : Container(),
          (content != null) ? contentText(content) : Container()
        ],
      ),
    );
  }

  Widget titleText(String title) {
    return Text(title,
        textAlign: TextAlign.center,
        style: TextStyle(color: myColors.myColorGray300, fontSize: 14));
  }

  Widget contentText(String content) {
    return Padding(
      padding: const EdgeInsets.only(top: 16.0),
      child: Text(content,
          textAlign: TextAlign.center,
          style: TextStyle(color: myColors.myColorGray300, fontSize: 14)),
    );
  }

  Widget buttonArea(String? cancelMsg, VoidCallback? cancelFunction,
      String? confirmMsg, VoidCallback? confirmFunction) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          (cancelMsg != null)
              ? dialogButton(cancelMsg, cancelFunction, true,
                  myColors.myColorGray300!, Colors.white)
              : Container(),
          (confirmMsg != null)
              ? dialogButton(confirmMsg, confirmFunction, false,
                  myColors.myColorGreen500!, Colors.white)
              : Container(),
        ],
      ),
    );
  }

  Widget dialogButton(
    String buttonText,
    VoidCallback? buttonAction,
    bool isCancelButton,
    Color buttonColor,
    Color buttonTextColor,
  ) {
    return Expanded(
        child: InkWell(
      onTap: () async {
        buttonAction!();
      },
      child: Container(
        height: 49,
        decoration: BoxDecoration(
            border: isCancelButton
                ? Border(
                    top: BorderSide(
                      color: myColors.myColorGray300!
                    ),
                    right: BorderSide(
                      color: myColors.myColorGray300!
                    ))
                : Border(
                    top: BorderSide(
                    color: myColors.myColorGray300!
                  )),
            borderRadius: BorderRadius.only(
                bottomLeft: (cancelMsg == null || isCancelButton == true)
                    ? const Radius.circular(20.0)
                    : const Radius.circular(0),
                bottomRight: isCancelButton == false
                    ? const Radius.circular(20.0)
                    : const Radius.circular(0)),
            color: buttonColor),
        child: Center(
          child: Text(buttonText,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 14,
                color: buttonTextColor
              )),
        ),
      ),
    ));
  }
}
