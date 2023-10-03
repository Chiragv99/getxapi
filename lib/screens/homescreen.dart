import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxapi/controller/postsController.dart';
import 'package:getxapi/theme/theme_controller.dart';

import '../uttils/route_name.dart';

class HomeScreen extends StatelessWidget {
  final PostsController postsController = Get.put(PostsController());

  ThemeController themeController = Get.put(ThemeController());

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return FutureBuilder(
      future: ThemeController().changeBottomSheetBorderColor(0) ,
      builder: (context, snapshot) {
       if(snapshot != null){
         return Scaffold(
           appBar: AppBar(
               backgroundColor: ThemeController().currentTheme().appBarColor,
               title:  Center(child: TextButton(onPressed: () {
                 Get.toNamed(RouteName.loginscreen);
               }, child: const Text("Load Post")),)
           ),
           body: SafeArea(child: Container(
               decoration: const BoxDecoration(
                   color: Colors.white
               ),
               child : Obx(() {
                 if(postsController.loading.value){
                   return  CircularProgressIndicator(color: themeController.currentTheme().progressbarBg,);
                 }else{
                   return loadPost();
                 }
               })
           )),
         );
         return Text("Data");
       }
       return  Container();
    },);

  }

 Widget loadPost(){
    return ListView.builder(
      itemCount: postsController.posts.length,
      itemBuilder: (context, index) {
       return  Card(child:
           Padding(padding: const EdgeInsets.all(10),child:
           Column(
             mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child:   Text(postsController.posts[index].title,style: const TextStyle(fontWeight: FontWeight.bold),),
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child:   Text(postsController.posts[index].body),
                ),

              ],
           )
           )
       ,);
    },);
  }
}