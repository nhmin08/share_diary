import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:share_diary/single_import.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => HomeViewState();
}

class HomeViewState extends State<HomeView> {
  HomeViewModel homeViewModel = Get.put(HomeViewModel());

  MyAppBar myAppBar = MyAppBar();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: myColors.myColorBackground,
      appBar: myAppBar.hamburgerAppbar(),
      drawer: const HomeDrawer(),
      body: Obx(() => Stack(
            children: [
              Center(
                child: homeViewModel
                    .widgetOptions[homeViewModel.selectedIndex.value],
              ),
              //const CallScreenView()
            ],
          )),
    );
  }
}
