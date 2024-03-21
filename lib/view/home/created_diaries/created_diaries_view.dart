import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:share_diary/single_import.dart';

class CreatedDiariesView extends StatefulWidget {
  const CreatedDiariesView({super.key});

  @override
  State<CreatedDiariesView> createState() => CreatedDiariesViewState();
}

class CreatedDiariesViewState extends State<CreatedDiariesView> {
  MyAppBar myAppBar = MyAppBar();
  CreatedDiariesViewModel createdDiariesViewModel =
      Get.put(CreatedDiariesViewModel());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: myColors.myColorBackground,
      body: Center(
          child: Column(
        children: [selectTheMonth(), diaryCardList()],
      )),
    );
  }

  Widget selectTheMonth() {
    return SizedBox(
        height: 50,
        child: DropdownButton(
            value: createdDiariesViewModel.selectedMonth,
            items: createdDiariesViewModel.monthList
                .map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem(value: value, child: Text('$value 월달'));
            }).toList(),
            elevation: 0,
            icon: const Icon(null),
            style: TextStyle(
                color: myColors.myColorGray400,
                fontSize: 16,
                fontFamily: 'MaruBuri'),
            underline: Container(color: Colors.transparent),
            dropdownColor: myColors.myColorGreen300,
            menuMaxHeight: 200,
            borderRadius: BorderRadius.circular(10.0),
            onChanged: (value) {
              setState(() {
                createdDiariesViewModel.selectedMonth = value!;
              });
            }));

    // return DropdownMenu(
    //   initialSelection: createdDiariesViewModel.selectedMonth,
    //   onSelected: (value) {
    //     setState(() {
    //       createdDiariesViewModel.selectedMonth = value!;
    //     });
    //   },
    //   dropdownMenuEntries: createdDiariesViewModel.monthList
    //       .map<DropdownMenuEntry<String>>((String value) {
    //     return DropdownMenuEntry(
    //         value: value,
    //         label: '$value 월달',
    //         labelWidget: Text('$value 월달',
    //             style: TextStyle(color: myColors.myColorGray400)));
    //   }).toList(),
    //   inputDecorationTheme: InputDecorationTheme(
    //     border: InputBorder.none,
    //     labelStyle: TextStyle(color: myColors.myColorGray400, fontSize: 21),
    //   ),
    //   //menuStyle: MenuStyle(),
    // );
  }

  Widget diaryCardList() {
    return Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(20, 10, 20, 0),
        child: SizedBox(
            height: MediaQuery.of(context).size.height -
                myAppBar.hamburgerAppbar().preferredSize.height -
                MediaQuery.of(context).padding.top -
                MediaQuery.of(context).padding.bottom -
                90,
            child: ListView.builder(
                itemCount: 100,
                itemBuilder: (BuildContext context, int index) {
                  return diaryCard(
                      index.toString(), 'this is ${index.toString()}');
                })));
  }

  Widget diaryCard(String title, String content) {
    return GestureDetector(
        onTap: () {},
        child: Card(
          child: Padding(
              padding: const EdgeInsetsDirectional.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style:
                        TextStyle(color: myColors.myColorGray400, fontSize: 14),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    content,
                    style:
                        TextStyle(color: myColors.myColorGray400, fontSize: 12),
                    maxLines: 1,
                  )
                ],
              )),
        ));
  }
}
