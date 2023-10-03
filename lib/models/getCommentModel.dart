import 'dart:convert';

List<GetCommentModel> getCommentModelFromJson(String str) => List<GetCommentModel>.from(json.decode(str).map((x) => GetCommentModel.fromJson(x)));

String getCommentModelToJson(List<GetCommentModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class GetCommentModel {
  int postId;
  int id;
  String name;
  String email;
  String body;

  GetCommentModel({
    required this.postId,
    required this.id,
    required this.name,
    required this.email,
    required this.body,
  });

  factory GetCommentModel.fromJson(Map<String, dynamic> json) => GetCommentModel(
    postId: json["postId"],
    id: json["id"],
    name: json["name"],
    email: json["email"],
    body: json["body"],
  );

  Map<String, dynamic> toJson() => {
    "postId": postId,
    "id": id,
    "name": name,
    "email": email,
    "body": body,
  };
}
