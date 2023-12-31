import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxapi/bindings/bindings.dart';
import 'package:getxapi/routes/routes.dart';
import 'package:getxapi/theme/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      initialBinding: MyBindings(),
      theme:  TAppTheme.largeTheme,
      darkTheme: TAppTheme.darkTheme,
      getPages: AppRoutes.appRoutes()
    );
  }
}
