import 'package:flutter_getx_starter/app/data/models/video/video_list_model.dart';
import 'package:flutter_getx_starter/app/data/providers/api/video_api_provider.dart';
import 'package:flutter_getx_starter/app/data/repositories/video_repository.dart';
import 'package:get/get.dart';
import 'package:logger/logger.dart';

var logger = Logger();

class VideoController extends GetxController {
  late VideoRepository _videoRepository;

  RxBool isLoading = false.obs;
  Rx<VideoListModel> videoList = VideoListModel(items: []).obs;

  VideoController() {
    _videoRepository = VideoRepository(apiClient: VideoApiProvider());
  }

  static VideoController get to => Get.find();

  @override
  void onInit() {
    print('=============VideoController start');
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

    final result = await _videoRepository.getVideos("");
    print(result);
    if (result != null) {
      videoList.value = result;
      // logger.i(list);
    }
    isLoading(false);
  }
}
