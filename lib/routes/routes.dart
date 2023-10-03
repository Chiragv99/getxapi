import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';
import 'package:getxapi/controller/photoController.dart';
import 'package:getxapi/screens/commentscreen.dart';
import 'package:getxapi/screens/homescreen.dart';
import 'package:getxapi/screens/loginscreen.dart';
import 'package:getxapi/screens/signup.dart';

import '../screens/photoscreen.dart';
import '../uttils/route_name.dart';

class AppRoutes{
  static appRoutes() =>[

    GetPage(
        name:RouteName.splashScreen,
        page: () =>  HomeScreen(),
        transitionDuration:const Duration(milliseconds: 250),
        transition:Transition.leftToRightWithFade
    ),
    GetPage(
        name:RouteName.photoscreen,
        page: () => PhotoScreen(),
        transitionDuration:const Duration(milliseconds: 250),
        transition:Transition.leftToRightWithFade
    ),
    GetPage(
        name:RouteName.commentscreen,
        page: () => CommentScreen(),
        transitionDuration:const Duration(milliseconds: 250),
        transition:Transition.leftToRightWithFade
    ),
    GetPage(
        name:RouteName.loginscreen,
        page: () => LoginScreen(),
        transitionDuration:const Duration(milliseconds: 250),
        transition:Transition.leftToRightWithFade
    ),
    GetPage(
        name:RouteName.signupscreen,
        page: () => SignupScreen(),
        transitionDuration:const Duration(milliseconds: 250),
        transition:Transition.leftToRightWithFade
    ),
  ];
}