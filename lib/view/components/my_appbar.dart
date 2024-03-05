import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:share_diary/single_import.dart';

class MyAppBar {
  AppBar closeAppbar(VoidCallback? callback) {
    return AppBar(
      leading: null,
      actions: [
        IconButton(
            onPressed: () {
              callback!();
            },
            icon: Icon(
              Icons.close,
              size: 32,
              color: myColors.myColorGray700,
            ))
      ],
      backgroundColor: Colors.transparent,
      elevation: 0,
    );
  }

  AppBar titleAppbar(String title) {
    return AppBar(
      title: Text(title,
          style: TextStyle(color: myColors.myColorGray700, fontSize: 16)),
      centerTitle: false,
      automaticallyImplyLeading: false,
      backgroundColor: Colors.transparent,
      elevation: 0,
    );
  }

  AppBar backArrowAppbar(String title) {
    return AppBar(
      title: Text(title,
          style: TextStyle(color: myColors.myColorGray700, fontSize: 16)),
      leading: IconButton(
        onPressed: () {
          Get.back();
        },
        icon: Icon(Icons.arrow_back_ios, color: myColors.myColorGray700),
      ),
      centerTitle: false,
      automaticallyImplyLeading: false,
      backgroundColor: Colors.transparent,
      elevation: 0,
    );
  }
}
