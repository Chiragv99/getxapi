

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:getxapi/controller/photoController.dart';
import 'package:getxapi/uttils/route_name.dart';

class PhotoScreen extends StatelessWidget {

  PhotoController photoController = Get.put(PhotoController());

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: const Text('PhotoScreen')
      ),
      body: SafeArea(
          child: Container(
        decoration: const BoxDecoration(
          color: Colors.white
        ),
        child: Column(
          children: [
            TextButton(
                onPressed: () {
                  Get.toNamed(RouteName.commentscreen);
            }, child: Text("Get Comment")),
            Expanded(child:
            Obx(() {
              if(photoController.loading.value){
                return const CircularProgressIndicator();
              }
              else{
                return loadPhotoList();
              }
            }))
          ],
        )
       ,
      )),
    );
  }
 Widget loadPhotoList() {
    return ListView.builder(
      itemCount:  photoController.photolist.length,
      itemBuilder: (context, index) {
      return Card(
        child:  Row(
          children: [
            SizedBox(
            height: 50,
            width: 50,
            child: Image.network(photoController.photolist[index].thumbnailUrl) ,
          ),
          Expanded(child:  Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
            Padding(padding: const EdgeInsets.only(left: 10),child:
               Text("Album : " + index.toString(),style: const TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
            ), Padding(padding: const EdgeInsets.only(left: 10),child:
              Text(photoController.photolist[index].title,style: const TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
              )
            ],))
           ],
        ),
      );
    },);
 }
}