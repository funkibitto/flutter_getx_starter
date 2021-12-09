import 'package:dio/dio.dart';
import 'package:dio/native_imp.dart';
import 'package:flutter/foundation.dart';

class ApiRequest extends DioForNative {
  ApiRequest() {
    options.connectTimeout = 5000;
  }
}
