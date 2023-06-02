/*
import 'package:tflite_flutter/tflite_flutter.dart';
import 'package:tflite_flutter_helper/tflite_flutter_helper.dart';

class DioHelper {
  static late final interpreter;

  //TODO :: BaseURL
  static init() async {
    interpreter = await tfl.Interpreter.fromAsset('your_model.tflite');
  }

  static Future<Response> getData({
    required String url,
    Map<String, dynamic>? query,
    String? token,
    String? acceptLang,
  }) async {
    dio.options.headers = {
      'Content-Type': 'application/json',
      'authorization': 'Bearer $token',
      'accept-language': acceptLang ?? 'en',
    };
    return await dio.get(url, queryParameters: query);
  }

  static Future<Response> postData({
    required String url,
    Map<String, dynamic>? query,
    required Map<String, dynamic> data,
    String? acceptLang,
    String? token,
  }) {
    dio.options.headers = {
      'Authorization': 'Bearer $token',
      "Content-Type": "application/json",
      'accept-language': acceptLang ?? 'en',
    };
    print(data);
    print(url);
    return dio.post(url, queryParameters: query, data: data);
  }

  static Future<Response> putData({
    required String url,
    Map<String, dynamic>? query,
    required Map<String, dynamic> data,
    String? token,
  }) {
    dio.options.headers = {
      'Content-Type': 'application/json',
      'authorization': 'Bearer $token',
    };

    return dio.put(url, queryParameters: query, data: data);
  }

  static Future<Response> patchData({
    required String url,
    Map<String, dynamic>? query,
    required Map<String, dynamic> data,
    String? token,
  }) {
    dio.options.headers = {
      'Content-Type': 'application/json',
      'authorization': 'Bearer $token',
    };

    return dio.patch(url, queryParameters: query, data: data);
  }

  static Future<Response> deleteData({
    required String url,
    Map<String, dynamic>? query,
    String? token,
    String? acceptLang,
  }) async {
    dio.options.headers = {
      'Content-Type': 'application/json',
      'authorization': 'Bearer $token',
      'accept-Language': acceptLang ?? 'en',
    };
    return await dio.delete(url, queryParameters: query);
  }
}


class DLModelHelper {
  static late Dio dio;

  //TODO :: BaseURL
  static init() {
    String baseUrl = 'https://api.keddily.com/';

    dio = Dio(
      BaseOptions(
        baseUrl: baseUrl,
        receiveDataWhenStatusError: true,
        responseType: ResponseType.plain,
        headers: {
          'Content-Type': 'application/json',
        },
        validateStatus: (status) {
          return (status! <= 505);
        },
      ),
    );
  }

  static Future<Response> getData({
    required String url,
    Map<String, dynamic>? query,
    String? token,
    String? acceptLang,
  }) async {
    dio.options.headers = {
      'Content-Type': 'application/json',
      'authorization': 'Bearer $token',
      'accept-language': acceptLang ?? 'en',
    };
    return await dio.get(url, queryParameters: query);
  }

  static Future<Response> postData({
    required String url,
    Map<String, dynamic>? query,
    required Map<String, dynamic> data,
    String? acceptLang,
    String? token,
  }) {
    dio.options.headers = {
      'Authorization': 'Bearer $token',
      "Content-Type": "application/json",
      'accept-language': acceptLang ?? 'en',
    };
    print(data);
    print(url);
    return dio.post(url, queryParameters: query, data: data);
  }

  static Future<Response> putData({
    required String url,
    Map<String, dynamic>? query,
    required Map<String, dynamic> data,
    String? token,
  }) {
    dio.options.headers = {
      'Content-Type': 'application/json',
      'authorization': 'Bearer $token',
    };

    return dio.put(url, queryParameters: query, data: data);
  }

  static Future<Response> patchData({
    required String url,
    Map<String, dynamic>? query,
    required Map<String, dynamic> data,
    String? token,
  }) {
    dio.options.headers = {
      'Content-Type': 'application/json',
      'authorization': 'Bearer $token',
    };

    return dio.patch(url, queryParameters: query, data: data);
  }

  static Future<Response> deleteData({
    required String url,
    Map<String, dynamic>? query,
    String? token,
    String? acceptLang,
  }) async {
    dio.options.headers = {
      'Content-Type': 'application/json',
      'authorization': 'Bearer $token',
      'accept-Language': acceptLang ?? 'en',
    };
    return await dio.delete(url, queryParameters: query);
  }
}
*/
