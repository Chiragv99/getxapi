
import 'dart:convert';

List<GetPhotoListModel> getPhotoListModelFromJson(String str) => List<GetPhotoListModel>.from(json.decode(str).map((x) => GetPhotoListModel.fromJson(x)));

String getPhotoListModelToJson(List<GetPhotoListModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class GetPhotoListModel {
  int albumId;
  int id;
  String title;
  String url;
  String thumbnailUrl;

  GetPhotoListModel({
    required this.albumId,
    required this.id,
    required this.title,
    required this.url,
    required this.thumbnailUrl,
  });

  factory GetPhotoListModel.fromJson(Map<String, dynamic> json) => GetPhotoListModel(
    albumId: json["albumId"],
    id: json["id"],
    title: json["title"],
    url: json["url"],
    thumbnailUrl: json["thumbnailUrl"],
  );

  Map<String, dynamic> toJson() => {
    "albumId": albumId,
    "id": id,
    "title": title,
    "url": url,
    "thumbnailUrl": thumbnailUrl,
  };
}
