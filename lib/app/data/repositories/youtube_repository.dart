import 'package:flutter_getx_starter/app/data/models/youtube/youtube_list_model.dart';
import 'package:flutter_getx_starter/app/data/providers/api/youtube_api_provider.dart';

class YoutubeRepository {
  final YoutubeApiProvider apiClient;

  YoutubeRepository({required this.apiClient});

  Future<YoutubeListModel?> getVideos(String? nextPageToken) {
    return apiClient.getVideos(nextPageToken);
  }
}
