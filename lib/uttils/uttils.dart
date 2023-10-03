import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Utils {
  static showSnackBar(context,  String title, String message){

    var  snackBar = SnackBar(
      content: Text(message),
    );

    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}