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
              color: myColors.myColorGray500,
            ))
      ],
      backgroundColor: Colors.transparent,
      elevation: 0,
    );
  }

  AppBar titleAppbar(String title) {
    return AppBar(
      title: Text(title,
          style: TextStyle(color: myColors.myColorGray500, fontSize: 16)),
      centerTitle: false,
      automaticallyImplyLeading: false,
      backgroundColor: Colors.transparent,
      elevation: 0,
    );
  }

  AppBar backArrowAppbar(String title) {
    return AppBar(
      title: Text(title,
          style: TextStyle(color: myColors.myColorGray500, fontSize: 16)),
      leading: IconButton(
        onPressed: () {
          Get.back();
        },
        icon: Icon(Icons.arrow_back_ios, color: myColors.myColorGray500),
      ),
      centerTitle: false,
      automaticallyImplyLeading: false,
      backgroundColor: Colors.transparent,
      elevation: 0,
    );
  }

  AppBar hamburgerAppbar(){
    // return AppBar(
    //   leading: IconButton(
    //     onPressed: () {
    //       callback!();
    //     },
    //     icon: Icon(Icons.menu, color: myColors.myColorGray500),
    //   ),
    //   backgroundColor: Colors.transparent,
    //   elevation: 0,
    // );

    return AppBar(
      iconTheme: IconThemeData(color: myColors.myColorGray500),
      backgroundColor: Colors.transparent,
      elevation: 0,
    );
  }
}
