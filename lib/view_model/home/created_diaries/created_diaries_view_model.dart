import 'package:get/get.dart';

class CreatedDiariesViewModel extends GetxController{
  List<String> monthList = ['1', '2', '3', '4', '5', '6', '7', '8', '9', '10', '11', '12'];

  String selectedMonth = DateTime.now().month.toString();
}