import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:getxapi/api/apiService.dart';
import 'package:getxapi/models/getCommentModel.dart';

class CommentController extends GetxController {

  var commentList  = <GetCommentModel>[].obs;
  var loading = false.obs;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    getCommentList();
  }

  void getCommentList() async {
    try{
      loading.value = true;
      var commentData = await ApiService.fetchCommentData();
      if(commentData != null){
        loading.value   =  false;
        commentList.assignAll(commentData);
      }
    }finally{
      loading.value = false;
    }
  }

}