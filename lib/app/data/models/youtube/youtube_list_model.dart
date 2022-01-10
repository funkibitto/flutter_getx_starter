// To parse this JSON data, do
//
//     final youtubeListModel = youtubeListModelFromJson(jsonString);
import 'package:flutter_getx_starter/app/data/models/youtube/youtube_video_model.dart';

class YoutubeListModel {
  YoutubeListModel({
    this.totalResults,
    this.resultsPerPage,
    this.nextPagetoken,
    required this.items,
  });

  int? totalResults;
  int? resultsPerPage;
  String? nextPagetoken;
  List<YoutubeVideoModel> items;

  factory YoutubeListModel.fromJson(Map<String, dynamic> json) =>
      YoutubeListModel(
        totalResults: json["pageInfo"]["totalResults"],
        resultsPerPage: json["pageInfo"]["resultsPerPage"],
        nextPagetoken: json["nextPageToken"] ?? "",
        items: List<YoutubeVideoModel>.from(
          json["items"].map((data) => YoutubeVideoModel.fromJson(data)),
        ),
      );
}
