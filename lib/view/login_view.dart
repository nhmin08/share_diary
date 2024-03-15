import 'package:check_sign_up_format/check_sign_up_format.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:share_diary/single_import.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => LoginViewState();
}

class LoginViewState extends State<LoginView> {
  MyTextField myTextField = MyTextField();
  MyButton myButton = MyButton();

  LoginViewModel loginViewModel = Get.put(LoginViewModel());

  @override
  void initState() {
    loginViewModel.idTextController.addListener(() {
      setState(() {});
    });
    loginViewModel.passwordTextController.addListener(() {
      setState(() {});
    });
    super.initState();
  }

  @override
  void dispose() {
    loginViewModel.idTextController.removeListener(() {});
    loginViewModel.passwordTextController.removeListener(() {});
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    myColors = Theme.of(context).extension<MyThemeColor>()!;

    return Scaffold(
      backgroundColor: myColors.myColorBackground,
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(20, 40, 20, 30),
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 30),
              myTextField.loginTextField(
                  loginViewModel.idFormKey,
                  loginViewModel.idFocusNode,
                  loginViewModel.idTextController, (value) {
                setState(() {
                  loginViewModel.idSaved(value);
                });
              }, Validator.idValidator, 'Input ID', null, false),
              const SizedBox(height: 30),
              myTextField.loginTextField(
                  loginViewModel.passwordFormKey,
                  loginViewModel.passwordFocusNode,
                  loginViewModel.passwordTextController, (value) {
                setState(() {
                  loginViewModel.passwordSaved(value);
                });
              }, Validator.passwordValidator, 'Input Password', null, true),
              const SizedBox(height: 30),
              myButton.normalButton(
                  double.infinity,
                  62,
                  (loginViewModel.idTextController.text.isEmpty ||
                          loginViewModel.passwordTextController.text.isEmpty)
                      ? false
                      : true, () {
                loginViewModel.login();
              }, 'Login'),
              signUpButton(),
              Row(
                children: [
                  const Spacer(),
                  findButton(() {}, 'find ID'),
                  SizedBox(
                      height: 12,
                      child: VerticalDivider(
                        color: myColors.myColorGray400,
                      )),
                  findButton(() {}, 'find Password'),
                  const Spacer(),
                ],
              )
            ],
          ),
        ),
      )),
    );
  }

  Widget findButton(VoidCallback? callback, String buttonText) {
    return TextButton(
        onPressed: () {
          callback!();
        },
        child: Text(
          buttonText,
          style: TextStyle(
            color: myColors.myColorGray400,
          ),
        ));
  }

  Widget signUpButton() {
    return Padding(
      padding: const EdgeInsetsDirectional.only(top: 10),
      child: RichText(
        text: TextSpan(children: [
          TextSpan(
              text: "Don't you have an account?  ",
              style: TextStyle(color: myColors.myColorGray400)),
          TextSpan(
              text: 'Sign up',
              style: TextStyle(
                  color: myColors.myColorGray400,
                  fontWeight: FontWeight.w500,
                  decoration: TextDecoration.underline),
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  debugPrint('go to sign up page');
                })
        ]),
      ),
    );
  }
}
