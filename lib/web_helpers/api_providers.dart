import 'dart:io';

import 'package:base_project/web_helpers/constraints.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

class ApiProvider {
  Future getHttp(endPoint, Map<String, dynamic> input) async {
    //input = {'id': 12, 'name': 'wendu'};
    try {
      Options options =
          Options(receiveTimeout: const Duration(seconds: 8000), sendTimeout: const Duration(seconds: 8000));
      Response response = await Dio().get(Constraints.baseUrl + endPoint, queryParameters: input, options: options);
      return response.data;
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
    }
  }

  void postHttp(endPoint, Map<String, dynamic> input) async {
    //input = {'id': 12, 'name': 'wendu'};
    try {
      Options options =
          Options(receiveTimeout: const Duration(seconds: 8000), sendTimeout: const Duration(seconds: 8000));
      Response response = await Dio().post(Constraints.baseUrl + endPoint, data: input, options: options);
      print(response.data.toString());
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
    }
  }

  void multipartHttp(endPoint, File file) async {
    //input = {'id': 12, 'name': 'wendu'};
    try {
      Options options =
          Options(receiveTimeout: const Duration(seconds: 8000), sendTimeout: const Duration(seconds: 8000));
      FormData formData = FormData();
      formData.fields.add(const MapEntry("name", ""));
      formData.files.add(MapEntry("file", await MultipartFile.fromFile("./text.txt", filename: 'upload.txt')));
      formData.files.add(MapEntry("file", await MultipartFile.fromFile(file.path, filename: file.toString())));
      /*'file': await MultipartFile.fromFile('./text.txt', filename: 'upload.txt'),
    'files': [
    await MultipartFile.fromFile('./text1.txt', filename: 'text1.txt'),
    await MultipartFile.fromFile('./text2.txt', filename: 'text2.txt'),
    ];*/
      Response response = await Dio().post(Constraints.baseUrl + endPoint, data: formData, options: options);
      print(response.data.toString());
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
    }
  }
}
