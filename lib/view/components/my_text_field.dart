import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:share_diary/single_import.dart';

class MyTextField {
  Widget titleTextField(
      GlobalKey? globalKey,
      FocusNode? focusNode,
      TextEditingController? controller,
      bool readOnly,
      Function? onSaved,
      Function? validator,
      String title,
      String hintText,
      var suffixIcon,
      List<TextInputFormatter>? inputFormattersList,
      bool isObscure) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title, style: TextStyle(fontSize: 16, color: myColors.myColorGray500)),
        const SizedBox(height: 10),
        Form(
            key: globalKey,
            child: TextFormField(
              focusNode: focusNode,
              controller: controller,
              readOnly: readOnly,
              onSaved: (value) {
                onSaved!(value);
              },
              validator: (validator != null)
                  ? (value) {
                return validator(value);
              }
                  : null,
              style: TextStyle(
                  color: myColors.myColorGray500,
                  fontSize: 16,
                  fontWeight: FontWeight.w400),
              decoration: InputDecoration(
                contentPadding:
                const EdgeInsetsDirectional.fromSTEB(10, 11, 10, 11),
                filled: true,
                fillColor: myColors.myColorGray300,
                hintText: hintText,
                hintStyle: TextStyle(
                  fontSize: 16,
                  color: myColors.myColorGray500
                ),
                errorStyle: TextStyle(
                  fontSize: 16,
                  color: myColors.myColorGray500
                ),
                enabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none,
                focusedErrorBorder: InputBorder.none,
                errorBorder: InputBorder.none,
                suffixIcon: suffixIcon,
              ),
              inputFormatters: inputFormattersList,
              obscureText: isObscure,
            ))
      ],
    );
  }

  Widget loginTextField(
      GlobalKey? globalKey,
      FocusNode? focusNode,
      TextEditingController? controller,
      Function? onSaved,
      Function? validator,
      String hintText,
      List<TextInputFormatter>? inputFormattersList,
      bool isObscure) {
    return Form(
        key: globalKey,
        child: TextFormField(
          focusNode: focusNode,
          controller: controller,
          onSaved: (value) {
            onSaved!(value);
          },
          validator: (value) {
            return validator!(value);
          },
          style: TextStyle(
              color: myColors.myColorGray500,
              fontSize: 16,
              fontWeight: FontWeight.w400),
          decoration: InputDecoration(
            contentPadding: const EdgeInsetsDirectional.all(20),
            filled: true,
            fillColor: myColors.myColorGray300,
            hintText: hintText,
            hintStyle: TextStyle(
                fontSize: 16,
                color: myColors.myColorGray500
            ),
            errorStyle: TextStyle(
                fontSize: 12,
                color: myColors.myErrorColor
            ),
            enabledBorder: InputBorder.none,
            focusedBorder: InputBorder.none,
            focusedErrorBorder: InputBorder.none,
            errorBorder: InputBorder.none,
          ),
          inputFormatters: inputFormattersList,
          obscureText: isObscure,
        ));
  }
}
