import 'package:dio/dio.dart';
import 'package:shared/src/interceptors/request.interceptor.dart';

class HttpHelper {
  final Dio dio = Dio();

  HttpHelper(String baseUrl) {
    dio.options.baseUrl = baseUrl;
    dio.options.connectTimeout = const Duration(seconds: 15);
    dio.options.receiveTimeout = const Duration(seconds: 15);
    dio.options.persistentConnection = true;
    dio.interceptors.add(DioInterceptor());
  }
}

Dio dioInstance = HttpHelper("https://jsonplaceholder.typicode.com/").dio;
