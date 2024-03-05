import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';

import 'package:share_diary/single_import.dart';

enum HttpMethodType { get, post, put, delete }

class Api {
  String errorMessage = '';

  requestApi(HttpMethodType type, String baseUrl, String path,
      {String? contentType,
        String? accessToken,
        Map<String, dynamic>? header,
        Map<String, dynamic>? queryParameters,
        Map<String, dynamic>? data,
        dynamic formJson}) async {
    try {
      Dio dio = Dio();

      dio.options.baseUrl = baseUrl;

      if (contentType != null) {
        dio.options.contentType = contentType;
      }

      if (accessToken != null) {
        //dio.options.headers['authorization'] = 'Bearer $accessToken';
        dio.options.headers['authorization'] = accessToken;
      }

      if (header != null) {
        dio.options.headers = header;
      }

      late Response response;

      switch (type) {
        case HttpMethodType.get:
          response =
          await dio.get(path, queryParameters: queryParameters, data: data);
          break;
        case HttpMethodType.post:
          response = await dio.post(path, data: data);
          break;
        case HttpMethodType.put:
          response = await dio.put(path, data: data);
          break;
        case HttpMethodType.delete:
          response = await dio.delete(path, data: data);
      }

      if (response.statusCode == 200 ||
          response.statusCode == 201 ||
          response.statusCode == 204) {
        debugPrint('dio success: ${response.data.toString()}');

        if (response.data == null || response.data == '') {
          return true;
        }

        if (formJson == null) {
          return response.data;
        }

        return formJson(response.data);
      }
    } catch (e) {
      if (e is DioException) {
        debugPrint('dio error: ${e.response.toString()}');
        if (e.response.toString().contains('message')) {
          //errorMessage = Error.fromJson(e.response!.data).message; //에러 response가 나오면 추후 Error모델 생성 후 주석 해제 해주세요.
        }
      }
      return false;
    }
  }
}
