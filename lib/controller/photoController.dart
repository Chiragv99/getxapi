import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:getxapi/api/apiService.dart';
import 'package:getxapi/models/getPhotoListModel.dart';

class PhotoController extends GetxController {

  var photolist = <GetPhotoListModel>[].obs;
  var loading = false.obs;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    fetchPhotoList();
  }

  void fetchPhotoList() async{
    try{
      loading.value = true;
      var photoData = await ApiService.fetchPhotoData();
      if(photoData !=null){
        loading.value = false;
        photolist.assignAll(photoData);
      }
    }finally{
      loading.value = false;
    }
  }
}