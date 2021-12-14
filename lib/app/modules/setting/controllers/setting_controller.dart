import 'package:flutter_getx_starter/app/data/models/user/user_model.dart';
import 'package:flutter_getx_starter/app/data/providers/api/user_api_provider.dart';
import 'package:flutter_getx_starter/app/data/repositories/user_repository.dart';
import 'package:get/get.dart';

class SettingController extends GetxController {
  RxBool isLoading = false.obs;
  late UserRepository _userRepository;
  late Rxn<UserModel> user = Rxn<UserModel>();

  SettingController() {
    _userRepository = UserRepository(apiClient: UserApiProvider());
  }

  static SettingController get to => Get.find();

  @override
  void onInit() {
    print('=============UserModel start ${user}');
    updateUserInfo();
    super.onInit();
  }

  void conStart() {
    print('=============UserModel conStart ${user}');
  }

  void updateUserInfo() async {
    await 3.delay();
    isLoading(true);
    print('LOADING USER INFO ....');

    final result = await _userRepository.getUser();
    if (result != null) {
      user.value = result;
    }
    isLoading(false);
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
}
