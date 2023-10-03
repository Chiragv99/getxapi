import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxapi/controller/commentController.dart';
import 'package:shimmer/shimmer.dart';

class CommentScreen extends StatefulWidget{

  @override
  State<StatefulWidget> createState() => _CommentStateScreen();

}
class _CommentStateScreen extends State<CommentScreen>{
  CommentController getcommentListController = Get.put(CommentController());
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  Scaffold(
      appBar: AppBar(
        title: const Text("Comment List"),
      ),
      body: SafeArea(child: Container(
        width: Get.width,
        decoration:  const BoxDecoration(
          color: Colors.white
        ),
        child: Obx(() {
          if(getcommentListController.loading.value){
            return   loadShimmer();
          }
          else{
           return loadCommentListData();
          }
        }),
      )),
    );
  }
  Widget loadShimmer(){
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) {
      return  Padding(padding: EdgeInsets.all(10),child: SizedBox(
        width: Get.width  - 200,
        height: 100.0,
        child:  Shimmer.fromColors(
          baseColor: Colors.grey.shade300,
          highlightColor: Colors.grey.shade200,
          child: Container(
            width: Get.width,
            height: Get.height/2,
            decoration: const ShapeDecoration(
              shape: RoundedRectangleBorder(),
              color: Colors.grey,
            ),
          ),
        ),
      ));
    },);
  }
   Widget loadCommentListData(){
    return ListView.builder(
      itemCount: getcommentListController.commentList.length,
      itemBuilder: (context, index) {
      return  Card(
          child:
        Padding(padding: const EdgeInsets.only(left: 10,right: 10,top: 2,bottom: 2),child:
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Text(getcommentListController.commentList[index].name.toString(),style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 18),) ,
          ),
          Align(
            alignment: Alignment.topLeft,
            child:   Text(getcommentListController.commentList[index].email.toString(),style: const TextStyle(fontWeight: FontWeight.w700,fontSize: 14),),
          ),
          Align(
            alignment: Alignment.topLeft,
            child:   Text(getcommentListController.commentList[index].body.toString(),style: const TextStyle(fontWeight: FontWeight.w300,fontSize: 12),),
          ),
        ],
      )));

    },);
   }

}