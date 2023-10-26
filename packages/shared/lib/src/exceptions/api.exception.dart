import 'package:dio/dio.dart';
import 'package:shared/src/constants/error.constant.dart';

class DeadlineException extends DioException {
  DeadlineException({required super.requestOptions});

  @override
  String toString() {
    return EXCEPTION_MESSAGE.SOMETHING_WENT_WRONG;
  }
}

class UnAuthorizedException extends DioException {
  UnAuthorizedException({required super.requestOptions});

  @override
  String toString() {
    return EXCEPTION_MESSAGE.ACCESS_DENIED;
  }
}

class NotFoundException extends DioException {
  NotFoundException({required super.requestOptions});

  @override
  String toString() {
    return EXCEPTION_MESSAGE.NOT_FOUND;
  }
}
