import 'package:flutter_getx_starter/app/core/global_constants.dart';
import 'package:flutter_getx_starter/app/data/models/youtube/youtube_list_model.dart';
import 'package:flutter_getx_starter/app/services/http_service.dart';
import 'package:logger/logger.dart';
import 'package:dio/dio.dart';

var logger = Logger();

class YoutubeApiProvider {
  var _http = HttpService()..options.baseUrl = 'https://www.googleapis.com';

  Future<YoutubeListModel?> getVideos(String? nextPageToken) async {
    try {
      Response response =
          await _http.get('/youtube/v3/search', queryParameters: {
        'part': 'snippet',
        'maxResults': 10,
        'order': 'viewCount',
        'type': 'video',
        'videoDefinition': 'high',
        'key': GlobalConstants.youtubeApiKey,
        'pageToken': nextPageToken
      });
      if (response.statusCode == 200) {
        if (response.data["items"] != null &&
            response.data["items"].length > 0) {
          return YoutubeListModel.fromJson(response.data);
        }
      } else {
        logger.e('Error api CAll');
      }

      return null;
    } on Exception catch (e) {
      logger.e(e);
      Exception(e);
    }
  }
}
