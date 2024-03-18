import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:share_diary/single_import.dart';

class CreatedDiariesView extends StatefulWidget {
  const CreatedDiariesView({super.key});

  @override
  State<CreatedDiariesView> createState() => CreatedDiariesViewState();
}

class CreatedDiariesViewState extends State<CreatedDiariesView> {
  CreatedDiariesViewModel createdDiariesViewModel =
      Get.put(CreatedDiariesViewModel());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: myColors.myColorBackground,
      body: SingleChildScrollView(
        child: Center(
            child: Column(
          children: [selectTheMonth()],
        )),
      ),
    );
  }

  Widget selectTheMonth() {
    // return DropdownButton(
    //     value: createdDiariesViewModel.selectedMonth,
    //     items: createdDiariesViewModel.monthList
    //         .map<DropdownMenuItem<String>>((String value) {
    //       return DropdownMenuItem(value: value, child: Text('$value 월달'));
    //     }).toList(),
    //     elevation: 0,
    //     style: TextStyle(
    //         color: myColors.myColorGray400,
    //         fontSize: 21,
    //         fontFamily: 'MaruBuri'),
    //     underline: Container(color: Colors.transparent),
    //     dropdownColor: myColors.myColorBackground,
    //     menuMaxHeight: 200,
    //     onChanged: (value) {
    //       setState(() {
    //         createdDiariesViewModel.selectedMonth = value!;
    //       });
    //     });

    return DropdownMenu(
      initialSelection: createdDiariesViewModel.selectedMonth,
      onSelected: (value) {
        setState(() {
          createdDiariesViewModel.selectedMonth = value!;
        });
      },
      dropdownMenuEntries: createdDiariesViewModel.monthList
          .map<DropdownMenuEntry<String>>((String value) {
        return DropdownMenuEntry(
            value: value,
            label: '$value 월달',
            labelWidget: Text('$value 월달',
                style: TextStyle(color: myColors.myColorGray400)));
      }).toList(),
      inputDecorationTheme: InputDecorationTheme(
        border: InputBorder.none,
        labelStyle: TextStyle(color: myColors.myColorGray400, fontSize: 21),
      ),
      //menuStyle: MenuStyle(),
    );
  }
}
