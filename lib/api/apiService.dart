import 'package:getxapi/models/getCommentModel.dart';
import 'package:getxapi/models/getPhotoListModel.dart';
import 'package:http/http.dart' as http;
import '../models/postModel.dart';

class ApiService {
  static var client = http.Client();

  static Future<List<PostModel>> fetchPostData() async {
    var response = await client.get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));
    var jsonString = response.body;
    return postModelFromJson(jsonString);
  }

  static Future<List<GetPhotoListModel>> fetchPhotoData() async {
    var response = await client.get(Uri.parse('https://jsonplaceholder.typicode.com/photos'));
    var jsonString = response.body;
    return getPhotoListModelFromJson(jsonString);
  }

  static Future<List<GetCommentModel>> fetchCommentData() async {
    var response = await client.get(Uri.parse('https://jsonplaceholder.typicode.com/comments'));
    var jsonString = response.body;
    return getCommentModelFromJson(jsonString);
  }
 
}
