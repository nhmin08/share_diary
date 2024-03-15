import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:share_diary/single_import.dart';
import 'package:share_diary/constants/images.dart' as images;

class HomeDrawer extends StatefulWidget {
  const HomeDrawer({super.key});

  @override
  State<HomeDrawer> createState() => HomeDrawerState();
}

class HomeDrawerState extends State<HomeDrawer> {
  MyButton myButton = MyButton();

  HomeViewModel homeViewModel = Get.put(HomeViewModel());

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: myColors.myColorBackground,
      surfaceTintColor: myColors.myColorBackground,
      child: CustomScrollView(
        slivers: [
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(children: [
              SizedBox(
                  height: 210 + MediaQuery.of(context).padding.top,
                  child: Theme(
                      data: ThemeData(
                          dividerTheme: const DividerThemeData(
                        color: Colors.transparent,
                      )),
                      child: DrawerHeader(
                        child: Column(
                          children: [closeButton(), circleImg(), nameText()],
                        ),
                      ))),
              const Spacer(),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(10, 0, 10, 0),
                child: Column(
                  children: [
                    listTile(0, '작성한 일기 보기'),
                    listTile(1, '오늘의 일기 쓰기'),
                    listTile(2, '친구 일기 보기'),
                    listTile(3, '설정'),
                    // myButton.normalButton(
                    //     double.infinity, 60, true, () {}, 'Logout')
                  ],
                ),
              ),
              const Spacer(flex: 2),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(
                    10, 0, 10, 30 + MediaQuery.of(context).padding.bottom),
                child: myButton.normalButton(
                    double.infinity, 60, true, () {}, 'Logout'),
              )
            ]),
          )
        ],
      ),
    );
  }

  Widget closeButton() {
    return Row(
      children: [
        const Spacer(),
        GestureDetector(
          onTap: () {
            Get.back();
          },
          child: SizedBox(
              width: 32,
              height: 32,
              child:
                  Icon(Icons.close, size: 32, color: myColors.myColorGray500)),
        )
      ],
    );
  }

  Widget circleImg() {
    return Container(
      height: 90,
      margin: const EdgeInsets.only(
        left: 38.5,
        right: 38.5,
      ),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: myColors.myColorGreen400!,
          width: 1,
        ),
        boxShadow: [
          BoxShadow(
            color: myColors.myColorGreen400!,
            offset: const Offset(0, 0),
            blurRadius: 30,
            spreadRadius: 0,
          ),
        ],
      ),
      child: const CircleAvatar(
          backgroundImage: AssetImage(images.testImg1), radius: 45.0),
    );
  }

  Widget nameText() {
    return Padding(
        padding: const EdgeInsetsDirectional.only(top: 20),
        child: SizedBox(
            height: 35,
            child: Text(
              '김철수철수',
              style: TextStyle(
                  color: myColors.myColorGray400!,
                  fontSize: 21,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'MaruBuri' //전체 적용이 안됨
                  ),
            )));
  }

  Widget listTile(int index, String title) {
    return ListTile(
      leading: (homeViewModel.selectedIndex.value == index)
          ? Icon(
              Icons.circle_rounded,
              size: 10,
              color: myColors.myColorGreen500,
            )
          : Icon(
              Icons.circle_rounded,
              size: 10,
              color: myColors.myColorGray400,
            ),
      title: Text(
        title,
        style: TextStyle(
            color: (homeViewModel.selectedIndex.value == index)
                ? myColors.myColorGreen500!
                : myColors.myColorGray400!,
            fontSize: 16,
            fontWeight: FontWeight.w500,
            fontFamily: 'MaruBuri' //전체 적용이 안됨
            ),
      ),
      selected: homeViewModel.selectedIndex.value == index,
      onTap: () {
        homeViewModel.onItemTapped(index);
        Get.back();
      },
    );
  }
}
