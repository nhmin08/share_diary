import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get/get.dart';

import 'package:share_diary/single_import.dart';

class LoginViewModel extends GetxController{
  Api api = Api();

  final idFormKey = GlobalKey<FormState>();
  final passwordFormKey = GlobalKey<FormState>();

  final FocusNode idFocusNode = FocusNode();
  final FocusNode passwordFocusNode = FocusNode();

  final TextEditingController idTextController = TextEditingController();
  final TextEditingController passwordTextController = TextEditingController();

  String id = '';
  String password = '';

  bool idValidate = true;
  bool passwordValidate = true;

  idSaved(String value) {
    id = value;
  }

  passwordSaved(String value) {
    password = value;
  }

  login() async {
    idFormKey.currentState!.save();
    passwordFormKey.currentState!.save();

    idValidate = idFormKey.currentState!.validate();
    passwordValidate = passwordFormKey.currentState!.validate();

    debugPrint('idValidate : ${idValidate.toString()}');
    debugPrint('pwValidate : ${idValidate.toString()}');

    if(idValidate && passwordValidate){
      //여기 내용은 백엔드에 따라 달라짐 일단 참고만 하세용~
      // dynamic data = {
      //   'userName': id,
      //   'password': password,
      // };
      //
      // dynamic response = await api.requestApi(
      //     HttpMethodType.post, constants.baseUrl, constants.hospitalLogin,
      //     data: data, formJson: LoginModel.fromJson);
      //
      // debugPrint('로그인 response : ${response.toString()}');
      //
      // if (response != null) {
      //   if (response != false) {
      //     const storage = FlutterSecureStorage();
      //     await storage.write(key: 'accessToken', value: 'Bearer ${response.accessToken}');
      //     await storage.write(key: 'afterLogin', value: 'true');
      //
      //     await getUserInfo();
      //
      //     Get.off(() => const HomeView());
      //   } else {
      //     Get.dialog(MyDialog(
      //       content: api.errorMessage,
      //       confirmMsg: '확인',
      //       confirmFunction: () {
      //         Get.back();
      //       },
      //     ));
      //   }
      // }
      // return response;
    }else{
      return;
    }
  }
}