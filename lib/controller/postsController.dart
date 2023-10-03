
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:getxapi/controller/posts_provider.dart';
import 'package:getxapi/models/postModel.dart';

import '../api/apiService.dart';

class PostsController extends GetxController {

  var posts = <PostModel>[].obs;
  var loading = false.obs;


  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    fetchPostData();
  }

  void fetchPostData() async  {
    try {
      loading(true);
      var sampleData = await ApiService.fetchPostData();
      if (sampleData != null) {
        posts.assignAll(sampleData);
      }
    } finally {
      loading(false);
    }
  }
}