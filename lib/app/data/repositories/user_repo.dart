import 'package:flutter_getx_starter/app/data/models/user_model.dart';

abstract class UserRepo {
  Future<UserModel> getUser();
}
