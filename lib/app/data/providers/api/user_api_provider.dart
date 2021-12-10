import 'package:flutter/services.dart';
import 'package:flutter_getx_starter/app/data/models/user/user_model.dart';

class UserApiProvider {
  Future<UserModel> getUser() async {
    try {
      dynamic data = await rootBundle.loadString('assets/json/user.json');
      return UserModel.fromJson(data);
    } on Exception catch (e) {
      return Future.error(e);
    }
  }
}
