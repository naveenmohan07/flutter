import 'package:dio/dio.dart';
import 'package:shared/src/exceptions/api.exception.dart';
import 'package:shared/src/utils/logger.util.dart';

final logger = Logger(logName: "RequestInterceptor");

class DioInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    logger.info(
        'REQUEST[${options.method}] => PATH: ${options.baseUrl}${options.path}');

    super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    logger.info(
        'RESPONSE[${response.statusCode}] => PATH: ${response.requestOptions.baseUrl}${response.requestOptions.path}');

    super.onResponse(response, handler);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    logger.info(
        'ERROR[${err.response?.statusCode}] => PATH: ${err.requestOptions.path}, RESPONSE: ${err.response?.data}');
    switch (err.type) {
      case DioExceptionType.connectionError:
      case DioExceptionType.connectionTimeout:
      case DioExceptionType.receiveTimeout:
        throw DeadlineException(requestOptions: err.requestOptions);
      default:
        switch (err.response?.statusCode) {
          case 404:
            throw NotFoundException(requestOptions: err.requestOptions);
          case 401:
          case 403:
            throw UnAuthorizedException(requestOptions: err.requestOptions);
          default:
            throw DeadlineException(requestOptions: err.requestOptions);
        }
    }
  }
}
