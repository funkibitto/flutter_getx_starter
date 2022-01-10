import 'package:flutter_getx_starter/app/data/models/youtube/youtube_list_model.dart';
import 'package:flutter_getx_starter/app/data/providers/api/youtube_api_provider.dart';
import 'package:flutter_getx_starter/app/data/repositories/youtube_repository.dart';
import 'package:get/get.dart';
import 'package:logger/logger.dart';

var logger = Logger();

class YoutubeController extends GetxController {
  //TODO: Implement YoutubeController
  RxBool isLoading = false.obs;
  late YoutubeRepository _youtubeRepository;
  Rx<YoutubeListModel> youtubeList = YoutubeListModel(items: []).obs;

  YoutubeController() {
    _youtubeRepository = YoutubeRepository(apiClient: YoutubeApiProvider());
  }

  @override
  void onInit() {
    print('=============YoutubeController start');
    getYoutubeVidoes();
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}

  void getYoutubeVidoes() async {
    isLoading(true);
    // await 1.delay();

    final result = await _youtubeRepository.getVideos("");
    print(result);
    if (result != null) {
      youtubeList.value = result;
      // logger.i(list);
    }
    isLoading(false);
  }
}
