import 'package:flutter/services.dart';
import 'package:flutter_getx_starter/app/data/models/user/user_model.dart';
import 'package:logger/logger.dart';
import 'dart:convert';

var logger = Logger();

class UserApiProvider {
  Future<UserModel?> getUser() async {
    try {
      String data = await rootBundle.loadString('assets/json/user.json');
      print('DATAATATA ========== ${json.decode(data)}');
      UserModel res = UserModel.fromJson(json.decode(data));
      print('res =============   $res');
      return res;
    } on Exception catch (e) {
      logger.e(e);
      return null;
    }
  }
}
