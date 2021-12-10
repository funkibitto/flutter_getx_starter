import 'package:dio/native_imp.dart';

class DioService extends DioForNative {
  DioService() {
    options.connectTimeout = 5000;
  }
}
